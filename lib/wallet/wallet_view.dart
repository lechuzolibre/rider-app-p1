import 'package:client_shared/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/wallet/wallet_card_view.dart';
import 'package:client_shared/wallet/wallet_activity_item_view.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:lifecycle/lifecycle.dart';

import 'package:ridy/l10n/messages.dart';
import 'package:ridy/schema.gql.dart';
import 'package:ridy/wallet/add_credit_sheet_view.dart';
import 'package:ridy/wallet/wallet.graphql.dart';
import '../query_result_view.dart';

class WalletView extends StatefulWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  State<WalletView> createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  int? selectedWalletIndex;
  Refetch? refetch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LifecycleWrapper(
        onLifecycleEvent: (event) {
          if (event == LifecycleEvent.visible && refetch != null) {
            refetch!();
          }
        },
        child: Query$Wallet$Widget(builder: (result, {refetch, fetchMore}) {
          this.refetch = refetch;
          if (result.isLoading || result.hasException) {
            return QueryResultView(
              result,
              refetch: refetch,
            );
          }
          final wallet = result.parsedData!.riderWallets;
          final transactions = result.parsedData!.riderTransacions.edges;
          if (wallet.isNotEmpty && selectedWalletIndex == null) {
            selectedWalletIndex = 0;
          }
          final currentWallet =
              wallet.isEmpty ? null : wallet[selectedWalletIndex ?? 0];
          return SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RidyBackButton(text: S.of(context).action_back),
                  WalletCardView(
                    title: S.of(context).wallet_card_title(appName),
                    actionAddCreditText: S.of(context).add_credit_dialog_title,
                    actionRedeemGiftCardText:
                        S.of(context).action_redeem_gift_card,
                    currency: currentWallet?.currency ?? defaultCurrency,
                    credit: currentWallet?.balance ?? 0,
                    onAdddCredit: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          constraints: const BoxConstraints(maxWidth: 600),
                          builder: (context) {
                            return AddCreditSheetView(
                              currency:
                                  currentWallet?.currency ?? defaultCurrency,
                            );
                          });
                    },
                  ),
                  const SizedBox(height: 32),
                  Text(S.of(context).wallet_activities_heading,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 12),
                  if (transactions.isNotEmpty)
                    Expanded(
                      child: ListView.builder(
                          itemCount: transactions.length,
                          itemBuilder: (context, index) {
                            final item = transactions[index].node;
                            return WalletActivityItemView(
                              title: item.action ==
                                      Enum$TransactionAction.Recharge
                                  ? getRechargeText(item.rechargeType!)
                                  : getDeductText(context, item.deductType!),
                              dateTime: item.createdAt,
                              amount: item.amount,
                              currency: item.currency,
                              icon: getTransactionIcon(item),
                            );
                          }),
                    ),
                  if (transactions.isEmpty)
                    Expanded(
                        child: Center(
                            child: Text(
                                S.of(context).wallet_empty_state_message))),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  String getDeductText(
      BuildContext context, Enum$RiderDeductTransactionType deductType) {
    switch (deductType) {
      case Enum$RiderDeductTransactionType.OrderFee:
        return S.of(context).enum_rider_transaction_deduct_order_fee;

      case Enum$RiderDeductTransactionType.Withdraw:
        return S.of(context).enum_rider_transaction_deduct_withdraw;

      case Enum$RiderDeductTransactionType.Correction:
        return S.of(context).enum_rider_transaction_deduct_correction;
      default:
        return S.of(context).enum_unknown;
    }
  }

  String getRechargeText(Enum$RiderRechargeTransactionType type) {
    switch (type) {
      case Enum$RiderRechargeTransactionType.BankTransfer:
        return S.of(context).enum_rider_transaction_recharge_bank_transfer;

      case Enum$RiderRechargeTransactionType.Correction:
        return S.of(context).enum_rider_transaction_recharge_correction;

      case Enum$RiderRechargeTransactionType.Gift:
        return S.of(context).enum_rider_transaction_recharge_gift;

      case Enum$RiderRechargeTransactionType.InAppPayment:
        return S.of(context).enum_rider_transaction_recharge_in_app_payment;

      default:
        return S.of(context).enum_unknown;
    }
  }

  IconData getTransactionIcon(
      Query$Wallet$riderTransacions$edges$node transacion) {
    if (transacion.action == Enum$TransactionAction.Recharge) {
      switch (transacion.rechargeType) {
        case Enum$RiderRechargeTransactionType.BankTransfer:
          return Ionicons.business;

        case Enum$RiderRechargeTransactionType.Gift:
          return Ionicons.gift;

        case Enum$RiderRechargeTransactionType.Correction:
          return Ionicons.refresh;

        case Enum$RiderRechargeTransactionType.InAppPayment:
          return Ionicons.receipt;

        default:
          return Ionicons.help;
      }
    } else {
      switch (transacion.deductType) {
        case Enum$RiderDeductTransactionType.OrderFee:
          return Ionicons.car;

        default:
          return Ionicons.help;
      }
    }
  }
}
