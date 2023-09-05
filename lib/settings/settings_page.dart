import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:ridy/gen/assets.gen.dart';
import 'package:ridy/settings/language_settings.dart';
import 'package:ridy/settings/map_settings.dart';

import '../l10n/messages.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RidyBackButton(text: S.of(context).action_back),
              const SizedBox(height: 16),
              Text(
                S.of(context).settings,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 16),
              SettingItem(
                icon: Assets.ionicons.map,
                title: S.of(context).mapSettings,
                onPressed: () {
                  showBarModalBottomSheet(
                      context: context,
                      enableDrag: false,
                      builder: (context) {
                        return const MapSettingsPage();
                      });
                },
              ),
              const Divider(),
              SettingItem(
                icon: Assets.ionicons.language,
                title: S.of(context).languageSettings,
                onPressed: () {
                  showBarModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const LanguageSettings();
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final SvgGenImage icon;
  final String title;
  final Function() onPressed;
  const SettingItem(
      {Key? key,
      required this.icon,
      required this.title,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: const EdgeInsets.symmetric(vertical: 4),
      onPressed: onPressed,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFFDFE4EF)),
            child: icon.svg(
                width: 20,
                height: 20,
                color: CustomTheme.neutralColors.shade600),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          Assets.ionicons.chevronForward.svg(
              color: CustomTheme.neutralColors.shade600, width: 15, height: 15),
        ],
      ),
    );
  }
}
