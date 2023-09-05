import '../../schema.gql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:ridy/graphql/scalars/timestamp.dart';

class Fragment$Point {
  Fragment$Point({
    required this.lat,
    required this.lng,
  });

  factory Fragment$Point.fromJson(Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Fragment$Point(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
    );
  }

  final double lat;

  final double lng;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    return Object.hashAll([
      l$lat,
      l$lng,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Point) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Point on Fragment$Point {
  CopyWith$Fragment$Point<Fragment$Point> get copyWith =>
      CopyWith$Fragment$Point(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Point<TRes> {
  factory CopyWith$Fragment$Point(
    Fragment$Point instance,
    TRes Function(Fragment$Point) then,
  ) = _CopyWithImpl$Fragment$Point;

  factory CopyWith$Fragment$Point.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Point;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Fragment$Point<TRes>
    implements CopyWith$Fragment$Point<TRes> {
  _CopyWithImpl$Fragment$Point(
    this._instance,
    this._then,
  );

  final Fragment$Point _instance;

  final TRes Function(Fragment$Point) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Fragment$Point(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Fragment$Point<TRes>
    implements CopyWith$Fragment$Point<TRes> {
  _CopyWithStubImpl$Fragment$Point(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

const fragmentDefinitionPoint = FragmentDefinitionNode(
  name: NameNode(value: 'Point'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Point'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'lat'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lng'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPoint = DocumentNode(definitions: [
  fragmentDefinitionPoint,
]);

extension ClientExtension$Fragment$Point on graphql.GraphQLClient {
  void writeFragment$Point({
    required Fragment$Point data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Point',
            document: documentNodeFragmentPoint,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Point? readFragment$Point({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Point',
          document: documentNodeFragmentPoint,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Point.fromJson(result);
  }
}

class Fragment$CurrentOrder {
  Fragment$CurrentOrder({
    required this.id,
    required this.status,
    required this.points,
    this.driver,
    this.service,
    this.directions,
    this.etaPickup,
    required this.paidAmount,
    required this.costAfterCoupon,
    required this.costBest,
    required this.currency,
    required this.addresses,
    required this.waitMinutes,
    this.startTimestamp,
    required this.durationBest,
    required this.riderLastSeenMessagesAt,
    required this.conversations,
  });

  factory Fragment$CurrentOrder.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$points = json['points'];
    final l$driver = json['driver'];
    final l$service = json['service'];
    final l$directions = json['directions'];
    final l$etaPickup = json['etaPickup'];
    final l$paidAmount = json['paidAmount'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$costBest = json['costBest'];
    final l$currency = json['currency'];
    final l$addresses = json['addresses'];
    final l$waitMinutes = json['waitMinutes'];
    final l$startTimestamp = json['startTimestamp'];
    final l$durationBest = json['durationBest'];
    final l$riderLastSeenMessagesAt = json['riderLastSeenMessagesAt'];
    final l$conversations = json['conversations'];
    return Fragment$CurrentOrder(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      points: (l$points as List<dynamic>)
          .map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      driver: l$driver == null
          ? null
          : Fragment$CurrentOrder$driver.fromJson(
              (l$driver as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Fragment$CurrentOrder$service.fromJson(
              (l$service as Map<String, dynamic>)),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Fragment$CurrentOrder$directions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      etaPickup: l$etaPickup == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$etaPickup),
      paidAmount: (l$paidAmount as num).toDouble(),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      costBest: (l$costBest as num).toDouble(),
      currency: (l$currency as String),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      waitMinutes: (l$waitMinutes as int),
      startTimestamp: l$startTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$startTimestamp),
      durationBest: (l$durationBest as int),
      riderLastSeenMessagesAt:
          fromGraphQLTimestampToDartDateTime(l$riderLastSeenMessagesAt),
      conversations: (l$conversations as List<dynamic>)
          .map((e) => Fragment$CurrentOrder$conversations.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final List<Fragment$Point> points;

  final Fragment$CurrentOrder$driver? driver;

  final Fragment$CurrentOrder$service? service;

  final List<Fragment$CurrentOrder$directions>? directions;

  final DateTime? etaPickup;

  final double paidAmount;

  final double costAfterCoupon;

  final double costBest;

  final String currency;

  final List<String> addresses;

  final int waitMinutes;

  final DateTime? startTimestamp;

  final int durationBest;

  final DateTime riderLastSeenMessagesAt;

  final List<Fragment$CurrentOrder$conversations> conversations;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$etaPickup = etaPickup;
    _resultData['etaPickup'] = l$etaPickup == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$etaPickup);
    final l$paidAmount = paidAmount;
    _resultData['paidAmount'] = l$paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$waitMinutes = waitMinutes;
    _resultData['waitMinutes'] = l$waitMinutes;
    final l$startTimestamp = startTimestamp;
    _resultData['startTimestamp'] = l$startTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$startTimestamp);
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    _resultData['riderLastSeenMessagesAt'] =
        fromDartDateTimeToGraphQLTimestamp(l$riderLastSeenMessagesAt);
    final l$conversations = conversations;
    _resultData['conversations'] =
        l$conversations.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$points = points;
    final l$driver = driver;
    final l$service = service;
    final l$directions = directions;
    final l$etaPickup = etaPickup;
    final l$paidAmount = paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    final l$costBest = costBest;
    final l$currency = currency;
    final l$addresses = addresses;
    final l$waitMinutes = waitMinutes;
    final l$startTimestamp = startTimestamp;
    final l$durationBest = durationBest;
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    final l$conversations = conversations;
    return Object.hashAll([
      l$id,
      l$status,
      Object.hashAll(l$points.map((v) => v)),
      l$driver,
      l$service,
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      l$etaPickup,
      l$paidAmount,
      l$costAfterCoupon,
      l$costBest,
      l$currency,
      Object.hashAll(l$addresses.map((v) => v)),
      l$waitMinutes,
      l$startTimestamp,
      l$durationBest,
      l$riderLastSeenMessagesAt,
      Object.hashAll(l$conversations.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
        return false;
      }
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$directions = directions;
    final lOther$directions = other.directions;
    if (l$directions != null && lOther$directions != null) {
      if (l$directions.length != lOther$directions.length) {
        return false;
      }
      for (int i = 0; i < l$directions.length; i++) {
        final l$directions$entry = l$directions[i];
        final lOther$directions$entry = lOther$directions[i];
        if (l$directions$entry != lOther$directions$entry) {
          return false;
        }
      }
    } else if (l$directions != lOther$directions) {
      return false;
    }
    final l$etaPickup = etaPickup;
    final lOther$etaPickup = other.etaPickup;
    if (l$etaPickup != lOther$etaPickup) {
      return false;
    }
    final l$paidAmount = paidAmount;
    final lOther$paidAmount = other.paidAmount;
    if (l$paidAmount != lOther$paidAmount) {
      return false;
    }
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses.length != lOther$addresses.length) {
      return false;
    }
    for (int i = 0; i < l$addresses.length; i++) {
      final l$addresses$entry = l$addresses[i];
      final lOther$addresses$entry = lOther$addresses[i];
      if (l$addresses$entry != lOther$addresses$entry) {
        return false;
      }
    }
    final l$waitMinutes = waitMinutes;
    final lOther$waitMinutes = other.waitMinutes;
    if (l$waitMinutes != lOther$waitMinutes) {
      return false;
    }
    final l$startTimestamp = startTimestamp;
    final lOther$startTimestamp = other.startTimestamp;
    if (l$startTimestamp != lOther$startTimestamp) {
      return false;
    }
    final l$durationBest = durationBest;
    final lOther$durationBest = other.durationBest;
    if (l$durationBest != lOther$durationBest) {
      return false;
    }
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    final lOther$riderLastSeenMessagesAt = other.riderLastSeenMessagesAt;
    if (l$riderLastSeenMessagesAt != lOther$riderLastSeenMessagesAt) {
      return false;
    }
    final l$conversations = conversations;
    final lOther$conversations = other.conversations;
    if (l$conversations.length != lOther$conversations.length) {
      return false;
    }
    for (int i = 0; i < l$conversations.length; i++) {
      final l$conversations$entry = l$conversations[i];
      final lOther$conversations$entry = lOther$conversations[i];
      if (l$conversations$entry != lOther$conversations$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder on Fragment$CurrentOrder {
  CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder> get copyWith =>
      CopyWith$Fragment$CurrentOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CurrentOrder<TRes> {
  factory CopyWith$Fragment$CurrentOrder(
    Fragment$CurrentOrder instance,
    TRes Function(Fragment$CurrentOrder) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder;

  factory CopyWith$Fragment$CurrentOrder.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    List<Fragment$Point>? points,
    Fragment$CurrentOrder$driver? driver,
    Fragment$CurrentOrder$service? service,
    List<Fragment$CurrentOrder$directions>? directions,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? costBest,
    String? currency,
    List<String>? addresses,
    int? waitMinutes,
    DateTime? startTimestamp,
    int? durationBest,
    DateTime? riderLastSeenMessagesAt,
    List<Fragment$CurrentOrder$conversations>? conversations,
  });
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
  CopyWith$Fragment$CurrentOrder$driver<TRes> get driver;
  CopyWith$Fragment$CurrentOrder$service<TRes> get service;
  TRes directions(
      Iterable<Fragment$CurrentOrder$directions>? Function(
              Iterable<
                  CopyWith$Fragment$CurrentOrder$directions<
                      Fragment$CurrentOrder$directions>>?)
          _fn);
  TRes conversations(
      Iterable<Fragment$CurrentOrder$conversations> Function(
              Iterable<
                  CopyWith$Fragment$CurrentOrder$conversations<
                      Fragment$CurrentOrder$conversations>>)
          _fn);
}

class _CopyWithImpl$Fragment$CurrentOrder<TRes>
    implements CopyWith$Fragment$CurrentOrder<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder _instance;

  final TRes Function(Fragment$CurrentOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? points = _undefined,
    Object? driver = _undefined,
    Object? service = _undefined,
    Object? directions = _undefined,
    Object? etaPickup = _undefined,
    Object? paidAmount = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? costBest = _undefined,
    Object? currency = _undefined,
    Object? addresses = _undefined,
    Object? waitMinutes = _undefined,
    Object? startTimestamp = _undefined,
    Object? durationBest = _undefined,
    Object? riderLastSeenMessagesAt = _undefined,
    Object? conversations = _undefined,
  }) =>
      _then(Fragment$CurrentOrder(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Fragment$Point>),
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Fragment$CurrentOrder$driver?),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$CurrentOrder$service?),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<Fragment$CurrentOrder$directions>?),
        etaPickup: etaPickup == _undefined
            ? _instance.etaPickup
            : (etaPickup as DateTime?),
        paidAmount: paidAmount == _undefined || paidAmount == null
            ? _instance.paidAmount
            : (paidAmount as double),
        costAfterCoupon:
            costAfterCoupon == _undefined || costAfterCoupon == null
                ? _instance.costAfterCoupon
                : (costAfterCoupon as double),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        waitMinutes: waitMinutes == _undefined || waitMinutes == null
            ? _instance.waitMinutes
            : (waitMinutes as int),
        startTimestamp: startTimestamp == _undefined
            ? _instance.startTimestamp
            : (startTimestamp as DateTime?),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        riderLastSeenMessagesAt: riderLastSeenMessagesAt == _undefined ||
                riderLastSeenMessagesAt == null
            ? _instance.riderLastSeenMessagesAt
            : (riderLastSeenMessagesAt as DateTime),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations as List<Fragment$CurrentOrder$conversations>),
      ));
  TRes points(
          Iterable<Fragment$Point> Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) => CopyWith$Fragment$Point(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Fragment$CurrentOrder$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Fragment$CurrentOrder$driver.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$driver(
            local$driver, (e) => call(driver: e));
  }

  CopyWith$Fragment$CurrentOrder$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$CurrentOrder$service.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$service(
            local$service, (e) => call(service: e));
  }

  TRes directions(
          Iterable<Fragment$CurrentOrder$directions>? Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder$directions<
                          Fragment$CurrentOrder$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions
              ?.map((e) => CopyWith$Fragment$CurrentOrder$directions(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes conversations(
          Iterable<Fragment$CurrentOrder$conversations> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder$conversations<
                          Fragment$CurrentOrder$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations
              .map((e) => CopyWith$Fragment$CurrentOrder$conversations(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$CurrentOrder<TRes>
    implements CopyWith$Fragment$CurrentOrder<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    List<Fragment$Point>? points,
    Fragment$CurrentOrder$driver? driver,
    Fragment$CurrentOrder$service? service,
    List<Fragment$CurrentOrder$directions>? directions,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? costBest,
    String? currency,
    List<String>? addresses,
    int? waitMinutes,
    DateTime? startTimestamp,
    int? durationBest,
    DateTime? riderLastSeenMessagesAt,
    List<Fragment$CurrentOrder$conversations>? conversations,
  }) =>
      _res;
  points(_fn) => _res;
  CopyWith$Fragment$CurrentOrder$driver<TRes> get driver =>
      CopyWith$Fragment$CurrentOrder$driver.stub(_res);
  CopyWith$Fragment$CurrentOrder$service<TRes> get service =>
      CopyWith$Fragment$CurrentOrder$service.stub(_res);
  directions(_fn) => _res;
  conversations(_fn) => _res;
}

const fragmentDefinitionCurrentOrder = FragmentDefinitionNode(
  name: NameNode(value: 'CurrentOrder'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Order'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'points'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        )
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'driver'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'firstName'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'lastName'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'media'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'address'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            )
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'mobileNumber'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'carPlate'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'car'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            )
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'carColor'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            )
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'rating'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'service'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'media'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'address'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            )
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'prepayPercent'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'cancellationTotalFee'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'directions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: 'lat'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'lng'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'etaPickup'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'paidAmount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'costAfterCoupon'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'costBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'currency'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'addresses'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'waitMinutes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startTimestamp'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'durationBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'riderLastSeenMessagesAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'conversations'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'sentAt'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    ),
  ]),
);
const documentNodeFragmentCurrentOrder = DocumentNode(definitions: [
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);

extension ClientExtension$Fragment$CurrentOrder on graphql.GraphQLClient {
  void writeFragment$CurrentOrder({
    required Fragment$CurrentOrder data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CurrentOrder',
            document: documentNodeFragmentCurrentOrder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CurrentOrder? readFragment$CurrentOrder({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CurrentOrder',
          document: documentNodeFragmentCurrentOrder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CurrentOrder.fromJson(result);
  }
}

class Fragment$CurrentOrder$driver {
  Fragment$CurrentOrder$driver({
    required this.id,
    this.firstName,
    this.lastName,
    this.media,
    required this.mobileNumber,
    this.carPlate,
    this.car,
    this.carColor,
    this.rating,
  });

  factory Fragment$CurrentOrder$driver.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    final l$mobileNumber = json['mobileNumber'];
    final l$carPlate = json['carPlate'];
    final l$car = json['car'];
    final l$carColor = json['carColor'];
    final l$rating = json['rating'];
    return Fragment$CurrentOrder$driver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Fragment$CurrentOrder$driver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      mobileNumber: (l$mobileNumber as String),
      carPlate: (l$carPlate as String?),
      car: l$car == null
          ? null
          : Fragment$CurrentOrder$driver$car.fromJson(
              (l$car as Map<String, dynamic>)),
      carColor: l$carColor == null
          ? null
          : Fragment$CurrentOrder$driver$carColor.fromJson(
              (l$carColor as Map<String, dynamic>)),
      rating: (l$rating as int?),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Fragment$CurrentOrder$driver$media? media;

  final String mobileNumber;

  final String? carPlate;

  final Fragment$CurrentOrder$driver$car? car;

  final Fragment$CurrentOrder$driver$carColor? carColor;

  final int? rating;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$carPlate = carPlate;
    _resultData['carPlate'] = l$carPlate;
    final l$car = car;
    _resultData['car'] = l$car?.toJson();
    final l$carColor = carColor;
    _resultData['carColor'] = l$carColor?.toJson();
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$media = media;
    final l$mobileNumber = mobileNumber;
    final l$carPlate = carPlate;
    final l$car = car;
    final l$carColor = carColor;
    final l$rating = rating;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$media,
      l$mobileNumber,
      l$carPlate,
      l$car,
      l$carColor,
      l$rating,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$driver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (l$carPlate != lOther$carPlate) {
      return false;
    }
    final l$car = car;
    final lOther$car = other.car;
    if (l$car != lOther$car) {
      return false;
    }
    final l$carColor = carColor;
    final lOther$carColor = other.carColor;
    if (l$carColor != lOther$carColor) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$driver
    on Fragment$CurrentOrder$driver {
  CopyWith$Fragment$CurrentOrder$driver<Fragment$CurrentOrder$driver>
      get copyWith => CopyWith$Fragment$CurrentOrder$driver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$driver<TRes> {
  factory CopyWith$Fragment$CurrentOrder$driver(
    Fragment$CurrentOrder$driver instance,
    TRes Function(Fragment$CurrentOrder$driver) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$driver;

  factory CopyWith$Fragment$CurrentOrder$driver.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$driver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$CurrentOrder$driver$media? media,
    String? mobileNumber,
    String? carPlate,
    Fragment$CurrentOrder$driver$car? car,
    Fragment$CurrentOrder$driver$carColor? carColor,
    int? rating,
  });
  CopyWith$Fragment$CurrentOrder$driver$media<TRes> get media;
  CopyWith$Fragment$CurrentOrder$driver$car<TRes> get car;
  CopyWith$Fragment$CurrentOrder$driver$carColor<TRes> get carColor;
}

class _CopyWithImpl$Fragment$CurrentOrder$driver<TRes>
    implements CopyWith$Fragment$CurrentOrder$driver<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$driver(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$driver _instance;

  final TRes Function(Fragment$CurrentOrder$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? media = _undefined,
    Object? mobileNumber = _undefined,
    Object? carPlate = _undefined,
    Object? car = _undefined,
    Object? carColor = _undefined,
    Object? rating = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$driver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$CurrentOrder$driver$media?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        car: car == _undefined
            ? _instance.car
            : (car as Fragment$CurrentOrder$driver$car?),
        carColor: carColor == _undefined
            ? _instance.carColor
            : (carColor as Fragment$CurrentOrder$driver$carColor?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
      ));
  CopyWith$Fragment$CurrentOrder$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$CurrentOrder$driver$media.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$driver$media(
            local$media, (e) => call(media: e));
  }

  CopyWith$Fragment$CurrentOrder$driver$car<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Fragment$CurrentOrder$driver$car.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$driver$car(
            local$car, (e) => call(car: e));
  }

  CopyWith$Fragment$CurrentOrder$driver$carColor<TRes> get carColor {
    final local$carColor = _instance.carColor;
    return local$carColor == null
        ? CopyWith$Fragment$CurrentOrder$driver$carColor.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$driver$carColor(
            local$carColor, (e) => call(carColor: e));
  }
}

class _CopyWithStubImpl$Fragment$CurrentOrder$driver<TRes>
    implements CopyWith$Fragment$CurrentOrder$driver<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$driver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$CurrentOrder$driver$media? media,
    String? mobileNumber,
    String? carPlate,
    Fragment$CurrentOrder$driver$car? car,
    Fragment$CurrentOrder$driver$carColor? carColor,
    int? rating,
  }) =>
      _res;
  CopyWith$Fragment$CurrentOrder$driver$media<TRes> get media =>
      CopyWith$Fragment$CurrentOrder$driver$media.stub(_res);
  CopyWith$Fragment$CurrentOrder$driver$car<TRes> get car =>
      CopyWith$Fragment$CurrentOrder$driver$car.stub(_res);
  CopyWith$Fragment$CurrentOrder$driver$carColor<TRes> get carColor =>
      CopyWith$Fragment$CurrentOrder$driver$carColor.stub(_res);
}

class Fragment$CurrentOrder$driver$media {
  Fragment$CurrentOrder$driver$media({required this.address});

  factory Fragment$CurrentOrder$driver$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Fragment$CurrentOrder$driver$media(address: (l$address as String));
  }

  final String address;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    return Object.hashAll([l$address]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$driver$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$driver$media
    on Fragment$CurrentOrder$driver$media {
  CopyWith$Fragment$CurrentOrder$driver$media<
          Fragment$CurrentOrder$driver$media>
      get copyWith => CopyWith$Fragment$CurrentOrder$driver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$driver$media<TRes> {
  factory CopyWith$Fragment$CurrentOrder$driver$media(
    Fragment$CurrentOrder$driver$media instance,
    TRes Function(Fragment$CurrentOrder$driver$media) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$driver$media;

  factory CopyWith$Fragment$CurrentOrder$driver$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$driver$media;

  TRes call({String? address});
}

class _CopyWithImpl$Fragment$CurrentOrder$driver$media<TRes>
    implements CopyWith$Fragment$CurrentOrder$driver$media<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$driver$media(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$driver$media _instance;

  final TRes Function(Fragment$CurrentOrder$driver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Fragment$CurrentOrder$driver$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$driver$media<TRes>
    implements CopyWith$Fragment$CurrentOrder$driver$media<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$driver$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Fragment$CurrentOrder$driver$car {
  Fragment$CurrentOrder$driver$car({required this.name});

  factory Fragment$CurrentOrder$driver$car.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$CurrentOrder$driver$car(name: (l$name as String));
  }

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$driver$car) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$driver$car
    on Fragment$CurrentOrder$driver$car {
  CopyWith$Fragment$CurrentOrder$driver$car<Fragment$CurrentOrder$driver$car>
      get copyWith => CopyWith$Fragment$CurrentOrder$driver$car(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$driver$car<TRes> {
  factory CopyWith$Fragment$CurrentOrder$driver$car(
    Fragment$CurrentOrder$driver$car instance,
    TRes Function(Fragment$CurrentOrder$driver$car) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$driver$car;

  factory CopyWith$Fragment$CurrentOrder$driver$car.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$driver$car;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$CurrentOrder$driver$car<TRes>
    implements CopyWith$Fragment$CurrentOrder$driver$car<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$driver$car(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$driver$car _instance;

  final TRes Function(Fragment$CurrentOrder$driver$car) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Fragment$CurrentOrder$driver$car(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$driver$car<TRes>
    implements CopyWith$Fragment$CurrentOrder$driver$car<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$driver$car(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$CurrentOrder$driver$carColor {
  Fragment$CurrentOrder$driver$carColor({required this.name});

  factory Fragment$CurrentOrder$driver$carColor.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Fragment$CurrentOrder$driver$carColor(name: (l$name as String));
  }

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$driver$carColor) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$driver$carColor
    on Fragment$CurrentOrder$driver$carColor {
  CopyWith$Fragment$CurrentOrder$driver$carColor<
          Fragment$CurrentOrder$driver$carColor>
      get copyWith => CopyWith$Fragment$CurrentOrder$driver$carColor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$driver$carColor<TRes> {
  factory CopyWith$Fragment$CurrentOrder$driver$carColor(
    Fragment$CurrentOrder$driver$carColor instance,
    TRes Function(Fragment$CurrentOrder$driver$carColor) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$driver$carColor;

  factory CopyWith$Fragment$CurrentOrder$driver$carColor.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$driver$carColor;

  TRes call({String? name});
}

class _CopyWithImpl$Fragment$CurrentOrder$driver$carColor<TRes>
    implements CopyWith$Fragment$CurrentOrder$driver$carColor<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$driver$carColor(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$driver$carColor _instance;

  final TRes Function(Fragment$CurrentOrder$driver$carColor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Fragment$CurrentOrder$driver$carColor(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$driver$carColor<TRes>
    implements CopyWith$Fragment$CurrentOrder$driver$carColor<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$driver$carColor(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Fragment$CurrentOrder$service {
  Fragment$CurrentOrder$service({
    required this.media,
    required this.name,
    required this.prepayPercent,
    required this.cancellationTotalFee,
  });

  factory Fragment$CurrentOrder$service.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$name = json['name'];
    final l$prepayPercent = json['prepayPercent'];
    final l$cancellationTotalFee = json['cancellationTotalFee'];
    return Fragment$CurrentOrder$service(
      media: Fragment$CurrentOrder$service$media.fromJson(
          (l$media as Map<String, dynamic>)),
      name: (l$name as String),
      prepayPercent: (l$prepayPercent as int),
      cancellationTotalFee: (l$cancellationTotalFee as num).toDouble(),
    );
  }

  final Fragment$CurrentOrder$service$media media;

  final String name;

  final int prepayPercent;

  final double cancellationTotalFee;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$prepayPercent = prepayPercent;
    _resultData['prepayPercent'] = l$prepayPercent;
    final l$cancellationTotalFee = cancellationTotalFee;
    _resultData['cancellationTotalFee'] = l$cancellationTotalFee;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$name = name;
    final l$prepayPercent = prepayPercent;
    final l$cancellationTotalFee = cancellationTotalFee;
    return Object.hashAll([
      l$media,
      l$name,
      l$prepayPercent,
      l$cancellationTotalFee,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$prepayPercent = prepayPercent;
    final lOther$prepayPercent = other.prepayPercent;
    if (l$prepayPercent != lOther$prepayPercent) {
      return false;
    }
    final l$cancellationTotalFee = cancellationTotalFee;
    final lOther$cancellationTotalFee = other.cancellationTotalFee;
    if (l$cancellationTotalFee != lOther$cancellationTotalFee) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$service
    on Fragment$CurrentOrder$service {
  CopyWith$Fragment$CurrentOrder$service<Fragment$CurrentOrder$service>
      get copyWith => CopyWith$Fragment$CurrentOrder$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$service<TRes> {
  factory CopyWith$Fragment$CurrentOrder$service(
    Fragment$CurrentOrder$service instance,
    TRes Function(Fragment$CurrentOrder$service) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$service;

  factory CopyWith$Fragment$CurrentOrder$service.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$service;

  TRes call({
    Fragment$CurrentOrder$service$media? media,
    String? name,
    int? prepayPercent,
    double? cancellationTotalFee,
  });
  CopyWith$Fragment$CurrentOrder$service$media<TRes> get media;
}

class _CopyWithImpl$Fragment$CurrentOrder$service<TRes>
    implements CopyWith$Fragment$CurrentOrder$service<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$service(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$service _instance;

  final TRes Function(Fragment$CurrentOrder$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? name = _undefined,
    Object? prepayPercent = _undefined,
    Object? cancellationTotalFee = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$service(
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Fragment$CurrentOrder$service$media),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        prepayPercent: prepayPercent == _undefined || prepayPercent == null
            ? _instance.prepayPercent
            : (prepayPercent as int),
        cancellationTotalFee:
            cancellationTotalFee == _undefined || cancellationTotalFee == null
                ? _instance.cancellationTotalFee
                : (cancellationTotalFee as double),
      ));
  CopyWith$Fragment$CurrentOrder$service$media<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Fragment$CurrentOrder$service$media(
        local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$CurrentOrder$service<TRes>
    implements CopyWith$Fragment$CurrentOrder$service<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$service(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder$service$media? media,
    String? name,
    int? prepayPercent,
    double? cancellationTotalFee,
  }) =>
      _res;
  CopyWith$Fragment$CurrentOrder$service$media<TRes> get media =>
      CopyWith$Fragment$CurrentOrder$service$media.stub(_res);
}

class Fragment$CurrentOrder$service$media {
  Fragment$CurrentOrder$service$media({required this.address});

  factory Fragment$CurrentOrder$service$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Fragment$CurrentOrder$service$media(address: (l$address as String));
  }

  final String address;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    return Object.hashAll([l$address]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$service$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$service$media
    on Fragment$CurrentOrder$service$media {
  CopyWith$Fragment$CurrentOrder$service$media<
          Fragment$CurrentOrder$service$media>
      get copyWith => CopyWith$Fragment$CurrentOrder$service$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$service$media<TRes> {
  factory CopyWith$Fragment$CurrentOrder$service$media(
    Fragment$CurrentOrder$service$media instance,
    TRes Function(Fragment$CurrentOrder$service$media) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$service$media;

  factory CopyWith$Fragment$CurrentOrder$service$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$service$media;

  TRes call({String? address});
}

class _CopyWithImpl$Fragment$CurrentOrder$service$media<TRes>
    implements CopyWith$Fragment$CurrentOrder$service$media<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$service$media(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$service$media _instance;

  final TRes Function(Fragment$CurrentOrder$service$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Fragment$CurrentOrder$service$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$service$media<TRes>
    implements CopyWith$Fragment$CurrentOrder$service$media<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$service$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Fragment$CurrentOrder$directions implements Fragment$Point {
  Fragment$CurrentOrder$directions({
    required this.lat,
    required this.lng,
  });

  factory Fragment$CurrentOrder$directions.fromJson(Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Fragment$CurrentOrder$directions(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
    );
  }

  final double lat;

  final double lng;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    return Object.hashAll([
      l$lat,
      l$lng,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$directions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$directions
    on Fragment$CurrentOrder$directions {
  CopyWith$Fragment$CurrentOrder$directions<Fragment$CurrentOrder$directions>
      get copyWith => CopyWith$Fragment$CurrentOrder$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$directions<TRes> {
  factory CopyWith$Fragment$CurrentOrder$directions(
    Fragment$CurrentOrder$directions instance,
    TRes Function(Fragment$CurrentOrder$directions) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$directions;

  factory CopyWith$Fragment$CurrentOrder$directions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$directions;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Fragment$CurrentOrder$directions<TRes>
    implements CopyWith$Fragment$CurrentOrder$directions<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$directions(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$directions _instance;

  final TRes Function(Fragment$CurrentOrder$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$directions<TRes>
    implements CopyWith$Fragment$CurrentOrder$directions<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Fragment$CurrentOrder$conversations {
  Fragment$CurrentOrder$conversations({required this.sentAt});

  factory Fragment$CurrentOrder$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$sentAt = json['sentAt'];
    return Fragment$CurrentOrder$conversations(
        sentAt: fromGraphQLTimestampToDartDateTime(l$sentAt));
  }

  final DateTime sentAt;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sentAt = sentAt;
    _resultData['sentAt'] = fromDartDateTimeToGraphQLTimestamp(l$sentAt);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sentAt = sentAt;
    return Object.hashAll([l$sentAt]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$conversations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sentAt = sentAt;
    final lOther$sentAt = other.sentAt;
    if (l$sentAt != lOther$sentAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$conversations
    on Fragment$CurrentOrder$conversations {
  CopyWith$Fragment$CurrentOrder$conversations<
          Fragment$CurrentOrder$conversations>
      get copyWith => CopyWith$Fragment$CurrentOrder$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$conversations<TRes> {
  factory CopyWith$Fragment$CurrentOrder$conversations(
    Fragment$CurrentOrder$conversations instance,
    TRes Function(Fragment$CurrentOrder$conversations) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$conversations;

  factory CopyWith$Fragment$CurrentOrder$conversations.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$conversations;

  TRes call({DateTime? sentAt});
}

class _CopyWithImpl$Fragment$CurrentOrder$conversations<TRes>
    implements CopyWith$Fragment$CurrentOrder$conversations<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$conversations(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$conversations _instance;

  final TRes Function(Fragment$CurrentOrder$conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sentAt = _undefined}) =>
      _then(Fragment$CurrentOrder$conversations(
          sentAt: sentAt == _undefined || sentAt == null
              ? _instance.sentAt
              : (sentAt as DateTime)));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$conversations<TRes>
    implements CopyWith$Fragment$CurrentOrder$conversations<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$conversations(this._res);

  TRes _res;

  call({DateTime? sentAt}) => _res;
}

class Fragment$ChatMessage {
  Fragment$ChatMessage({
    required this.id,
    required this.content,
    required this.sentByDriver,
    required this.sentAt,
  });

  factory Fragment$ChatMessage.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$content = json['content'];
    final l$sentByDriver = json['sentByDriver'];
    final l$sentAt = json['sentAt'];
    return Fragment$ChatMessage(
      id: (l$id as String),
      content: (l$content as String),
      sentByDriver: (l$sentByDriver as bool),
      sentAt: fromGraphQLTimestampToDartDateTime(l$sentAt),
    );
  }

  final String id;

  final String content;

  final bool sentByDriver;

  final DateTime sentAt;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$sentByDriver = sentByDriver;
    _resultData['sentByDriver'] = l$sentByDriver;
    final l$sentAt = sentAt;
    _resultData['sentAt'] = fromDartDateTimeToGraphQLTimestamp(l$sentAt);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$content = content;
    final l$sentByDriver = sentByDriver;
    final l$sentAt = sentAt;
    return Object.hashAll([
      l$id,
      l$content,
      l$sentByDriver,
      l$sentAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ChatMessage) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$sentByDriver = sentByDriver;
    final lOther$sentByDriver = other.sentByDriver;
    if (l$sentByDriver != lOther$sentByDriver) {
      return false;
    }
    final l$sentAt = sentAt;
    final lOther$sentAt = other.sentAt;
    if (l$sentAt != lOther$sentAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ChatMessage on Fragment$ChatMessage {
  CopyWith$Fragment$ChatMessage<Fragment$ChatMessage> get copyWith =>
      CopyWith$Fragment$ChatMessage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatMessage<TRes> {
  factory CopyWith$Fragment$ChatMessage(
    Fragment$ChatMessage instance,
    TRes Function(Fragment$ChatMessage) then,
  ) = _CopyWithImpl$Fragment$ChatMessage;

  factory CopyWith$Fragment$ChatMessage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatMessage;

  TRes call({
    String? id,
    String? content,
    bool? sentByDriver,
    DateTime? sentAt,
  });
}

class _CopyWithImpl$Fragment$ChatMessage<TRes>
    implements CopyWith$Fragment$ChatMessage<TRes> {
  _CopyWithImpl$Fragment$ChatMessage(
    this._instance,
    this._then,
  );

  final Fragment$ChatMessage _instance;

  final TRes Function(Fragment$ChatMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? content = _undefined,
    Object? sentByDriver = _undefined,
    Object? sentAt = _undefined,
  }) =>
      _then(Fragment$ChatMessage(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        sentByDriver: sentByDriver == _undefined || sentByDriver == null
            ? _instance.sentByDriver
            : (sentByDriver as bool),
        sentAt: sentAt == _undefined || sentAt == null
            ? _instance.sentAt
            : (sentAt as DateTime),
      ));
}

class _CopyWithStubImpl$Fragment$ChatMessage<TRes>
    implements CopyWith$Fragment$ChatMessage<TRes> {
  _CopyWithStubImpl$Fragment$ChatMessage(this._res);

  TRes _res;

  call({
    String? id,
    String? content,
    bool? sentByDriver,
    DateTime? sentAt,
  }) =>
      _res;
}

const fragmentDefinitionChatMessage = FragmentDefinitionNode(
  name: NameNode(value: 'ChatMessage'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderMessage'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'sentByDriver'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'sentAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentChatMessage = DocumentNode(definitions: [
  fragmentDefinitionChatMessage,
]);

extension ClientExtension$Fragment$ChatMessage on graphql.GraphQLClient {
  void writeFragment$ChatMessage({
    required Fragment$ChatMessage data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ChatMessage',
            document: documentNodeFragmentChatMessage,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ChatMessage? readFragment$ChatMessage({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ChatMessage',
          document: documentNodeFragmentChatMessage,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ChatMessage.fromJson(result);
  }
}

class Fragment$ChatDriver {
  Fragment$ChatDriver({
    required this.id,
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.media,
  });

  factory Fragment$ChatDriver.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$media = json['media'];
    return Fragment$ChatDriver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      media: l$media == null
          ? null
          : Fragment$ChatDriver$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final Fragment$ChatDriver$media? media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$mobileNumber = mobileNumber;
    final l$media = media;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$mobileNumber,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ChatDriver) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ChatDriver on Fragment$ChatDriver {
  CopyWith$Fragment$ChatDriver<Fragment$ChatDriver> get copyWith =>
      CopyWith$Fragment$ChatDriver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatDriver<TRes> {
  factory CopyWith$Fragment$ChatDriver(
    Fragment$ChatDriver instance,
    TRes Function(Fragment$ChatDriver) then,
  ) = _CopyWithImpl$Fragment$ChatDriver;

  factory CopyWith$Fragment$ChatDriver.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatDriver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? mobileNumber,
    Fragment$ChatDriver$media? media,
  });
  CopyWith$Fragment$ChatDriver$media<TRes> get media;
}

class _CopyWithImpl$Fragment$ChatDriver<TRes>
    implements CopyWith$Fragment$ChatDriver<TRes> {
  _CopyWithImpl$Fragment$ChatDriver(
    this._instance,
    this._then,
  );

  final Fragment$ChatDriver _instance;

  final TRes Function(Fragment$ChatDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Fragment$ChatDriver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$ChatDriver$media?),
      ));
  CopyWith$Fragment$ChatDriver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$ChatDriver$media.stub(_then(_instance))
        : CopyWith$Fragment$ChatDriver$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$ChatDriver<TRes>
    implements CopyWith$Fragment$ChatDriver<TRes> {
  _CopyWithStubImpl$Fragment$ChatDriver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? mobileNumber,
    Fragment$ChatDriver$media? media,
  }) =>
      _res;
  CopyWith$Fragment$ChatDriver$media<TRes> get media =>
      CopyWith$Fragment$ChatDriver$media.stub(_res);
}

const fragmentDefinitionChatDriver = FragmentDefinitionNode(
  name: NameNode(value: 'ChatDriver'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Driver'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'firstName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mobileNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'address'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    ),
  ]),
);
const documentNodeFragmentChatDriver = DocumentNode(definitions: [
  fragmentDefinitionChatDriver,
]);

extension ClientExtension$Fragment$ChatDriver on graphql.GraphQLClient {
  void writeFragment$ChatDriver({
    required Fragment$ChatDriver data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ChatDriver',
            document: documentNodeFragmentChatDriver,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ChatDriver? readFragment$ChatDriver({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ChatDriver',
          document: documentNodeFragmentChatDriver,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ChatDriver.fromJson(result);
  }
}

class Fragment$ChatDriver$media {
  Fragment$ChatDriver$media({required this.address});

  factory Fragment$ChatDriver$media.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    return Fragment$ChatDriver$media(address: (l$address as String));
  }

  final String address;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    return Object.hashAll([l$address]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ChatDriver$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ChatDriver$media
    on Fragment$ChatDriver$media {
  CopyWith$Fragment$ChatDriver$media<Fragment$ChatDriver$media> get copyWith =>
      CopyWith$Fragment$ChatDriver$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatDriver$media<TRes> {
  factory CopyWith$Fragment$ChatDriver$media(
    Fragment$ChatDriver$media instance,
    TRes Function(Fragment$ChatDriver$media) then,
  ) = _CopyWithImpl$Fragment$ChatDriver$media;

  factory CopyWith$Fragment$ChatDriver$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatDriver$media;

  TRes call({String? address});
}

class _CopyWithImpl$Fragment$ChatDriver$media<TRes>
    implements CopyWith$Fragment$ChatDriver$media<TRes> {
  _CopyWithImpl$Fragment$ChatDriver$media(
    this._instance,
    this._then,
  );

  final Fragment$ChatDriver$media _instance;

  final TRes Function(Fragment$ChatDriver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) => _then(Fragment$ChatDriver$media(
      address: address == _undefined || address == null
          ? _instance.address
          : (address as String)));
}

class _CopyWithStubImpl$Fragment$ChatDriver$media<TRes>
    implements CopyWith$Fragment$ChatDriver$media<TRes> {
  _CopyWithStubImpl$Fragment$ChatDriver$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Fragment$ChatRider {
  Fragment$ChatRider({
    required this.id,
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.media,
  });

  factory Fragment$ChatRider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$media = json['media'];
    return Fragment$ChatRider(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      media: l$media == null
          ? null
          : Fragment$ChatRider$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final Fragment$ChatRider$media? media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$mobileNumber = mobileNumber;
    final l$media = media;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$mobileNumber,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ChatRider) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ChatRider on Fragment$ChatRider {
  CopyWith$Fragment$ChatRider<Fragment$ChatRider> get copyWith =>
      CopyWith$Fragment$ChatRider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatRider<TRes> {
  factory CopyWith$Fragment$ChatRider(
    Fragment$ChatRider instance,
    TRes Function(Fragment$ChatRider) then,
  ) = _CopyWithImpl$Fragment$ChatRider;

  factory CopyWith$Fragment$ChatRider.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatRider;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? mobileNumber,
    Fragment$ChatRider$media? media,
  });
  CopyWith$Fragment$ChatRider$media<TRes> get media;
}

class _CopyWithImpl$Fragment$ChatRider<TRes>
    implements CopyWith$Fragment$ChatRider<TRes> {
  _CopyWithImpl$Fragment$ChatRider(
    this._instance,
    this._then,
  );

  final Fragment$ChatRider _instance;

  final TRes Function(Fragment$ChatRider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Fragment$ChatRider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$ChatRider$media?),
      ));
  CopyWith$Fragment$ChatRider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$ChatRider$media.stub(_then(_instance))
        : CopyWith$Fragment$ChatRider$media(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$ChatRider<TRes>
    implements CopyWith$Fragment$ChatRider<TRes> {
  _CopyWithStubImpl$Fragment$ChatRider(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? mobileNumber,
    Fragment$ChatRider$media? media,
  }) =>
      _res;
  CopyWith$Fragment$ChatRider$media<TRes> get media =>
      CopyWith$Fragment$ChatRider$media.stub(_res);
}

const fragmentDefinitionChatRider = FragmentDefinitionNode(
  name: NameNode(value: 'ChatRider'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Rider'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'firstName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mobileNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'address'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    ),
  ]),
);
const documentNodeFragmentChatRider = DocumentNode(definitions: [
  fragmentDefinitionChatRider,
]);

extension ClientExtension$Fragment$ChatRider on graphql.GraphQLClient {
  void writeFragment$ChatRider({
    required Fragment$ChatRider data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ChatRider',
            document: documentNodeFragmentChatRider,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ChatRider? readFragment$ChatRider({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ChatRider',
          document: documentNodeFragmentChatRider,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ChatRider.fromJson(result);
  }
}

class Fragment$ChatRider$media {
  Fragment$ChatRider$media({required this.address});

  factory Fragment$ChatRider$media.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    return Fragment$ChatRider$media(address: (l$address as String));
  }

  final String address;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    return Object.hashAll([l$address]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ChatRider$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ChatRider$media
    on Fragment$ChatRider$media {
  CopyWith$Fragment$ChatRider$media<Fragment$ChatRider$media> get copyWith =>
      CopyWith$Fragment$ChatRider$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatRider$media<TRes> {
  factory CopyWith$Fragment$ChatRider$media(
    Fragment$ChatRider$media instance,
    TRes Function(Fragment$ChatRider$media) then,
  ) = _CopyWithImpl$Fragment$ChatRider$media;

  factory CopyWith$Fragment$ChatRider$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatRider$media;

  TRes call({String? address});
}

class _CopyWithImpl$Fragment$ChatRider$media<TRes>
    implements CopyWith$Fragment$ChatRider$media<TRes> {
  _CopyWithImpl$Fragment$ChatRider$media(
    this._instance,
    this._then,
  );

  final Fragment$ChatRider$media _instance;

  final TRes Function(Fragment$ChatRider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) => _then(Fragment$ChatRider$media(
      address: address == _undefined || address == null
          ? _instance.address
          : (address as String)));
}

class _CopyWithStubImpl$Fragment$ChatRider$media<TRes>
    implements CopyWith$Fragment$ChatRider$media<TRes> {
  _CopyWithStubImpl$Fragment$ChatRider$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}
