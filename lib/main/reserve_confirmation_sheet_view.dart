import 'package:flutter/material.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:ridy/gen/assets.gen.dart';

import 'package:ridy/l10n/messages.dart';

class ReserveConfirmationSheetView extends StatelessWidget {
  const ReserveConfirmationSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SheetTitleView(title: S.of(context).ride_reserved_dialog_title),
          Row(
            children: [
              Flexible(
                  child: Text(
                S.of(context).ride_reserved_dialog_body,
                style: Theme.of(context).textTheme.bodyMedium,
              )),
              const SizedBox(width: 16),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Assets.images.bookingConfirmed.image(
                  width: 200,
                  height: 200,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(8))),
                  onPressed: () =>
                      Navigator.popAndPushNamed(context, 'reserves'),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(S.of(context).action_see_reserved_rides),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text(S.of(context).action_confirm),
              ))
            ],
          )
        ],
      ),
    );
  }
}
