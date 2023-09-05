import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/gen/assets.gen.dart';
import 'package:ridy/main/order.graphql.dart';

import 'package:ridy/l10n/messages.dart';
import 'package:ridy/query_result_view.dart';
import '../../main/bloc/main_bloc.dart';

class LookingSheetView extends StatelessWidget {
  const LookingSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return RidySheetView(
      child: Column(
        children: [
          Text(
            S.of(context).looking_dialog_title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: LinearProgressIndicator(),
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  S.of(context).looking_dialog_body,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Assets.images.searching.image(),
                ),
              )
            ],
          ),
          Mutation$CancelOrder$Widget(
              options: WidgetOptions$Mutation$CancelOrder(
                  onCompleted: (result, parsedData) {
                    if (parsedData == null) return;
                    mainBloc.add(CurrentOrderUpdated(parsedData.cancelOrder));
                  },
                  onError: (error) =>
                      showOperationErrorMessage(context, error)),
              builder: (runMutation, result) {
                return SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: (result?.isLoading ?? false)
                          ? null
                          : () => runMutation(),
                      child: Text(
                        S.of(context).action_cancel_request,
                        style: Theme.of(context).textTheme.titleMedium,
                      )),
                );
              })
        ],
      ),
    );
  }
}
