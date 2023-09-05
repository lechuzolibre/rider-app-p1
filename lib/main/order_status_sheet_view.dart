import 'dart:math';

import 'package:client_shared/components/ridy_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:client_shared/components/user_avatar_view.dart';
import 'package:client_shared/components/light_colored_button.dart';
import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:client_shared/components/rounded_button.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:ridy/chat/chat.graphql.dart';
import 'package:ridy/graphql/fragments/active-order.fragment.graphql.dart';
import 'package:ridy/main/enter_coupon_code_sheet_view.dart';
import 'package:ridy/main/enter_gift_code_sheet_view.dart';
import 'package:ridy/main/order.graphql.dart';
import 'package:ridy/main/pay_for_ride_sheet_view.dart';
import 'package:ridy/main/ride_options_sheet_view.dart';
import 'package:ridy/main/ride_safety_sheet_view.dart';
import 'package:ridy/main/wait_time_sheet_view.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/schema.gql.dart';
import '../config.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:timeago_flutter/timeago_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

import 'bloc/main_bloc.dart';

class OrderStatusSheetView extends StatelessWidget {
  const OrderStatusSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final mainBloc = context.read<MainBloc>();
    return BlocBuilder<MainBloc, MainBlocState>(
      builder: (context, state) {
        state as OrderInProgress;
        return Subscription$DriverLocationUpdated$Widget(
            options: Options$Subscription$DriverLocationUpdated(
                variables: Variables$Subscription$DriverLocationUpdated(
              driverId: state.order.driver?.id ?? "",
            )),
            onSubscriptionResult: (subscriptionResult, client) {
              if (subscriptionResult.parsedData == null) return;
              mainBloc.add(DriverLocationUpdatedEvent(
                  subscriptionResult.parsedData!.driverLocationUpdated));
            },
            builder: (result) {
              return RidySheetView(child: BlocBuilder<MainBloc, MainBlocState>(
                builder: (context, state) {
                  state as OrderInProgress;
                  return Column(
                    children: [
                      if (state.order.status == Enum$OrderStatus.DriverAccepted)
                        Timeago(
                          builder: (_, value) => SheetTitleView(
                              title: ((state.order.etaPickup ?? now)
                                          .isBefore(now) ||
                                      state.order.etaPickup == null)
                                  ? S.of(context).order_status_should_be_arrived
                                  : S.of(context).order_status_arriving_in(state
                                          .order.etaPickup
                                          ?.difference(DateTime.now())
                                          .inMinutes ??
                                      0)),
                          date: state.order.etaPickup ?? now,
                          allowFromNow: true,
                        )
                      else if (state.order.status == Enum$OrderStatus.Arrived)
                        SheetTitleView(
                            title: S.of(context).status_title_driver_arrived)
                      else if (state.order.status == Enum$OrderStatus.Started)
                        SheetTitleView(
                            title: S.of(context).status_title_trip_started),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.order.driver?.car?.name ?? "",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                      color: CustomTheme.primaryColors.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    state.order.driver?.carPlate ?? "",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                )
                              ]),
                          const Spacer(),
                          Stack(
                            children: [
                              if (state.order.service != null)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Image.network(
                                      serverUrl +
                                          state.order.service!.media.address,
                                      width: 117,
                                      height: 70),
                                ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 0),
                                  decoration: BoxDecoration(
                                      color: CustomTheme.primaryColors.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    NumberFormat.simpleCurrency(
                                            name: state.order.currency)
                                        .format(
                                            state.currentOrder.costAfterCoupon),
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                    textAlign: TextAlign.center,
                                    softWrap: false,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Divider(),
                      const SizedBox(height: 4),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          UserAvatarView(
                            urlPrefix: serverUrl,
                            url: state.order.driver?.media?.address,
                            size: 50,
                            cornerRadius: 25,
                          ),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 4, bottom: 4),
                                child: Text(
                                    "${state.order.driver!.firstName} ${state.order.driver!.lastName}",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ),
                              if (state.order.driver?.rating != null)
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xffe6bb4d),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        (state.order.driver!.rating!
                                                    .toDouble() /
                                                20)
                                            .toStringAsFixed(1),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    )
                                  ],
                                )
                            ],
                          ),
                          const Spacer(),
                          ChatIconButton(order: state.order),
                          const SizedBox(width: 8),
                          Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(pi),
                            child: RoundedButton(
                                icon: Ionicons.call,
                                onPressed: () => _launchUrl(context,
                                    "tel://+${state.order.driver?.mobileNumber}")),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Divider(),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Mutation$updateOrder$Widget(
                              options: WidgetOptions$Mutation$updateOrder(
                                  onCompleted: (data, parsedData) {
                                    if (parsedData == null) return;
                                    mainBloc.add(CurrentOrderUpdated(
                                        parsedData.updateOneOrder));
                                  },
                                  onError: (error) => showOperationErrorMessage(
                                      context, error)),
                              builder: (runMutation, result) {
                                return LightColoredButton(
                                    icon: Ionicons.list,
                                    text: S.of(context).action_ride_options,
                                    onPressed: () async {
                                      final result = await showModalBottomSheet<
                                              RideOptionsResult>(
                                          context: context,
                                          constraints: const BoxConstraints(
                                              maxWidth: 500),
                                          builder: (context) {
                                            return const RideOptionsSheetView();
                                          });
                                      switch (result) {
                                        case RideOptionsResult.waitTime:
                                          final result =
                                              await showModalBottomSheet<int>(
                                                  context: context,
                                                  constraints: BoxConstraints(
                                                      maxWidth: 500),
                                                  builder: (context) {
                                                    return WaitTimeSheetView(
                                                      selectedMinute: state
                                                          .order.waitMinutes,
                                                    );
                                                  });
                                          if (result == null) return;
                                          runMutation(
                                              Variables$Mutation$updateOrder(
                                                  id: state.order.id,
                                                  update:
                                                      Input$UpdateOrderInput(
                                                          waitMinutes:
                                                              result)));
                                          break;

                                        case null:
                                        case RideOptionsResult.none:
                                          return;

                                        case RideOptionsResult.couponCode:
                                          final result =
                                              await showModalBottomSheet<
                                                      String>(
                                                  context: context,
                                                  isScrollControlled: true,
                                                  constraints:
                                                      const BoxConstraints(
                                                          maxWidth: 500),
                                                  builder: (context) {
                                                    return const EnterCouponCodeSheetView();
                                                  });
                                          if (result == null) return;
                                          runMutation(
                                              Variables$Mutation$updateOrder(
                                                  id: state.order.id,
                                                  update:
                                                      Input$UpdateOrderInput(
                                                          couponCode: result)));
                                          break;
                                        case RideOptionsResult.giftCode:
                                          await showModalBottomSheet(
                                              context: context,
                                              constraints: const BoxConstraints(
                                                  maxWidth: 500),
                                              builder: (context) {
                                                return const EnterGiftCodeSheetView();
                                              });

                                          break;
                                        case RideOptionsResult.cancel:
                                          if ((state.order.service
                                                      ?.cancellationTotalFee ??
                                                  0) >
                                              0) {
                                            final cancelFee =
                                                NumberFormat.simpleCurrency(
                                                        name: state
                                                            .order.currency)
                                                    .format(state.order.service!
                                                        .cancellationTotalFee);
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text(S
                                                        .of(context)
                                                        .message_title_warning),
                                                    content: Text(S
                                                        .of(context)
                                                        .cancelation_fee_confirmation_body(
                                                            cancelFee)),
                                                    actions: [
                                                      TextButton(
                                                          onPressed: () =>
                                                              Navigator.of(
                                                                      context)
                                                                  .pop(),
                                                          child: Text(S
                                                              .of(context)
                                                              .action_cancel)),
                                                      TextButton(
                                                          onPressed: () async {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            runMutation(Variables$Mutation$updateOrder(
                                                                id: state
                                                                    .order.id,
                                                                update: Input$UpdateOrderInput(
                                                                    status: Enum$OrderStatus
                                                                        .RiderCanceled,
                                                                    tipAmount:
                                                                        0,
                                                                    waitMinutes:
                                                                        0)));
                                                          },
                                                          child: Text(S
                                                              .of(context)
                                                              .action_confirm))
                                                    ],
                                                  );
                                                });
                                          } else {
                                            runMutation(
                                                Variables$Mutation$updateOrder(
                                                    id: state.order.id,
                                                    update: Input$UpdateOrderInput(
                                                        status: Enum$OrderStatus
                                                            .RiderCanceled,
                                                        waitMinutes: 0,
                                                        tipAmount: 0)));
                                          }
                                          break;
                                      }
                                    });
                              }),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: LightColoredButton(
                                icon: Ionicons.shield,
                                text: S.of(context).button_ride_safety,
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      constraints:
                                          const BoxConstraints(maxWidth: 500),
                                      builder: (context) {
                                        return RideSafetySheetView(
                                            order: state.order);
                                      });
                                }),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                            onPressed: () {
                              showBarModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return PayForRideSheetView(
                                      onClosePressed: () =>
                                          Navigator.pop(context),
                                      order: state.order,
                                    );
                                  });
                            },
                            child: Text(S.of(context).action_pay_for_ride),
                          ))
                        ],
                      )
                    ],
                  );
                },
              ));
            });
      },
    );
  }

  _launchUrl(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    final canLaunch = await canLaunchUrl(uri);
    if (!canLaunch) {
      const snackBar = SnackBar(
          content:
              RidyBanner("Command is not supported", type: BannerType.error));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    launchUrl(uri);
  }
}

class ChatIconButton extends StatefulWidget {
  final Fragment$CurrentOrder order;
  const ChatIconButton({Key? key, required this.order}) : super(key: key);

  @override
  State<ChatIconButton> createState() => _ChatIconButtonState();
}

class _ChatIconButtonState extends State<ChatIconButton> {
  Set<Fragment$ChatMessage> newMessages = {};

  @override
  Widget build(BuildContext context) {
    return Mutation$UpdateLastSeenMessagesAt$Widget(
        options: WidgetOptions$Mutation$UpdateLastSeenMessagesAt(
            onCompleted: (data, parsedData) {
              Navigator.pushNamed(context, 'chat');
            },
            onError: (error) => showOperationErrorMessage(context, error)),
        builder: (runMutation, result) {
          return Subscription$NewMessageReceived$Widget(
              onSubscriptionResult: (subscriptionResult, client) {
            if (subscriptionResult.parsedData == null) return;
            final chatMessage =
                subscriptionResult.parsedData!.newMessageReceived;
            if (newMessages.firstWhereOrNull((p0) => p0.id == chatMessage.id) ==
                null) {
              newMessages.add(chatMessage);
            }
          }, builder: (data) {
            return RoundedButton(
                count: newMessages
                        .where((element) => element.sentAt
                            .isAfter(widget.order.riderLastSeenMessagesAt))
                        .length +
                    widget.order.conversations
                        .where((element) => element.sentAt
                            .isAfter(widget.order.riderLastSeenMessagesAt))
                        .length,
                icon: Ionicons.mail,
                onPressed: () async {
                  setState(() => newMessages = {});
                  runMutation(Variables$Mutation$UpdateLastSeenMessagesAt(
                      requestId: widget.order.id));
                });
          });
        });
  }
}
