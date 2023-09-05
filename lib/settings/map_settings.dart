import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/config.dart';
import 'package:client_shared/map_providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ridy/gen/assets.gen.dart';
import 'package:ridy/l10n/messages.dart';

class MapSettingsPage extends StatefulWidget {
  const MapSettingsPage({Key? key}) : super(key: key);

  @override
  State<MapSettingsPage> createState() => _MapSettingsPageState();
}

class _MapSettingsPageState extends State<MapSettingsPage> {
  final PageController pageController = PageController(viewportFraction: 0.8);
  int? selectedId;
  int activeId = 0;

  @override
  void initState() {
    final map = Hive.box("settings").get("mapProvider");
    if (map == 'mapbox') {
      selectedId = 2;
    }
    if (map == 'openstreet') {
      selectedId = 1;
    }
    if (map == 'googlemap') {
      selectedId = 0;
    }
    if (map == null) {
      if (kIsWeb && mapProvider == MapProvider.googleMap) {
        selectedId = mapBoxAccessToken.isNotEmpty ? 2 : 1;
        return;
      }
      selectedId = mapProvider == MapProvider.mapBox
          ? 2
          : (mapProvider == MapProvider.openStreetMap ? 1 : 0);
    }

    super.initState();
  }

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
            S.of(context).mapSettings,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Expanded(
          child: PageView(
            controller: pageController,
            onPageChanged: (newSelectedPage) {
              setState(() {
                activeId = newSelectedPage;
              });
            },
            children: [
              MapSettingItem(
                isActive: activeId == 0,
                isSelected: selectedId == 0,
                image: Assets.images.googlemapPreview,
                title: "Google Maps",
                benefits: const ["Best location coverage", "Good pricing"],
                shortComings: const ["Not working on web"],
                onPressed: kIsWeb
                    ? null
                    : () {
                        setState(() => selectedId = 0);
                        Hive.box('settings').put('mapProvider', 'googlemap');
                      },
              ),
              MapSettingItem(
                isActive: activeId == 1,
                isSelected: selectedId == 1,
                image: Assets.images.openstreetPreview,
                title: "OpenStreetMap",
                benefits: const ["Free", "Performant"],
                shortComings: const ["Less Attractive UI"],
                onPressed: () {
                  setState(() => selectedId = 1);
                  Hive.box('settings').put('mapProvider', 'openstreet');
                },
              ),
              MapSettingItem(
                isActive: activeId == 2,
                isSelected: selectedId == 2,
                image: Assets.images.mapboxPreview,
                title: "MapBox",
                benefits: const ["Attractive design", "Performant"],
                shortComings: const ["Expensive"],
                onPressed: () {
                  setState(() => selectedId = 2);
                  Hive.box('settings').put('mapProvider', 'mapbox');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MapSettingItem extends StatelessWidget {
  final AssetGenImage image;
  final String title;
  final List<String> benefits;
  final List<String> shortComings;

  final bool isActive;
  final bool isSelected;
  final Function()? onPressed;

  const MapSettingItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.benefits,
      required this.shortComings,
      required this.isActive,
      required this.onPressed,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding:
            EdgeInsets.symmetric(vertical: isActive ? 16 : 32, horizontal: 8),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 250),
          opacity: isActive ? 1 : 0.5,
          child: Column(children: [
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: image.image(fit: BoxFit.cover)),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffe9Ecf5),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.white, offset: Offset(0, 3), blurRadius: 15)
                ],
              ),
              child: Column(children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: const Color(0xffedf3Ff),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xff89b3ff)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0x14000000),
                          offset: Offset(0, 3),
                          blurRadius: 5)
                    ],
                  ),
                  child: Center(
                      child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        visualDensity: VisualDensity.compact,
                        value: isSelected,
                        onChanged: (value) {
                          if (value == true) onPressed?.call();
                        },
                      ),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  )),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    ...benefits.map((e) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              Assets.ionicons.checkmarkCircle.svg(
                                  width: 20,
                                  height: 20,
                                  color: const Color(0xff046c00)),
                              const SizedBox(width: 4),
                              Text(
                                e,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        )),
                    ...shortComings.map((e) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            children: [
                              Assets.ionicons.closeCircle.svg(
                                  width: 20,
                                  height: 20,
                                  color: const Color(0xff950101)),
                              const SizedBox(width: 4),
                              Text(
                                e,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        )),
                  ]),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
