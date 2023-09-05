import 'package:client_shared/components/light_colored_button.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:hive/hive.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:ridy/main/enter_coupon_code_sheet_view.dart';
import 'package:ridy/main/order.graphql.dart';
import 'package:ridy/main/reserve_confirmation_sheet_view.dart';
import 'package:ridy/main/reserve_ride_sheet_view.dart';
import 'package:ridy/main/ride_preferences_sheet_view.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/schema.gql.dart';
import '../main/service_item_view.dart';

import 'bloc/main_bloc.dart';

class SelectServiceView extends StatefulWidget {
  const SelectServiceView({Key? key, required this.data}) : super(key: key);
  final Query$GetFare$getFare data;

  @override
  State<SelectServiceView> createState() => _SelectServiceViewState();
}

class _SelectServiceViewState extends State<SelectServiceView> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return RidySheetView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          OrderPreviewServices(
              serviceCategories: widget.data.services,
              currency: widget.data.currency),
          Mutation$CreateOrder$Widget(
              options: WidgetOptions$Mutation$CreateOrder(
                  onCompleted: (data, parsedData) async {
                setState(() => isLoading = false);
                if (parsedData == null) return;
                if (parsedData.createOrder.status == Enum$OrderStatus.Booked) {
                  await showModalBottomSheet(
                      context: context,
                      constraints: const BoxConstraints(maxWidth: 600),
                      builder: (context) {
                        return const ReserveConfirmationSheetView();
                      });
                } else {
                  mainBloc.add(CurrentOrderUpdated(parsedData.createOrder));
                }
              }, onError: (error) {
                setState(() => isLoading = false);
                showOperationErrorMessage(context, error);
              }),
              builder: (runMutation, result) {
                return BlocBuilder<MainBloc, MainBlocState>(
                  builder: (context, state) {
                    if (state is! OrderPreview) return const SizedBox();
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: state.selectedService == null ||
                                  ((result?.isLoading ?? false) || isLoading)
                              ? null
                              : () async {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  if (Hive.box('user').get('jwt') == null) {
                                    Navigator.pushNamed(context, 'login');
                                    return;
                                  }
                                  final fcmId = await getFcmId(context);
                                  runMutation(Variables$Mutation$CreateOrder(
                                      input: Input$CreateOrderInput(
                                          serviceId: int.parse(
                                              state.selectedService!.id),
                                          intervalMinutes: 0,
                                          points: state.points
                                              .map((e) => Input$PointInput(
                                                  lat: e.latlng.latitude,
                                                  lng: e.latlng.longitude))
                                              .toList(),
                                          addresses: state.points
                                              .map((e) => e.address)
                                              .toList()),
                                      notificationPlayerId: fcmId ?? ''));
                                },
                          child: Text(S.of(context).service_selection_book_now),
                        )),
                        const SizedBox(width: 10),
                        ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(vertical: 10))),
                            onPressed: state.selectedService == null ||
                                    ((result?.isLoading ?? false) || isLoading)
                                ? null
                                : () async {
                                    final dialogResult =
                                        await showModalBottomSheet<DateTime>(
                                            context: context,
                                            constraints: const BoxConstraints(
                                                maxWidth: 600),
                                            builder: (context) =>
                                                const ReserveRideSheetView());
                                    if (dialogResult == null) return;
                                    if (!mounted) return;
                                    if (Hive.box('user').get('jwt') == null) {
                                      Navigator.pushNamed(context, 'login');
                                      return;
                                    }
                                    final fcmId = await getFcmId(context);
                                    final difference = dialogResult
                                        .difference(DateTime.now())
                                        .inMinutes;
                                    runMutation(Variables$Mutation$CreateOrder(
                                        input: Input$CreateOrderInput(
                                            serviceId: int.parse(
                                                state.selectedService!.id),
                                            intervalMinutes: difference,
                                            points: state.points
                                                .map((e) => Input$PointInput(
                                                    lat: e.latlng.latitude,
                                                    lng: e.latlng.longitude))
                                                .toList(),
                                            addresses: state.points
                                                .map((e) => e.address)
                                                .toList()),
                                        notificationPlayerId: fcmId ?? ''));
                                  },
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Icon(
                                Ionicons.calendar,
                                size: 28,
                              ),
                            )),
                      ]),
                    );
                  },
                );
              })
        ],
      ),
    );
  }
}

class OrderPreviewServices extends StatelessWidget {
  final List<Query$GetFare$getFare$services> serviceCategories;
  final String currency;

  const OrderPreviewServices(
      {required this.serviceCategories, required this.currency, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return DefaultTabController(
      length: serviceCategories.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabBar(
              dividerColor: Colors.transparent,
              unselectedLabelStyle: Theme.of(context).textTheme.labelMedium,
              labelStyle: Theme.of(context).textTheme.titleSmall,
              isScrollable: true,
              tabs: serviceCategories
                  .map((e) => Tab(
                        height: 28,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 0),
                            child: Text(e.name)),
                      ))
                  .toList()),
          const Divider(),
          SizedBox(
            height: 225,
            child: TabBarView(
              children: serviceCategories.map((e) {
                return ListView(
                  padding: EdgeInsets.zero,
                  children: e.services
                      .map((e) => ServiceItemView(
                            service: e,
                            isSelected: e.id ==
                                (mainBloc.state as OrderPreview)
                                    .selectedService
                                    ?.id,
                            currency: currency,
                          ))
                      .toList(),
                );
              }).toList(),
            ),
          ),
          const Divider(),
          const SizedBox(height: 4),
          Row(
            children: [
              BlocBuilder<MainBloc, MainBlocState>(
                builder: (context, state) {
                  if (state is! OrderPreview ||
                      state.selectedService == null ||
                      state.selectedService!.options.isEmpty) {
                    return const SizedBox();
                  }
                  return LightColoredButton(
                      icon: Ionicons.options,
                      text: S.of(context).action_ride_preferences,
                      onPressed: () async {
                        final dialogResult = await showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            constraints: const BoxConstraints(maxWidth: 500),
                            builder: (context) {
                              return RidePreferencesSheetView(
                                  state.selectedService!,
                                  state.selectedOptions);
                            });
                        if (dialogResult != null) {
                          final points = state.points;
                          mainBloc.add(ShowPreview(
                              points: points,
                              selectedOptions: dialogResult,
                              couponCode: state.couponCode));
                        }
                      });
                },
              ),
              const Spacer(),
              LightColoredButton(
                  icon: Ionicons.pricetag,
                  text: S.of(context).action_coupon_code,
                  onPressed: () async {
                    final bloc = context.read<MainBloc>();
                    (bloc.state as OrderPreview);
                    final code = await showModalBottomSheet<String>(
                        context: context,
                        isScrollControlled: true,
                        constraints: const BoxConstraints(maxWidth: 500),
                        builder: (context) {
                          return const EnterCouponCodeSheetView();
                        });
                    if (code?.isEmpty ?? true) return;

                    bloc.add(ShowPreview(
                        points: (bloc.state as OrderPreview).points,
                        selectedOptions:
                            (bloc.state as OrderPreview).selectedOptions,
                        couponCode: code));
                  })
            ],
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}

typedef ServiceSelectCallback = void Function(
    String serviceId, int intervalMinutes);

Future<String?> getFcmId(BuildContext context) async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: true,
    badge: true,
    carPlay: true,
    criticalAlert: false,
    provisional: true,
    sound: true,
  );
  if (settings.authorizationStatus == AuthorizationStatus.denied) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(S.of(context).message_notification_permission_title),
              content: Text(S
                  .of(context)
                  .message_notification_permission_denined_message),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(S.of(context).action_ok),
                )
              ],
            ));
    return null;
  } else {
    return messaging.getToken(
      vapidKey:
          "BG0pQznji1XrJWPiTe0BSDdLGAeVJEqqwezYkwv5m2CMeJR7_MkPb2j0GdruYLHEGgxJ-PKA1DgDhQJc5XagUmQ",
    );
  }
}
