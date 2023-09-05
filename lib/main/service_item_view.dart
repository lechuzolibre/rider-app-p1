import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../config.dart';
import 'package:intl/intl.dart';

import 'package:client_shared/theme/theme.dart';

import 'bloc/main_bloc.dart';
import 'order.graphql.dart';

class ServiceItemView extends StatelessWidget {
  final bool isSelected;
  final Query$GetFare$getFare$services$services service;
  final String currency;

  const ServiceItemView(
      {Key? key,
      required this.isSelected,
      required this.service,
      required this.currency})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return GestureDetector(
      onTap: () => mainBloc.add(SelectService(service)),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isSelected
                ? CustomTheme.primaryColors.shade100
                : CustomTheme.primaryColors.shade50),
        child: Row(
          children: [
            Image.network(
              serverUrl + service.media.address,
              width: 75,
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  if (service.description?.isNotEmpty ?? false)
                    Text(
                      service.description ?? "",
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 4, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    NumberFormat.simpleCurrency(name: currency)
                        .format(service.cost),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        decoration: (service.costAfterCoupon != null &&
                                service.cost != service.costAfterCoupon)
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        color: (service.costAfterCoupon != null &&
                                service.cost != service.costAfterCoupon)
                            ? CustomTheme.neutralColors.shade300
                            : CustomTheme.neutralColors.shade800),
                  ),
                  const SizedBox(height: 4),
                  if (service.costAfterCoupon != null &&
                      service.cost != service.costAfterCoupon)
                    Text(
                      NumberFormat.simpleCurrency(name: currency)
                          .format(service.costAfterCoupon),
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: const Color(0xff108910)),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
