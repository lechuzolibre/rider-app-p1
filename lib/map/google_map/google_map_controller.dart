import 'dart:async';
import 'dart:math';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ridy/map/map_view.dart';
import 'package:latlong2/latlong.dart' as latlong;

class GoogleMapsController implements MapViewController {
  final Completer<GoogleMapController> mapController = Completer();

  GoogleMapsController();

  @override
  void fitBounds(List<latlong.LatLng> points) async {
    var firstLatLng = points.first;
    var s = firstLatLng.latitude,
        n = firstLatLng.latitude,
        w = firstLatLng.longitude,
        e = firstLatLng.longitude;
    for (var i = 1; i < points.length; i++) {
      var latlng = points[i];
      s = min(s, latlng.latitude);
      n = max(n, latlng.latitude);
      w = min(w, latlng.longitude);
      e = max(e, latlng.longitude);
    }
    (await mapController.future).animateCamera(CameraUpdate.newLatLngBounds(
        LatLngBounds(southwest: LatLng(s, w), northeast: LatLng(n, e)), 50));
  }

  @override
  void moveCamera(latlong.LatLng location, double? zoom) async {
    (await mapController.future).animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(location.latitude, location.longitude),
            zoom: zoom!)));
  }

  @override
  Future<latlong.LatLng> getCenter() async {
    final visibleRegion =
        (await (await mapController.future).getVisibleRegion());
    return latlong.LatLng(
        visibleRegion.southwest.latitude +
            ((visibleRegion.northeast.latitude -
                    visibleRegion.southwest.latitude) /
                2),
        visibleRegion.southwest.longitude +
            ((visibleRegion.northeast.longitude -
                    visibleRegion.southwest.longitude) /
                2));
  }

  @override
  dispose() {
    mapController.future.then((value) => value.dispose());
  }
}
