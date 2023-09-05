import 'package:client_shared/components/ride_option_item.dart';
import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:intl/intl.dart';
import 'package:ridy/main/order.graphql.dart';
import 'package:ridy/query_result_view.dart';
import 'package:share_plus/share_plus.dart';

import 'package:ridy/l10n/messages.dart';

import '../graphql/fragments/active-order.fragment.graphql.dart';

class RideSafetySheetView extends StatelessWidget {
  final Fragment$CurrentOrder order;
  const RideSafetySheetView({required this.order, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SheetTitleView(
              title: S.of(context).ride_safety_title,
              closeAction: () => Navigator.pop(context),
            ),
            RideOptionItem(
                icon: Ionicons.shield,
                text: S.of(context).ride_safety_share_trip_information,
                onPressed: () {
                  Navigator.pop(context);
                  var text = S.of(context).share_trip_text_locations(
                      order.addresses.last, order.addresses.first);
                  if (order.driver != null) {
                    text += S.of(context).share_trip_text_driver(
                        order.driver!.firstName ?? "",
                        order.driver!.lastName ?? "",
                        order.driver!.mobileNumber);
                  }
                  if (order.startTimestamp != null) {
                    text += S.of(context).share_trip_started_time(
                        DateFormat('HH:mm a').format(order.startTimestamp!),
                        ((order.durationBest / 60) + order.waitMinutes).ceil());
                  } else {
                    text += S.of(context).share_trip_not_arrived_time(
                        ((order.durationBest / 60) + order.waitMinutes).ceil());
                  }
                  Share.share(text);
                }),
            const SizedBox(height: 8),
            Mutation$SendSOS$Widget(
                options: WidgetOptions$Mutation$SendSOS(
                    onCompleted: (data, parsedData) {
                      final snackBar = SnackBar(
                          content: RidyBanner(S.of(context).sos_sent_alert,
                              type: BannerType.success));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.pop(context);
                    },
                    onError: (error) =>
                        showOperationErrorMessage(context, error)),
                builder: (runMutation, result) {
                  return RideOptionItem(
                      icon: Ionicons.warning,
                      text: S.of(context).ride_safety_sos,
                      onPressed: () {
                        Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(S.of(context).sos_title),
                                content: Text(S.of(context).sos_body),
                                actions: [
                                  TextButton(
                                      onPressed: () async {
                                        runMutation(Variables$Mutation$SendSOS(
                                            orderId: order.id));
                                      },
                                      child: Text(
                                        S.of(context).sos_ok_action,
                                        style: const TextStyle(
                                            color: Color(0xffb20d0e)),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(S.of(context).action_cancel))
                                ],
                              );
                            });
                      });
                }),
          ],
        ));
  }
}
