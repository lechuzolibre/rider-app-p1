import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:ridy/l10n/messages.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class QueryResultView extends StatelessWidget {
  final QueryResult queryResult;
  final Function()? refetch;

  const QueryResultView(this.queryResult, {Key? key, required this.refetch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (queryResult.isLoading) {
      return Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CupertinoActivityIndicator(),
          const SizedBox(height: 8),
          Text(
            S.of(context).loading,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ));
    }
    if (queryResult.hasException) {
      if (queryResult.exception.toString().contains("Connection closed") ||
          queryResult.exception.toString().contains("Connection reset") ||
          queryResult.exception.toString().contains("Connection refused") ||
          queryResult.exception.toString().contains("Connection timed out") ||
          queryResult.exception.toString().contains("Connection terminated") ||
          queryResult.exception.toString().contains("Connection failed")) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Ionicons.cloud_offline,
                color: CustomTheme.neutralColors.shade700,
                size: 36,
              ),
              const SizedBox(height: 12),
              const Text("Network error, Please try again."),
              const SizedBox(height: 16),
              ElevatedButton(
                  style:
                      const ButtonStyle(visualDensity: VisualDensity.compact),
                  onPressed: () {
                    refetch?.call();
                  },
                  child: const Text("Retry"))
            ],
          ),
        );
      }
      return Center(
        child: Text(queryResult.exception.toString()),
      );
    }
    return const SizedBox();
  }
}

void showOperationErrorMessage(
    BuildContext context, OperationException? exception) {
  final errorMessage = getErrorMessage(context, exception);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: RidyBanner(
    errorMessage,
    type: BannerType.error,
  )));
}

String getErrorMessage(BuildContext context, OperationException? exception) {
  if (exception?.graphqlErrors.isNotEmpty ?? false) {
    return exception!.graphqlErrors.first.message;
  }
  if (exception.toString().contains("Connection closed") ||
      exception.toString().contains("Connection reset") ||
      exception.toString().contains("Connection refused") ||
      exception.toString().contains("Connection timed out") ||
      exception.toString().contains("Connection terminated") ||
      exception.toString().contains("Connection failed")) {
    return "Network error, Please try again.";
  }
  return "We encountered a problem while processing your request. please try again.";
}
