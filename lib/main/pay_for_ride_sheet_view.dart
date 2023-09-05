import 'package:client_shared/components/user_avatar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:ridy/config.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:ridy/graphql/fragments/active-order.fragment.graphql.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/schema.gql.dart';
import 'package:ridy/wallet/wallet.graphql.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:client_shared/wallet/payment_method_item.dart';
import 'package:client_shared/wallet/money_presets_group.dart';

import 'package:ridy/l10n/messages.dart';
import 'package:intl/intl.dart';

class PayForRideSheetView extends StatefulWidget {
  static const List<double> tipPresets = [10, 20, 50];
  final Fragment$CurrentOrder order;
  final Function()? onClosePressed;

  const PayForRideSheetView(
      {required this.order, required this.onClosePressed, Key? key})
      : super(key: key);

  @override
  State<PayForRideSheetView> createState() => _PayForRideSheetViewState();
}

class _PayForRideSheetViewState extends State<PayForRideSheetView> {
  double tipAmount = 0;
  String? selectedGatewayId;
  double customAmount = 0;
  double balance = 0;

  @override
  Widget build(BuildContext context) {
    return RidySheetView(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SheetTitleView(
              title: S.of(context).add_credit_dialog_title,
              closeAction: widget.onClosePressed == null
                  ? null
                  : () => widget.onClosePressed!(),
            ),
            if (widget.order.driver != null)
              TipDriverSection(
                driver: widget.order.driver!,
                onTipSelected: (value) => setState(() => tipAmount = value),
              ),
            Query$PayForRide$Widget(builder: (result, {refetch, fetchMore}) {
              if (result.isLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              final parsedData = result.parsedData!;
              balance = parsedData.riderWallets
                      .firstWhereOrNull((element) =>
                          element.currency == widget.order.currency)
                      ?.balance ??
                  0;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).add_credit_select_payment_method,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  ...parsedData.paymentGateways.map((gateway) =>
                      PaymentMethodItem(
                          id: gateway.id,
                          title: gateway.title,
                          selectedValue: selectedGatewayId,
                          imageAddress: gateway.media != null
                              ? (serverUrl + gateway.media!.address)
                              : null,
                          onSelected: (value) {
                            setState(() => selectedGatewayId = gateway.id);
                          })),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: PayForRideInvoiceContainer(
                      serviceName: widget.order.service?.name ?? "-",
                      currency: widget.order.currency,
                      serviceFee: widget.order.costAfterCoupon,
                      tip: tipAmount,
                      walletCredit: balance,
                      customAmountUpdated: (value) {
                        customAmount = value;
                      },
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Mutation$PayRide$Widget(
                          options: WidgetOptions$Mutation$PayRide(
                              onCompleted: (data, parsedData) {
                                if (parsedData == null) return;
                                launchUrl(Uri.parse(parsedData.topUpWallet.url),
                                    mode: LaunchMode.externalApplication);
                              },
                              onError: (error) =>
                                  showOperationErrorMessage(context, error)),
                          builder: (runMutation, result) {
                            return ElevatedButton(
                                onPressed: selectedGatewayId == null ||
                                        getTotal() < 0
                                    ? null
                                    : () async {
                                        runMutation(Variables$Mutation$PayRide(
                                            orderId: widget.order.id,
                                            tipAmount: tipAmount,
                                            input: Input$TopUpWalletInput(
                                                gatewayId: selectedGatewayId!,
                                                orderNumber: widget.order.id,
                                                amount: getTotal(),
                                                currency:
                                                    widget.order.currency),
                                            shouldPreauth:
                                                widget.order.status ==
                                                    Enum$OrderStatus
                                                        .WaitingForPrePay));
                                      },
                                child:
                                    Text(S.of(context).action_confirm_and_pay));
                          }))
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  double getTotal() {
    final orderFee = (widget.order.service?.prepayPercent ?? 0) > 0
        ? (widget.order.costAfterCoupon *
            widget.order.service!.prepayPercent.toDouble() /
            100.0)
        : widget.order.costAfterCoupon;
    return orderFee + tipAmount - balance + customAmount;
  }
}

class TipDriverSection extends StatelessWidget {
  final Fragment$CurrentOrder$driver driver;
  final Function(double) onTipSelected;
  const TipDriverSection(
      {required this.driver, required this.onTipSelected, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).notice_tip_title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 2),
        Text(
          S.of(context).notice_tip_description,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 8),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          UserAvatarView(
            urlPrefix: serverUrl,
            url: driver.media?.address,
            cornerRadius: 12,
            size: 30,
          ),
        ]),
        const SizedBox(height: 4),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "${driver.firstName} ${driver.lastName}",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 16),
          child: MoneyPresetsGroup(
            onAmountChanged: (amount) => onTipSelected(amount),
          ),
        ),
      ],
    );
  }
}

class PayForRideInvoiceContainer extends StatefulWidget {
  final String serviceName;
  final String currency;
  final double serviceFee;
  final double tip;
  final double walletCredit;
  final Function(double) customAmountUpdated;

  const PayForRideInvoiceContainer(
      {required this.serviceName,
      required this.currency,
      required this.serviceFee,
      required this.tip,
      required this.walletCredit,
      required this.customAmountUpdated,
      Key? key})
      : super(key: key);

  @override
  State<PayForRideInvoiceContainer> createState() =>
      _PayForRideInvoiceContainerState();
}

class _PayForRideInvoiceContainerState
    extends State<PayForRideInvoiceContainer> {
  double? customCredit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: CustomTheme.neutralColors.shade100,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                S.of(context).add_credit_custom_credit_placeholder,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Spacer(),
              SizedBox(
                width: 70,
                child: TextField(
                  onChanged: (value) {
                    final parsedVal = double.tryParse(value);
                    if (parsedVal == null) return;
                    setState(() => customCredit = parsedVal);
                    widget.customAmountUpdated(parsedVal);
                  },
                  decoration: InputDecoration(
                      isDense: true,
                      fillColor: Colors.transparent,
                      prefixIconConstraints:
                          const BoxConstraints(minWidth: 0, minHeight: 0),
                      hintText: S
                          .of(context)
                          .add_credit_custom_credit_text_placeholder,
                      hintStyle: Theme.of(context).textTheme.labelMedium,
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: const Icon(Ionicons.add)),
                ),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                widget.serviceName,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Spacer(),
              Text(
                  NumberFormat.simpleCurrency(name: widget.currency)
                      .format(widget.serviceFee),
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
          const SizedBox(height: 4),
          const Divider(),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(S.of(context).invoice_item_tip,
                  style: Theme.of(context).textTheme.bodySmall),
              const Spacer(),
              Text(
                  NumberFormat.simpleCurrency(name: widget.currency)
                      .format(widget.tip),
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
          const SizedBox(height: 4),
          const Divider(),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(S.of(context).invoice_item_wallet,
                  style: Theme.of(context).textTheme.bodySmall),
              const Spacer(),
              Text(
                  NumberFormat.simpleCurrency(name: widget.currency)
                      .format(widget.walletCredit),
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
          const SizedBox(height: 4),
          const Divider(thickness: 1.5),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                S.of(context).invoice_item_total,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Spacer(),
              Text(
                NumberFormat.simpleCurrency(name: widget.currency).format(
                    widget.tip +
                        widget.serviceFee -
                        widget.walletCredit +
                        (customCredit ?? 0)),
                style: Theme.of(context).textTheme.headlineLarge,
              )
            ],
          ),
        ],
      ),
    );
  }
}

extension FirstWhereOrNullExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (E element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}
