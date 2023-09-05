import 'package:flutter/material.dart';
import 'package:ridy/location_selection/welcome_card/place_search_sheet_view.dart';

import 'package:ridy/l10n/messages.dart';
import 'package:ridy/map/map_view.dart';

class PlaceConfirmSheetView extends StatefulWidget {
  final FullLocation? defaultLocation;

  const PlaceConfirmSheetView(this.defaultLocation, {Key? key})
      : super(key: key);

  @override
  State<PlaceConfirmSheetView> createState() => _PlaceConfirmSheetViewState();
}

class _PlaceConfirmSheetViewState extends State<PlaceConfirmSheetView> {
  FullLocation? location;
  MapViewController? controller;

  @override
  void initState() {
    location ??= widget.defaultLocation;
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MapView(
            interactive: true,
            onMapMoved: (fullLocation) {
              if (mounted) {
                setState(() => location = fullLocation);
              }
            },
            initialLocation: location,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom + 50),
            mode: MapViewMode.picker,
            onControllerReady: (controller) {
              this.controller = controller;
            }),
        Align(
          alignment: Alignment.bottomCenter,
          child: SafeArea(
            minimum: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: location == null
                      ? null
                      : () => Navigator.of(context).pop(location),
                  child: Text(S.of(context).action_confirm_location)),
            ),
          ),
        )
      ],
    );
  }
}
