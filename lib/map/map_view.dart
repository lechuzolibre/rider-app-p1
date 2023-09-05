import 'dart:async';

import 'package:client_shared/components/marker_new.dart';
import 'package:client_shared/config.dart';
import 'package:client_shared/map_providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:ridy/graphql/fragments/active-order.fragment.graphql.dart';
import 'package:ridy/location_selection/welcome_card/place_search_sheet_view.dart';
import 'package:ridy/map/flutter_map/flutter_map_view.dart';
import 'package:ridy/map/google_map/google_map_view.dart';

class MapView extends StatefulWidget {
  final MapViewMode mode;
  final bool interactive;
  final Function(MapViewController) onControllerReady;
  final Function(FullLocation?)? onMapMoved;
  final FullLocation? initialLocation;
  final List<Fragment$Point> polylinePoints;
  final List<FullLocation> positionMarkers;
  final List<LatLng> driverMarkers;
  final EdgeInsets padding;

  const MapView(
      {Key? key,
      required this.mode,
      required this.onControllerReady,
      this.initialLocation,
      this.polylinePoints = const <Fragment$Point>[],
      this.positionMarkers = const <FullLocation>[],
      this.driverMarkers = const <LatLng>[],
      this.onMapMoved,
      this.interactive = false,
      this.padding = EdgeInsets.zero})
      : super(key: key);

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> with TickerProviderStateMixin {
  String? currentAddress;

  @override
  void initState() {
    currentAddress ??= widget.initialLocation?.address;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box('settings').listenable(keys: ['mapProvider']),
        builder: (context, box, child) {
          final provider = getMapProvider(box);
          return Stack(
            children: [
              Positioned.fill(
                child: provider != MapProvider.googleMap
                    ? FlutterMapView(
                        mode: widget.mode,
                        provider: provider,
                        onControllerReady: widget.onControllerReady,
                        initialLocation: widget.initialLocation,
                        padding: widget.padding,
                        positionMarkers: widget.positionMarkers,
                        driverMarkers: widget.driverMarkers,
                        polylinePoints: widget.polylinePoints,
                        interactive: widget.interactive,
                        onMapMoved: (fullLocation) {
                          widget.onMapMoved?.call(fullLocation);
                          setState(() {
                            currentAddress = fullLocation?.address;
                          });
                        },
                      )
                    : GoogleMapView(
                        mode: widget.mode,
                        padding: widget.padding,
                        onControllerReady: widget.onControllerReady,
                        initialLocation: widget.initialLocation,
                        positionMarkers: widget.positionMarkers,
                        driverMarkers: widget.driverMarkers,
                        polylinePoints: widget.polylinePoints,
                        interactive: widget.interactive,
                        onMapMoved: (fullLocation) {
                          widget.onMapMoved?.call(fullLocation);
                          setState(() {
                            currentAddress = fullLocation?.address;
                          });
                        },
                      ),
              ),
              if (widget.mode == MapViewMode.picker)
                Center(
                  child: MarkerNew(
                    address: currentAddress,
                  ),
                )
            ],
          );
        });
  }

  MapProvider getMapProvider(Box box) {
    final String? provider = box.get('mapProvider', defaultValue: null);
    if (provider == null) {
      if (mapProvider == MapProvider.googleMap && kIsWeb) {
        return mapBoxAccessToken.isNotEmpty
            ? MapProvider.mapBox
            : MapProvider.openStreetMap;
      }
      return mapProvider;
    }
    switch (provider) {
      case 'googlemap':
        if (mapProvider == MapProvider.googleMap && kIsWeb) {
          return mapBoxAccessToken.isNotEmpty
              ? MapProvider.mapBox
              : MapProvider.openStreetMap;
        }
        return MapProvider.googleMap;

      case 'mapbox':
        return MapProvider.mapBox;

      case 'openstreet':
        return MapProvider.openStreetMap;

      default:
        throw Exception('Unknown map provider');
    }
  }
}

abstract class MapViewController {
  void fitBounds(List<LatLng> points);

  void moveCamera(LatLng location, double? zoom);

  Future<LatLng> getCenter();

  dispose();
}

enum MapViewMode { static, picker }
