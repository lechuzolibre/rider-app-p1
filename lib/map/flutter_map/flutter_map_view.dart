import 'dart:async';

import 'package:client_shared/components/marker_new.dart';
import 'package:client_shared/map_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:osm_nominatim/osm_nominatim.dart';
import 'package:ridy/config.dart';
import 'package:ridy/graphql/fragments/active-order.fragment.graphql.dart';
import 'package:ridy/location_selection/welcome_card/place_search_sheet_view.dart';
import 'package:ridy/main/bloc/main_bloc.dart';
import 'package:ridy/map/flutter_map/flutter_map_controller.dart';
import 'package:ridy/map/map_view.dart';

class FlutterMapView extends StatefulWidget {
  final Function(FullLocation?)? onMapMoved;
  final MapProvider provider;
  final MapViewMode mode;
  final bool interactive;
  final FullLocation? initialLocation;
  final List<Fragment$Point> polylinePoints;
  final List<FullLocation> positionMarkers;
  final List<LatLng> driverMarkers;
  final Function(MapViewController) onControllerReady;
  final EdgeInsets padding;

  const FlutterMapView(
      {Key? key,
      this.initialLocation,
      required this.polylinePoints,
      required this.positionMarkers,
      required this.driverMarkers,
      required this.mode,
      required this.onControllerReady,
      required this.onMapMoved,
      required this.interactive,
      required this.padding,
      required this.provider})
      : super(key: key);

  @override
  State<FlutterMapView> createState() => _FlutterMapViewState();
}

class _FlutterMapViewState extends State<FlutterMapView>
    with TickerProviderStateMixin {
  late final FlutterMapController controller =
      FlutterMapController(mapController: AnimatedMapController(vsync: this));
  late StreamSubscription<MapEvent> subscription;

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: controller.mapController.mapController,
      options: MapOptions(
          center: widget.initialLocation?.latlng,
          zoom: 16,
          onMapReady: () {
            widget.onControllerReady(controller);
            if (widget.mode == MapViewMode.picker) {
              subscription = controller
                  .mapController.mapController.mapEventStream
                  .listen((MapEvent mapEvent) async {
                if (mapEvent is MapEventMoveStart) {
                  widget.onMapMoved?.call(null);
                } else if (mapEvent is MapEventMoveEnd) {
                  final reverseSearchResult = await Nominatim.reverseSearch(
                      lat: controller
                          .mapController.mapController.center.latitude,
                      lon: controller
                          .mapController.mapController.center.longitude,
                      nameDetails: true);
                  final fullLocation =
                      reverseSearchResult.convertToFullLocation();
                  widget.onMapMoved?.call(fullLocation);
                }
              });
            }
          }),
      children: [
        if (widget.provider == MapProvider.googleMap)
          TileLayer(
            urlTemplate:
                "https://maps.googleapis.com/maps/api/tiles/v1/tiles?x={x}&y={y}&z={z}&key=$placesApiKey",
          ),
        if (widget.provider == MapProvider.openStreetMap) openStreetTileLayer,
        if (widget.provider == MapProvider.mapBox) mapBoxTileLayer,
        CurrentLocationLayer(
            followOnLocationUpdate: FollowOnLocationUpdate.never),
        MarkerLayer(
            markers: widget.driverMarkers
                .map((e) => Marker(
                    builder: (context) => Image.asset('images/marker_taxi.png'),
                    point: e))
                .toList()),
        MarkerLayer(
          markers: widget.positionMarkers
              .map((e) => Marker(
                  width: 240,
                  height: 63,
                  builder: (context) => MarkerNew(address: e.address),
                  point: e.latlng))
              .toList(),
        ),
        PolylineLayer(
          polylines: [
            Polyline(
                points: widget.polylinePoints.map((e) => e.toLatLng()).toList(),
                strokeWidth: 5,
                color: Colors.blue)
          ],
        ),
      ],
    );
  }
}
