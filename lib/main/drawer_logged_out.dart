import 'package:client_shared/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:client_shared/theme/theme.dart';

class DrawerLoggedOut extends StatelessWidget {
  const DrawerLoggedOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(16),
      child: Column(children: [
        const SizedBox(height: 64),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.log_in),
          minLeadingWidth: 20.0,
          title: Text(S.of(context).menu_login,
              style: Theme.of(context).textTheme.titleMedium),
          onTap: () {
            Navigator.pushNamed(context, 'login');
          },
        ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.settings),
          minLeadingWidth: 20.0,
          title: Text(S.of(context).settings,
              style: Theme.of(context).textTheme.titleMedium),
          onTap: () {
            Navigator.pushNamed(context, 'settings');
          },
        ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.information),
          minLeadingWidth: 20.0,
          title: Text(S.of(context).menu_about,
              style: Theme.of(context).textTheme.titleMedium),
          onTap: () async {
            PackageInfo packageInfo = await PackageInfo.fromPlatform();
            showAboutDialog(
                context: context,
                applicationIcon: Image.asset(
                  'images/logo.png',
                  width: 100,
                  height: 100,
                ),
                applicationVersion:
                    "${packageInfo.version} (Build ${packageInfo.buildNumber})",
                applicationName: packageInfo.appName,
                applicationLegalese:
                    S.of(context).copyright_notice(companyName));
          },
        )
      ]),
    );
  }
}

SvgTheme menuBarSvgTheme =
    SvgTheme(currentColor: CustomTheme.primaryColors.shade800, fontSize: 14);
