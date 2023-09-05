import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:ridy/main/bloc/main_bloc.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:ridy/main/order.graphql.dart';
import 'package:ridy/query_result_view.dart';

import 'package:ridy/l10n/messages.dart';

class RateRideSheetView extends StatefulWidget {
  const RateRideSheetView({Key? key}) : super(key: key);

  @override
  State<RateRideSheetView> createState() => _RateRideSheetViewState();
}

class _RateRideSheetViewState extends State<RateRideSheetView> {
  int? tripRating;
  String? reviewText;
  List<String> selectedParameters = [];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: RidySheetView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SheetTitleView(title: S.of(context).rate_ride_title),
            Text(
              S.of(context).rate_ride_body,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 4),
            RatingBar.builder(
              allowHalfRating: true,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Color(0xffefc868),
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  tripRating = (rating * 20).toInt();
                });
              },
            ),
            if (tripRating == null) const SizedBox(height: 35),
            if (tripRating != null)
              Container(
                constraints: const BoxConstraints(maxHeight: 400),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      const Divider(),
                      Query$GetReviewParameters$Widget(
                          builder: (result, {refetch, fetchMore}) {
                        if (result.isLoading || result.hasException) {
                          return QueryResultView(result, refetch: refetch);
                        }
                        if (result.parsedData == null) {
                          return const Text("No Data");
                        }
                        final parameters =
                            result.parsedData!.feedbackParameters;
                        return Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const Icon(
                                    Ionicons.heart_circle,
                                    size: 56,
                                    color: Color(0xff108910),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    S.of(context).rate_ride_good_points,
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  const SizedBox(height: 8),
                                  ...parameters
                                      .where((element) => element.isGood)
                                      .map((e) => RateParameter(
                                            name: e.title,
                                            isGood: e.isGood,
                                            onValueChanged: (selected) {
                                              if (selected) {
                                                selectedParameters.add(e.id);
                                              } else {
                                                selectedParameters.remove(e.id);
                                              }
                                            },
                                          )),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                children: [
                                  const Icon(
                                    Ionicons.heart_dislike_circle,
                                    size: 56,
                                    color: Color(0xffb20d0e),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(S.of(context).rate_ride_negative_points,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                  const SizedBox(height: 8),
                                  ...parameters
                                      .where((element) => !element.isGood)
                                      .map((e) => RateParameter(
                                            name: e.title,
                                            isGood: e.isGood,
                                            onValueChanged: (selected) {
                                              if (selected) {
                                                selectedParameters.add(e.id);
                                              } else {
                                                selectedParameters.remove(e.id);
                                              }
                                            },
                                          )),
                                ],
                              ),
                            )
                          ],
                        );
                      }),
                      const Divider(),
                      const SizedBox(height: 8),
                      Text(
                        S.of(context).rate_ride_comment_title,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: 4),
                      TextField(
                        minLines: 3,
                        maxLines: 6,
                        decoration: InputDecoration(
                            hintText:
                                S.of(context).rate_ride_comment_placeholder,
                            isDense: true,
                            fillColor: CustomTheme.neutralColors.shade100),
                      ),
                      const SizedBox(height: 50)
                    ],
                  ),
                ),
              ),
            if (tripRating != null) const SizedBox(height: 16),
            if (tripRating != null)
              SizedBox(
                  width: double.infinity,
                  child: Mutation$SubmitFeedback$Widget(
                      options: WidgetOptions$Mutation$SubmitFeedback(
                          onCompleted: (data, parsedData) {
                            context.read<MainBloc>().add(ResetState());
                          },
                          onError: (error) =>
                              showOperationErrorMessage(context, error)),
                      builder: (runMutation, result) {
                        return ElevatedButton(
                            onPressed: () {
                              final bloc = context.read<MainBloc>();
                              if (bloc.state is! OrderReview) return;
                              runMutation(Variables$Mutation$SubmitFeedback(
                                  score: tripRating!,
                                  description: reviewText ?? "",
                                  parameterIds: selectedParameters,
                                  orderId: (bloc.state as OrderReview)
                                      .currentOrder
                                      .id));
                            },
                            child: Text(S.of(context).action_send_feedback));
                      }))
          ],
        ),
      ),
    );
  }
}

class RateParameter extends StatefulWidget {
  final bool isGood;
  final String name;
  final Function(bool) onValueChanged;

  const RateParameter(
      {required this.name,
      required this.isGood,
      required this.onValueChanged,
      Key? key})
      : super(key: key);

  @override
  State<RateParameter> createState() => _RateParameterState();
}

class _RateParameterState extends State<RateParameter> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        widget.onValueChanged(!isSelected);
        setState(() {
          isSelected = !isSelected;
        });
      }),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: !isSelected
                        ? CustomTheme.primaryColors.shade100
                        : (widget.isGood
                            ? const Color(0xffc9ffc9)
                            : const Color(0xffffd1d1)),
                    border: Border.all(
                        color: !isSelected
                            ? Colors.transparent
                            : (widget.isGood
                                ? const Color(0xff108910)
                                : const Color(0xffb20d0e)))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      widget.name,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          letterSpacing: -0.3,
                          color: !isSelected
                              ? CustomTheme.neutralColors
                              : (widget.isGood
                                  ? const Color(0xff108910)
                                  : const Color(0xffb20d0e))),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
