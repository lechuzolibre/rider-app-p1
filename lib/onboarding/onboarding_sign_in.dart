import 'package:client_shared/theme/theme.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:ridy/l10n/messages.dart';

class OnboardingSignIn extends StatelessWidget {
  final Function() onNextClicked;

  const OnboardingSignIn({Key? key, required this.onNextClicked})
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
                      height: 370,
                      decoration: BoxDecoration(
                          color: CustomTheme.primaryColors.shade100,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(70),
                              bottomRight: Radius.circular(70))),
                    ),
                  ),
                  const SizedBox(width: 10)
                ],
              ),
              Center(
                child: Image.asset(
                  "images/onboarding-4.png",
                ),
              ),
              Positioned(
                  child: Center(
                      child: DotsIndicator(
                          dotsCount: 4,
                          position: 3,
                          decorator: DotsDecorator(
                            size: const Size.square(9.0),
                            activeSize: const Size(24.0, 9.0),
                            color: CustomTheme.neutralColors.shade300,
                            activeColor: CustomTheme.primaryColors,
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          )))),
            ],
          ),
        ),
        const SizedBox(height: 32),
        Expanded(
            child: Column(
          children: [
            Text(
              S.of(context).onboarding_sign_in_title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                S.of(context).onboarding_sign_in_body,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, 'login');
                  Hive.box('settings').put('onboarding', 1);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  child: Text(S.of(context).menu_login),
                )),
            const SizedBox(height: 16),
            CupertinoButton(
                child: Text(S.of(context).action_skip_for_now),
                onPressed: () => Hive.box('settings').put('onboarding', 1))
          ],
        ))
      ],
    );
  }
}
