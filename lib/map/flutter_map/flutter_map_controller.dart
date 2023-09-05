import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:latlong2/latlong.dart';
import 'package:ridy/map/map_view.dart';

class FlutterMapController implements MapViewController {
  final AnimatedMapController mapController;

  FlutterMapController({required this.mapController});

  @override
  void fitBounds(List<LatLng> points) {
    mapController.animatedFitBounds(LatLngBounds.fromPoints(points));
  }

  @override
  void moveCamera(LatLng location, double? zoom) {
    mapController.animateTo(dest: location, zoom: zoom);
  }

  @override
  Future<LatLng> getCenter() async {
    return mapController.mapController.center;
  }

  @override
  dispose() {
    mapController.dispose();
  }
}
