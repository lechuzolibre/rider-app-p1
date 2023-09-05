import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ridy/onboarding/onboarding_language_view.dart';

import '../l10n/messages.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({Key? key}) : super(key: key);

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  String selectedLanguageCode = "en";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RidyBackButton(text: S.of(context).action_back),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            S.of(context).languageSettings,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Expanded(
          child: ValueListenableBuilder<Box>(
              valueListenable:
                  Hive.box('settings').listenable(keys: ['language']),
              builder: (context, box, widget) {
                if (box.get('language') != null) {
                  selectedLanguageCode = box.get('language');
                }
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView.builder(
                      itemCount: OnboardingLanguage.languages.length,
                      itemBuilder: (context, index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: OnboardingLanguage.languages.keys
                                              .elementAt(index) ==
                                          selectedLanguageCode
                                      ? CustomTheme.primaryColors.shade400
                                      : CustomTheme.neutralColors.shade200,
                                  width: 1.5),
                              color: CustomTheme.neutralColors.shade200,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(children: [
                            Radio<String>(
                                visualDensity: VisualDensity.compact,
                                value: OnboardingLanguage.languages.keys
                                    .elementAt(index),
                                groupValue: selectedLanguageCode,
                                onChanged: (value) {
                                  setState(() {
                                    if (value != null) {
                                      selectedLanguageCode = value;
                                    }
                                  });
                                  Hive.box('settings').put('language', value);
                                }),
                            Text(
                                OnboardingLanguage.languages.values
                                    .elementAt(index),
                                style: Theme.of(context).textTheme.titleMedium)
                          ]),
                        );
                      }),
                );
              }),
        )
      ],
    );
  }
}
