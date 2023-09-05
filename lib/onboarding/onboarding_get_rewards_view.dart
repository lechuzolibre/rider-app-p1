import 'package:client_shared/theme/theme.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:ridy/l10n/messages.dart';

class OnboardingGetRewards extends StatelessWidget {
  final Function() onNextClicked;

  const OnboardingGetRewards({Key? key, required this.onNextClicked})
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
                  Flexible(
                    flex: 5,
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: CustomTheme.primaryColors.shade100,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(70),
                              bottomRight: Radius.circular(70))),
                    ),
                  ),
                  const SizedBox(width: 50),
                  Flexible(
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
              Positioned(
                child: Center(
                  child: Image.asset(
                    "images/onboarding-2.png",
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: DotsIndicator(
                    dotsCount: 4,
                    position: 1,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(24.0, 9.0),
                      color: CustomTheme.neutralColors.shade300,
                      activeColor: CustomTheme.primaryColors,
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(height: 32),
        Expanded(
            child: Column(
          children: [
            Text(
              S.of(context).onboarding_second_page_title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                S.of(context).onboarding_second_page_body,
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
