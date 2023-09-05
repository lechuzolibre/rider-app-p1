import 'package:client_shared/config.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:ridy/l10n/messages.dart';

class OnboardingWelcome extends StatelessWidget {
  final Function() onNextClicked;

  const OnboardingWelcome({Key? key, required this.onNextClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Stack(
          children: [
            Row(
              children: [
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: CustomTheme.primaryColors.shade100,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(70),
                            bottomLeft: Radius.circular(70))),
                  ),
                ),
              ],
            ),
            Center(
              child: Image.asset(
                "images/onboarding-1.png",
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Center(
                child: DotsIndicator(
                  dotsCount: 4,
                  position: 0,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(24.0, 9.0),
                    color: CustomTheme.neutralColors.shade300,
                    activeColor: CustomTheme.primaryColors,
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
            )
          ],
        )),
        const SizedBox(height: 32),
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.of(context).onboarding_first_page_title(appName),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                S.of(context).onboarding_first_page_body,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed: () {
                  onNextClicked();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  child: Text(S.of(context).action_next),
                ))
          ],
        ))
      ],
    );
  }
}
