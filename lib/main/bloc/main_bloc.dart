import 'dart:typed_data';

import 'package:client_shared/components/marker_new.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gmap;
import 'package:latlong2/latlong.dart';
import 'package:ridy/graphql/fragments/active-order.fragment.graphql.dart';
import 'package:ridy/location_selection/welcome_card/place_search_sheet_view.dart';
import 'package:ridy/main/order.graphql.dart';
import 'package:ridy/schema.gql.dart';
import 'package:collection/collection.dart';

// Events
abstract class MainBlocEvent {}

class ResetState extends MainBlocEvent {}

class DriverLocationUpdatedEvent extends MainBlocEvent {
  Fragment$Point location;

  DriverLocationUpdatedEvent(this.location);
}

class ShowPreview extends MainBlocEvent {
  List<FullLocation> points;
  List<String> selectedOptions;
  String? couponCode;

  ShowPreview(
      {required this.points, required this.selectedOptions, this.couponCode});
}

class SelectService extends MainBlocEvent {
  Query$GetFare$getFare$services$services service;

  SelectService(this.service);
}

class ShowPreviewDirections extends MainBlocEvent {
  List<Fragment$Point> directions;

  ShowPreviewDirections({required this.directions});
}

class SelectBookingTime extends MainBlocEvent {
  DateTime time;

  SelectBookingTime(this.time);
}

class ProfileUpdated extends MainBlocEvent {
  Query$GetCurrentOrder$rider profile;
  Fragment$Point? driverLocation;

  ProfileUpdated({required this.profile, this.driverLocation});
}

class VersionStatusEvent extends MainBlocEvent {
  Enum$VersionStatus status;
  VersionStatusEvent(this.status);
}

class CurrentOrderUpdated extends MainBlocEvent {
  Fragment$CurrentOrder order;
  Fragment$Point? driverLocation;

  CurrentOrderUpdated(this.order, {this.driverLocation});
}

class SetDriversLocations extends MainBlocEvent {
  List<LatLng> driversLocations;

  SetDriversLocations(this.driversLocations);
}

// States
abstract class MainBlocState extends Equatable {
  List<MarkerDataInterface> markers;
  final bool isInteractive;
  final int bookedOrdersCount;

  MainBlocState(
      {required this.isInteractive,
      required this.markers,
      this.bookedOrdersCount = 0});
}

class RequireUpdateState extends MainBlocState {
  RequireUpdateState() : super(isInteractive: false, markers: []);

  @override
  List<Object?> get props => [];
}

class SelectingPoints extends MainBlocState {
  List<FullLocation> points = [];
  List<LatLng> driverLocations = [];
  bool loadDrivers;
  int bookingsCount = 0;

  SelectingPoints(this.points, this.driverLocations, this.loadDrivers,
      {this.bookingsCount = 0})
      : super(
            isInteractive: true,
            markers: driverLocations
                .mapIndexed((index, e) =>
                    MarkerDataDriver(id: index.toString(), position: e))
                .toList());

  @override
  List<Object?> get props => [
        points.map((e) => e.latlng.toJson()).join(','),
        driverLocations.map((e) => '${e.latitude},${e.longitude}'),
        loadDrivers,
        bookingsCount
      ];
}

class OrderPreview extends MainBlocState {
  final List<FullLocation> points;
  final List<String> selectedOptions;
  final String? couponCode;
  final Query$GetFare$getFare$services$services? selectedService;
  final List<LatLng>? directions;

  OrderPreview(
      {required this.points,
      this.selectedOptions = const [],
      this.selectedService,
      required this.directions,
      this.couponCode})
      : super(
            isInteractive: false,
            markers: points
                .mapIndexed((index, element) => MarkerDataPosition(
                    id: index.toString(),
                    position: element.latlng,
                    address: element.address))
                .toList());

  @override
  List<Object?> get props => [
        points.map((e) => e.latlng.toJson()).join(','),
        selectedOptions.join(','),
        couponCode,
        selectedService?.id
      ];
}

class StateWithActiveOrder extends MainBlocState {
  final Fragment$CurrentOrder currentOrder;
  final List<FullLocation> locations;
  final List<MarkerDataInterface> visibleMarkers;

  StateWithActiveOrder(this.currentOrder,
      {required this.locations, required this.visibleMarkers})
      : super(isInteractive: false, markers: visibleMarkers);

  @override
  List<Object?> get props => [
        currentOrder.toJson(),
        locations.map((e) => e.latlng.toJson()).join(',')
      ];
}

class OrderLooking extends StateWithActiveOrder {
  final Fragment$CurrentOrder order;

  OrderLooking(this.order)
      : super(order,
            locations: order.addresses
                .mapIndexed((index, e) => FullLocation(
                    latlng: order.points[index].toLatLng(),
                    address: order.addresses[index],
                    title: "title"))
                .toList(),
            visibleMarkers: order.points
                .mapIndexed((index, element) => MarkerDataPosition(
                    id: index.toString(),
                    position: element.toLatLng(),
                    address: order.addresses[index]))
                .toList());

  @override
  List<Object?> get props => [order.toJson()];
}

class OrderInProgress extends StateWithActiveOrder {
  final Fragment$CurrentOrder order;
  final LatLng? driverLocation;

  OrderInProgress(this.order, {this.driverLocation})
      : super(order, locations: [], visibleMarkers: []) {
    switch (order.status) {
      case Enum$OrderStatus.DriverAccepted:
      case Enum$OrderStatus.Arrived:
        markers = <MarkerDataInterface>[
          MarkerDataPosition(
              id: order.points[0].lat.toString(),
              position: LatLng(order.points[0].lat, order.points[0].lng),
              address: order.addresses[0])
        ];
        break;

      case Enum$OrderStatus.Started:
        markers = order.points
            .sublist(1)
            .mapIndexed<MarkerDataInterface>((index, point) =>
                MarkerDataPosition(
                    id: point.lat.toString(),
                    position: LatLng(point.lat, point.lng),
                    address: order.addresses[index]))
            .toList();
        break;

      default:
    }
    if (driverLocation != null) {
      markers = markers.followedBy([
        MarkerDataDriver(
            id: driverLocation!.latitude.toString(), position: driverLocation!)
      ]).toList();
    }
  }

  @override
  List<Object?> get props => [order.toJson(), driverLocation?.toJson()];
}

class OrderInvoice extends StateWithActiveOrder {
  final Fragment$CurrentOrder order;

  OrderInvoice(this.order)
      : super(order,
            locations: [],
            visibleMarkers: order.points
                .mapIndexed((index, element) => MarkerDataPosition(
                    id: index.toString(),
                    position: element.toLatLng(),
                    address: order.addresses[index]))
                .toList());

  @override
  List<Object?> get props => [order.toJson()];
}

class OrderReview extends StateWithActiveOrder {
  final Fragment$CurrentOrder order;

  OrderReview(this.order)
      : super(order,
            locations: [],
            visibleMarkers: order.points
                .mapIndexed((index, element) => MarkerDataPosition(
                    id: index.toString(),
                    position: element.toLatLng(),
                    address: order.addresses[index]))
                .toList());
}

class MainBloc extends Bloc<MainBlocEvent, MainBlocState> {
  MainBloc() : super(SelectingPoints(const [], const [], true)) {
    on<VersionStatusEvent>(((event, emit) => emit(RequireUpdateState())));

    on<ResetState>((event, emit) {
      emit(SelectingPoints(const [], const [], true));
    });

    on<ShowPreview>((event, emit) => emit(OrderPreview(
        points: event.points,
        selectedOptions: event.selectedOptions,
        couponCode: event.couponCode,
        directions: const [])));

    on<SelectService>((event, emit) => emit(OrderPreview(
        points: (state as OrderPreview).points,
        selectedOptions: (state as OrderPreview).selectedOptions,
        couponCode: (state as OrderPreview).couponCode,
        selectedService: event.service,
        directions: (state as OrderPreview).directions)));

    on<ShowPreviewDirections>((event, emit) {
      emit(OrderPreview(
          points: (state as OrderPreview).points,
          selectedOptions: (state as OrderPreview).selectedOptions,
          couponCode: (state as OrderPreview).couponCode,
          selectedService: (state as OrderPreview).selectedService,
          directions:
              event.directions.map((e) => LatLng(e.lat, e.lng)).toList()));
    });

    on<ProfileUpdated>((event, emit) {
      LatLng? driverLocation = event.driverLocation?.toLatLng();
      if (driverLocation == null &&
          state is OrderInProgress &&
          (state as OrderInProgress).driverLocation != null) {
        driverLocation = (state as OrderInProgress).driverLocation;
      }
      int bookings = event.profile.bookedOrders.first.count?.id ?? 0;
      if (event.profile.orders.isEmpty && state is StateWithActiveOrder) {
        emit(
            SelectingPoints(const [], const [], true, bookingsCount: bookings));
        return;
      }
      if (event.profile.orders.isEmpty &&
          (state is SelectingPoints || state is OrderPreview)) {
        return;
      }
      final order = event.profile.orders.first;
      switch (order.status) {
        case Enum$OrderStatus.Requested:
        case Enum$OrderStatus.NotFound:
        case Enum$OrderStatus.NoCloseFound:
        case Enum$OrderStatus.Found:
        case Enum$OrderStatus.Booked:
          emit(OrderLooking(order));
          return;

        case Enum$OrderStatus.DriverAccepted:
        case Enum$OrderStatus.Arrived:
        case Enum$OrderStatus.Started:
          emit(OrderInProgress(order, driverLocation: driverLocation));
          return;

        case Enum$OrderStatus.Expired:
        case Enum$OrderStatus.Finished:
        case Enum$OrderStatus.RiderCanceled:
        case Enum$OrderStatus.DriverCanceled:
        case Enum$OrderStatus.$unknown:
          if (state is! SelectingPoints || state is! OrderPreview) {
            emit(SelectingPoints(const [], const [], true,
                bookingsCount: bookings));
          }
          return;

        case Enum$OrderStatus.WaitingForPostPay:
        case Enum$OrderStatus.WaitingForPrePay:
          emit(OrderInvoice(order));
          return;

        case Enum$OrderStatus.WaitingForReview:
          emit(OrderReview(order));
          return;
      }
    });

    on<CurrentOrderUpdated>(((event, emit) {
      LatLng? driverLocation = event.driverLocation?.toLatLng();

      if (driverLocation == null &&
          state is OrderInProgress &&
          (state as OrderInProgress).driverLocation != null) {
        driverLocation = (state as OrderInProgress).driverLocation;
      }
      if (state is StateWithActiveOrder) {
        // ignore: no_leading_underscores_for_local_identifiers
        final _state = state as StateWithActiveOrder;
        if (_state.currentOrder.status == event.order.status &&
            _state.currentOrder.costAfterCoupon ==
                event.order.costAfterCoupon &&
            _state.currentOrder.riderLastSeenMessagesAt ==
                event.order.riderLastSeenMessagesAt) {
          return;
        }
      }
      switch (event.order.status) {
        case Enum$OrderStatus.Requested:
        case Enum$OrderStatus.NotFound:
        case Enum$OrderStatus.NoCloseFound:
        case Enum$OrderStatus.Found:
        case Enum$OrderStatus.Booked:
          emit(OrderLooking(event.order));
          return;

        case Enum$OrderStatus.DriverAccepted:
        case Enum$OrderStatus.Arrived:
        case Enum$OrderStatus.Started:
          emit(OrderInProgress(event.order, driverLocation: driverLocation));
          return;

        case Enum$OrderStatus.Expired:
        case Enum$OrderStatus.Finished:
        case Enum$OrderStatus.RiderCanceled:
        case Enum$OrderStatus.DriverCanceled:
        case Enum$OrderStatus.$unknown:
          emit(SelectingPoints(const [], const [], true, bookingsCount: 0));
          return;

        case Enum$OrderStatus.WaitingForPostPay:
        case Enum$OrderStatus.WaitingForPrePay:
          emit(OrderInvoice(event.order));
          return;

        case Enum$OrderStatus.WaitingForReview:
          emit(OrderReview(event.order));
          return;
      }
    }));

    on<DriverLocationUpdatedEvent>((event, emit) {
      if (state is OrderInProgress) {
        emit(OrderInProgress((state as OrderInProgress).currentOrder,
            driverLocation: LatLng(event.location.lat, event.location.lng)));
      }
    });
    on<SetDriversLocations>((event, emit) {
      if (state is SelectingPoints &&
          (state as SelectingPoints).driverLocations.length ==
              event.driversLocations.length) return;
      if (state is! SelectingPoints) return;
      emit(SelectingPoints(
          (state as SelectingPoints).points, event.driversLocations, false,
          bookingsCount: (state as SelectingPoints).bookingsCount));
    });
  }
}

abstract class MarkerDataInterface {
  String id;
  LatLng position;

  MarkerDataInterface({required this.id, required this.position});

  Marker toFlutterMapMarker();

  gmap.Marker toGoogleMarker(
      Uint8List carIconBytes, Uint8List positionIconBytes);
}

class MarkerDataPosition extends MarkerDataInterface {
  String address;

  MarkerDataPosition(
      {required this.address, required String id, required LatLng position})
      : super(id: id, position: position);

  @override
  gmap.Marker toGoogleMarker(
      Uint8List carIconBytes, Uint8List positionIconBytes) {
    return gmap.Marker(
        markerId: gmap.MarkerId(id),
        position: gmap.LatLng(position.latitude, position.longitude),
        icon: gmap.BitmapDescriptor.fromBytes(positionIconBytes));
  }

  @override
  Marker toFlutterMapMarker() {
    return Marker(
        width: 240,
        height: 63,
        point: position,
        anchorPos: AnchorPos.exactly(Anchor(120, 1)),
        builder: (context) => MarkerNew(address: address));
  }
}

class MarkerDataDriver extends MarkerDataInterface {
  String assetAddress = 'images/marker_taxi.png';

  MarkerDataDriver({required String id, required LatLng position})
      : super(id: id, position: position);

  @override
  gmap.Marker toGoogleMarker(
      Uint8List carIconBytes, Uint8List positionIconBytes) {
    return gmap.Marker(
        markerId: gmap.MarkerId(id),
        position: gmap.LatLng(position.latitude, position.longitude),
        icon: gmap.BitmapDescriptor.fromBytes(carIconBytes));
  }

  @override
  Marker toFlutterMapMarker() {
    return Marker(
        width: 48,
        height: 48,
        point: position,
        builder: (context) => Image.asset(assetAddress));
  }
}

extension RiderAddressToFullLocation on Fragment$Point {
  LatLng toLatLng() {
    return LatLng(lat, lng);
  }

  gmap.LatLng toGMapLatLng() {
    return gmap.LatLng(lat, lng);
  }
}
