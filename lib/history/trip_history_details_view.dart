import 'package:client_shared/components/user_avatar_view.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:client_shared/components/back_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:ridy/history/history.graphql.dart';
import 'package:ridy/history/submit_complaint_view.dart';
import 'package:ridy/location_selection/welcome_card/place_search_sheet_view.dart';
import 'package:ridy/main/bloc/main_bloc.dart';
import 'package:ridy/map/map_view.dart';
import 'package:ridy/query_result_view.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';

import '../config.dart';
import 'package:ridy/l10n/messages.dart';

// ignore: must_be_immutable
class TripHistoryDetailsView extends StatelessWidget {
  final String orderId;
  MapController controller = MapController();

  TripHistoryDetailsView({required this.orderId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RidyBackButton(text: S.of(context).action_back),
            const SizedBox(height: 8),
            Expanded(
              child: Query$GetOrderDetails$Widget(
                  options: Options$Query$GetOrderDetails(
                      variables: Variables$Query$GetOrderDetails(id: orderId)),
                  builder: (result, {refetch, fetchMore}) {
                    if (result.isLoading || result.hasException) {
                      return Center(
                          child: QueryResultView(result, refetch: refetch));
                    }
                    final order = result.parsedData!.order!;
                    return SingleChildScrollView(
                      clipBehavior: Clip.none,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            DateFormat('MMM.dd.yyyy')
                                .format(order.expectedTimestamp),
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          const SizedBox(height: 8),
                          Container(
                            height: 300,
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Color(0x10000000),
                                  offset: Offset(1, 2),
                                  blurRadius: 20)
                            ]),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: MapView(
                                  mode: MapViewMode.static,
                                  onControllerReady: (controller) {
                                    Future.delayed(
                                            const Duration(milliseconds: 500))
                                        .then((value) => controller.fitBounds(
                                            order.points
                                                .map((e) => e.toLatLng())
                                                .toList()));
                                  },
                                  positionMarkers: order.points
                                      .mapIndexed((index, e) => FullLocation(
                                          latlng: e.toLatLng(),
                                          address: order.addresses[index],
                                          title: ''))
                                      .toList(),
                                )),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: CustomTheme.primaryColors.shade100,
                                borderRadius: BorderRadius.circular(18)),
                            child: Row(
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (order.driver != null)
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              ("${order.driver?.firstName ?? ""} ${order.driver?.lastName ?? ""}"),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium,
                                            ),
                                            const SizedBox(width: 8),
                                            const Icon(
                                              Ionicons.star,
                                              color: Color(0xffefc868),
                                              size: 15,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              order.driver?.rating != null
                                                  ? (order.driver!.rating!
                                                              .toDouble() /
                                                          20)
                                                      .toStringAsFixed(1)
                                                  : "-",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall,
                                            )
                                          ],
                                        ),
                                      Text(
                                        order.service?.name ?? "-",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        order.driver?.car?.name ?? "-",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                            color: CustomTheme
                                                .primaryColors.shade400,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          order.driver?.carPlate ?? "Unknown",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                      )
                                    ]),
                                const Spacer(),
                                Stack(
                                  children: [
                                    if (order.service != null)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 8,
                                            top: 8,
                                            right: 8,
                                            left: 8),
                                        child: Image.network(
                                            serverUrl +
                                                order.service!.media.address,
                                            width: 80,
                                            height: 80),
                                      ),
                                    if (order.driver?.media != null)
                                      Positioned(
                                          top: 0,
                                          right: 0,
                                          child: UserAvatarView(
                                              urlPrefix: serverUrl,
                                              url: order.driver?.media?.address,
                                              cornerRadius: 30,
                                              size: 15)),
                                    Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 4),
                                          decoration: BoxDecoration(
                                              color: CustomTheme
                                                  .primaryColors.shade400,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Text(
                                              NumberFormat.simpleCurrency(
                                                      name: order.currency)
                                                  .format(
                                                      order.costAfterCoupon),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium,
                                            ),
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: CustomTheme.primaryColors.shade100),
                            child: Row(children: [
                              Text(
                                S.of(context).payment_method_title,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const Spacer(),
                              if (order.paymentGateway == null)
                                const Icon(
                                  Ionicons.cash,
                                  color: CustomTheme.neutralColors,
                                ),
                              if (order.paymentGateway?.media != null)
                                Image.network(
                                  serverUrl +
                                      order.paymentGateway!.media!.address,
                                  width: 24,
                                  height: 24,
                                ),
                              const SizedBox(width: 8),
                              Text(
                                order.paymentGateway == null
                                    ? S.of(context).payment_in_cash
                                    : order.paymentGateway!.title,
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: CustomTheme.primaryColors.shade100),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    S.of(context).trip_information_title,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Ionicons.navigate,
                                        color:
                                            CustomTheme.neutralColors.shade500,
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          order.addresses.first,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                          order.startTimestamp != null
                                              ? DateFormat('HH:mm a')
                                                  .format(order.startTimestamp!)
                                              : "-",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall)
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 12, top: 4, bottom: 4),
                                    child: DottedLine(
                                      direction: Axis.vertical,
                                      dashColor: CustomTheme.neutralColors,
                                      lineLength: 20,
                                      lineThickness: 2.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Ionicons.location,
                                        color:
                                            CustomTheme.neutralColors.shade500,
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          order.addresses.last,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                          order.finishTimestamp != null
                                              ? DateFormat('HH:mm a').format(
                                                  order.finishTimestamp!)
                                              : "-",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall)
                                    ],
                                  )
                                ]),
                          ),
                          const SizedBox(height: 50)
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () async {
                  showBarModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SubmitComplaintView(orderId: orderId);
                      });
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(width: 1.5, color: Color(0xffed4346)),
                ),
                child: Text(
                  S.of(context).issue_submit_button,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: const Color(0xffb20d0e)),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
