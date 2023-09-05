import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:ridy/location_selection/welcome_card/place_search_sheet_view.dart';

import 'package:ridy/l10n/messages.dart';
import 'package:ridy/map/map_view.dart';

class AddressLocationSelectionView extends StatefulWidget {
  final FullLocation? defaultLocation;

  const AddressLocationSelectionView(this.defaultLocation, {Key? key})
      : super(key: key);

  @override
  State<AddressLocationSelectionView> createState() =>
      _AddressLocationSelectionViewState();
}

class _AddressLocationSelectionViewState
    extends State<AddressLocationSelectionView> {
  final MapController mapController = MapController();
  String? address;
  late StreamSubscription<MapEvent> subscription;

  @override
  void initState() {
    address ??= widget.defaultLocation?.address;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MapView(
          mode: MapViewMode.picker,
          onControllerReady: (controller) {},
          onMapMoved: (fullLocation) {},
        ),
        SafeArea(
          top: false,
          minimum: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: address == null
                          ? null
                          : () {
                              Navigator.of(context).pop(FullLocation(
                                  latlng: mapController.center,
                                  address: address!,
                                  title: widget.defaultLocation?.title ?? ""));
                            },
                      child: Text(S.of(context).action_confirm_location)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
