import 'package:flutter/material.dart';

import 'package:ridy/l10n/messages.dart';

class WelcomeCardAddressView extends StatelessWidget {
  const WelcomeCardAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.shade200),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(
              Icons.add,
              color: Colors.grey.shade600,
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                S.of(context).action_add_favorite_location,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          ],
        )
      ],
    );
  }
}
