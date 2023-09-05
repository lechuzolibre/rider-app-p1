import 'package:flutter/material.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/schema.gql.dart';
import 'package:ridy/wallet/wallet.graphql.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:client_shared/wallet/payment_method_item.dart';
import 'package:client_shared/wallet/money_presets_group.dart';

import '../config.dart';

class AddCreditSheetView extends StatefulWidget {
  final String currency;
  const AddCreditSheetView({required this.currency, Key? key})
      : super(key: key);

  @override
  State<AddCreditSheetView> createState() => _AddCreditSheetViewState();
}

class _AddCreditSheetViewState extends State<AddCreditSheetView> {
  String? selectedGatewayId;
  double? amount;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SheetTitleView(title: S.of(context).add_credit_dialog_title),
          Text(
            S.of(context).add_credit_select_payment_method,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Query$PaymentGateways$Widget(builder: (result, {refetch, fetchMore}) {
            if (result.isLoading ||
                result.hasException ||
                result.parsedData == null) {
              return QueryResultView(result, refetch: refetch);
            }
            final gateways = result.parsedData!.paymentGateways;
            return Column(
                children: gateways
                    .map((gateway) => PaymentMethodItem(
                        id: gateway.id,
                        title: gateway.title,
                        selectedValue: selectedGatewayId,
                        imageAddress: gateway.media != null
                            ? serverUrl + gateway.media!.address
                            : null,
                        onSelected: (value) {
                          setState(() => selectedGatewayId = gateway.id);
                        }))
                    .toList());
          }),
          const SizedBox(height: 16),
          Text(
            S.of(context).add_credit_choose_amount,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          MoneyPresetsGroup(
              onAmountChanged: (value) => setState(() => amount = value)),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Mutation$TopUpWallet$Widget(
                options: WidgetOptions$Mutation$TopUpWallet(
                    onCompleted: (result, parsedData) {
                      if (parsedData == null) return;
                      launchUrl(Uri.parse(parsedData.topUpWallet.url),
                          mode: LaunchMode.externalApplication);
                    },
                    onError: (error) =>
                        showOperationErrorMessage(context, error)),
                builder: (runMutation, result) {
                  return ElevatedButton(
                    onPressed: ((result?.isLoading ?? false) ||
                            amount == null ||
                            selectedGatewayId == null)
                        ? null
                        : () {
                            Navigator.pop(context);
                            runMutation(Variables$Mutation$TopUpWallet(
                                input: Input$TopUpWalletInput(
                                    gatewayId: selectedGatewayId!,
                                    amount: amount!,
                                    currency: widget.currency)));
                          },
                    child: Text(S.of(context).top_up_sheet_pay_button),
                  );
                }),
          )
        ],
      ),
    );
  }
}
