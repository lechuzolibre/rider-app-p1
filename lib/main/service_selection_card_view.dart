import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:ridy/main/order.graphql.dart';
import 'package:ridy/schema.gql.dart';
import 'bloc/main_bloc.dart';
import '../main/select_service_view.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class ServiceSelectionCardView extends StatelessWidget {
  const ServiceSelectionCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return BlocBuilder<MainBloc, MainBlocState>(builder: (context, state) {
      return Query$GetFare$Widget(
          options: Options$Query$GetFare(
              onComplete: (result, parsedData) {
                if ((state.directions == null || state.directions!.isEmpty) &&
                    parsedData!.getFare.directions.isNotEmpty) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    mainBloc.add(ShowPreviewDirections(
                        directions: parsedData.getFare.directions));
                  });
                }
                if (state.selectedService == null &&
                    parsedData!.getFare.services.isNotEmpty &&
                    parsedData.getFare.services.first.services.isNotEmpty) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    mainBloc.add(SelectService(
                        parsedData.getFare.services[0].services[0]));
                  });
                }
              },
              onError: (error) {
                if (error == null) {
                  mainBloc.add(ResetState());
                  return;
                }
                if (error.graphqlErrors
                    .where((element) => element.message == 'REGION_UNSUPPORTED')
                    .isNotEmpty) {
                  final snackBar = SnackBar(
                      content: RidyBanner(
                    S.of(context).error_region_unsupported,
                    type: BannerType.error,
                  ));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  mainBloc.add(ResetState());
                }
                if (error.graphqlErrors
                    .where((element) =>
                        element.message == 'Coupon expired' ||
                        element.message == 'Incorrect code')
                    .isNotEmpty) {
                  final snackBar = SnackBar(
                      content: RidyBanner(
                          S.of(context).alert_coupon_unavailable,
                          type: BannerType.error));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  mainBloc.add(ShowPreview(
                      points: state.points,
                      selectedOptions: [],
                      couponCode: null));
                }
              },
              variables: Variables$Query$GetFare(
                  points: (state as OrderPreview)
                      .points
                      .map((e) => Input$PointInput(
                          lat: e.latlng.latitude, lng: e.latlng.longitude))
                      .toList(),
                  selectedOptionIds: state.selectedOptions,
                  couponCode: state.couponCode)),
          builder: (result, {refetch, fetchMore}) {
            if (result.isLoading) {
              return const RidySheetView(
                  child: Padding(
                      padding: EdgeInsets.all(160),
                      child: CupertinoActivityIndicator()));
            }
            if (result.hasException) {
              return RidySheetView(
                child: Center(
                    child: Text(
                        result.exception?.graphqlErrors.firstOrNull?.message ??
                            result.exception.toString())),
              );
            }
            if (result.parsedData == null) return const Text("No data");
            return SelectServiceView(data: result.parsedData!.getFare);
          });
    });
  }
}

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
      vapidKey: "",
    );
  }
}
