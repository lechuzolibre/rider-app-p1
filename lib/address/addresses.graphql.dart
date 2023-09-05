import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetAddresses {
  Query$GetAddresses({required this.riderAddresses});

  factory Query$GetAddresses.fromJson(Map<String, dynamic> json) {
    final l$riderAddresses = json['riderAddresses'];
    return Query$GetAddresses(
        riderAddresses: (l$riderAddresses as List<dynamic>)
            .map((e) => Query$GetAddresses$riderAddresses.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$GetAddresses$riderAddresses> riderAddresses;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$riderAddresses = riderAddresses;
    _resultData['riderAddresses'] =
        l$riderAddresses.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$riderAddresses = riderAddresses;
    return Object.hashAll([Object.hashAll(l$riderAddresses.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAddresses) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$riderAddresses = riderAddresses;
    final lOther$riderAddresses = other.riderAddresses;
    if (l$riderAddresses.length != lOther$riderAddresses.length) {
      return false;
    }
    for (int i = 0; i < l$riderAddresses.length; i++) {
      final l$riderAddresses$entry = l$riderAddresses[i];
      final lOther$riderAddresses$entry = lOther$riderAddresses[i];
      if (l$riderAddresses$entry != lOther$riderAddresses$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAddresses on Query$GetAddresses {
  CopyWith$Query$GetAddresses<Query$GetAddresses> get copyWith =>
      CopyWith$Query$GetAddresses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAddresses<TRes> {
  factory CopyWith$Query$GetAddresses(
    Query$GetAddresses instance,
    TRes Function(Query$GetAddresses) then,
  ) = _CopyWithImpl$Query$GetAddresses;

  factory CopyWith$Query$GetAddresses.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAddresses;

  TRes call({List<Query$GetAddresses$riderAddresses>? riderAddresses});
  TRes riderAddresses(
      Iterable<Query$GetAddresses$riderAddresses> Function(
              Iterable<
                  CopyWith$Query$GetAddresses$riderAddresses<
                      Query$GetAddresses$riderAddresses>>)
          _fn);
}

class _CopyWithImpl$Query$GetAddresses<TRes>
    implements CopyWith$Query$GetAddresses<TRes> {
  _CopyWithImpl$Query$GetAddresses(
    this._instance,
    this._then,
  );

  final Query$GetAddresses _instance;

  final TRes Function(Query$GetAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? riderAddresses = _undefined}) => _then(Query$GetAddresses(
      riderAddresses: riderAddresses == _undefined || riderAddresses == null
          ? _instance.riderAddresses
          : (riderAddresses as List<Query$GetAddresses$riderAddresses>)));
  TRes riderAddresses(
          Iterable<Query$GetAddresses$riderAddresses> Function(
                  Iterable<
                      CopyWith$Query$GetAddresses$riderAddresses<
                          Query$GetAddresses$riderAddresses>>)
              _fn) =>
      call(
          riderAddresses: _fn(_instance.riderAddresses
              .map((e) => CopyWith$Query$GetAddresses$riderAddresses(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAddresses<TRes>
    implements CopyWith$Query$GetAddresses<TRes> {
  _CopyWithStubImpl$Query$GetAddresses(this._res);

  TRes _res;

  call({List<Query$GetAddresses$riderAddresses>? riderAddresses}) => _res;
  riderAddresses(_fn) => _res;
}

const documentNodeQueryGetAddresses = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAddresses'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'riderAddresses'),
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'details'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'location'),
            alias: null,
            arguments: [],
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
          ),
        ]),
      )
    ]),
  ),
]);
Query$GetAddresses _parserFn$Query$GetAddresses(Map<String, dynamic> data) =>
    Query$GetAddresses.fromJson(data);
typedef OnQueryComplete$Query$GetAddresses = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAddresses?,
);

class Options$Query$GetAddresses
    extends graphql.QueryOptions<Query$GetAddresses> {
  Options$Query$GetAddresses({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAddresses? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAddresses? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetAddresses(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAddresses,
          parserFn: _parserFn$Query$GetAddresses,
        );

  final OnQueryComplete$Query$GetAddresses? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAddresses
    extends graphql.WatchQueryOptions<Query$GetAddresses> {
  WatchOptions$Query$GetAddresses({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAddresses? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetAddresses,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAddresses,
        );
}

class FetchMoreOptions$Query$GetAddresses extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAddresses(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetAddresses,
        );
}

extension ClientExtension$Query$GetAddresses on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAddresses>> query$GetAddresses(
          [Options$Query$GetAddresses? options]) async =>
      await this.query(options ?? Options$Query$GetAddresses());
  graphql.ObservableQuery<Query$GetAddresses> watchQuery$GetAddresses(
          [WatchOptions$Query$GetAddresses? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAddresses());
  void writeQuery$GetAddresses({
    required Query$GetAddresses data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetAddresses)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAddresses? readQuery$GetAddresses({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAddresses)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAddresses.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAddresses> useQuery$GetAddresses(
        [Options$Query$GetAddresses? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAddresses());
graphql.ObservableQuery<Query$GetAddresses> useWatchQuery$GetAddresses(
        [WatchOptions$Query$GetAddresses? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetAddresses());

class Query$GetAddresses$Widget
    extends graphql_flutter.Query<Query$GetAddresses> {
  Query$GetAddresses$Widget({
    widgets.Key? key,
    Options$Query$GetAddresses? options,
    required graphql_flutter.QueryBuilder<Query$GetAddresses> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAddresses(),
          builder: builder,
        );
}

class Query$GetAddresses$riderAddresses {
  Query$GetAddresses$riderAddresses({
    required this.id,
    required this.title,
    required this.type,
    required this.details,
    required this.location,
  });

  factory Query$GetAddresses$riderAddresses.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$details = json['details'];
    final l$location = json['location'];
    return Query$GetAddresses$riderAddresses(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$RiderAddressType((l$type as String)),
      details: (l$details as String),
      location: Query$GetAddresses$riderAddresses$location.fromJson(
          (l$location as Map<String, dynamic>)),
    );
  }

  final String id;

  final String title;

  final Enum$RiderAddressType type;

  final String details;

  final Query$GetAddresses$riderAddresses$location location;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$RiderAddressType(l$type);
    final l$details = details;
    _resultData['details'] = l$details;
    final l$location = location;
    _resultData['location'] = l$location.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$details = details;
    final l$location = location;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$details,
      l$location,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAddresses$riderAddresses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAddresses$riderAddresses
    on Query$GetAddresses$riderAddresses {
  CopyWith$Query$GetAddresses$riderAddresses<Query$GetAddresses$riderAddresses>
      get copyWith => CopyWith$Query$GetAddresses$riderAddresses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAddresses$riderAddresses<TRes> {
  factory CopyWith$Query$GetAddresses$riderAddresses(
    Query$GetAddresses$riderAddresses instance,
    TRes Function(Query$GetAddresses$riderAddresses) then,
  ) = _CopyWithImpl$Query$GetAddresses$riderAddresses;

  factory CopyWith$Query$GetAddresses$riderAddresses.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAddresses$riderAddresses;

  TRes call({
    String? id,
    String? title,
    Enum$RiderAddressType? type,
    String? details,
    Query$GetAddresses$riderAddresses$location? location,
  });
  CopyWith$Query$GetAddresses$riderAddresses$location<TRes> get location;
}

class _CopyWithImpl$Query$GetAddresses$riderAddresses<TRes>
    implements CopyWith$Query$GetAddresses$riderAddresses<TRes> {
  _CopyWithImpl$Query$GetAddresses$riderAddresses(
    this._instance,
    this._then,
  );

  final Query$GetAddresses$riderAddresses _instance;

  final TRes Function(Query$GetAddresses$riderAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? details = _undefined,
    Object? location = _undefined,
  }) =>
      _then(Query$GetAddresses$riderAddresses(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$RiderAddressType),
        details: details == _undefined || details == null
            ? _instance.details
            : (details as String),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as Query$GetAddresses$riderAddresses$location),
      ));
  CopyWith$Query$GetAddresses$riderAddresses$location<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Query$GetAddresses$riderAddresses$location(
        local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Query$GetAddresses$riderAddresses<TRes>
    implements CopyWith$Query$GetAddresses$riderAddresses<TRes> {
  _CopyWithStubImpl$Query$GetAddresses$riderAddresses(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$RiderAddressType? type,
    String? details,
    Query$GetAddresses$riderAddresses$location? location,
  }) =>
      _res;
  CopyWith$Query$GetAddresses$riderAddresses$location<TRes> get location =>
      CopyWith$Query$GetAddresses$riderAddresses$location.stub(_res);
}

class Query$GetAddresses$riderAddresses$location {
  Query$GetAddresses$riderAddresses$location({
    required this.lat,
    required this.lng,
  });

  factory Query$GetAddresses$riderAddresses$location.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$GetAddresses$riderAddresses$location(
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
    if (!(other is Query$GetAddresses$riderAddresses$location) ||
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

extension UtilityExtension$Query$GetAddresses$riderAddresses$location
    on Query$GetAddresses$riderAddresses$location {
  CopyWith$Query$GetAddresses$riderAddresses$location<
          Query$GetAddresses$riderAddresses$location>
      get copyWith => CopyWith$Query$GetAddresses$riderAddresses$location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAddresses$riderAddresses$location<TRes> {
  factory CopyWith$Query$GetAddresses$riderAddresses$location(
    Query$GetAddresses$riderAddresses$location instance,
    TRes Function(Query$GetAddresses$riderAddresses$location) then,
  ) = _CopyWithImpl$Query$GetAddresses$riderAddresses$location;

  factory CopyWith$Query$GetAddresses$riderAddresses$location.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAddresses$riderAddresses$location;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$GetAddresses$riderAddresses$location<TRes>
    implements CopyWith$Query$GetAddresses$riderAddresses$location<TRes> {
  _CopyWithImpl$Query$GetAddresses$riderAddresses$location(
    this._instance,
    this._then,
  );

  final Query$GetAddresses$riderAddresses$location _instance;

  final TRes Function(Query$GetAddresses$riderAddresses$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$GetAddresses$riderAddresses$location(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$GetAddresses$riderAddresses$location<TRes>
    implements CopyWith$Query$GetAddresses$riderAddresses$location<TRes> {
  _CopyWithStubImpl$Query$GetAddresses$riderAddresses$location(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Variables$Mutation$CreateAddress {
  factory Variables$Mutation$CreateAddress(
          {required Input$CreateRiderAddressInput input}) =>
      Variables$Mutation$CreateAddress._({
        r'input': input,
      });

  Variables$Mutation$CreateAddress._(this._$data);

  factory Variables$Mutation$CreateAddress.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateRiderAddressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateAddress._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateRiderAddressInput get input =>
      (_$data['input'] as Input$CreateRiderAddressInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateAddress<Variables$Mutation$CreateAddress>
      get copyWith => CopyWith$Variables$Mutation$CreateAddress(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateAddress<TRes> {
  factory CopyWith$Variables$Mutation$CreateAddress(
    Variables$Mutation$CreateAddress instance,
    TRes Function(Variables$Mutation$CreateAddress) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateAddress;

  factory CopyWith$Variables$Mutation$CreateAddress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateAddress;

  TRes call({Input$CreateRiderAddressInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateAddress<TRes>
    implements CopyWith$Variables$Mutation$CreateAddress<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateAddress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateAddress _instance;

  final TRes Function(Variables$Mutation$CreateAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateAddress._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateRiderAddressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateAddress<TRes>
    implements CopyWith$Variables$Mutation$CreateAddress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateAddress(this._res);

  TRes _res;

  call({Input$CreateRiderAddressInput? input}) => _res;
}

class Mutation$CreateAddress {
  Mutation$CreateAddress({required this.createOneRiderAddress});

  factory Mutation$CreateAddress.fromJson(Map<String, dynamic> json) {
    final l$createOneRiderAddress = json['createOneRiderAddress'];
    return Mutation$CreateAddress(
        createOneRiderAddress:
            Mutation$CreateAddress$createOneRiderAddress.fromJson(
                (l$createOneRiderAddress as Map<String, dynamic>)));
  }

  final Mutation$CreateAddress$createOneRiderAddress createOneRiderAddress;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneRiderAddress = createOneRiderAddress;
    _resultData['createOneRiderAddress'] = l$createOneRiderAddress.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneRiderAddress = createOneRiderAddress;
    return Object.hashAll([l$createOneRiderAddress]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneRiderAddress = createOneRiderAddress;
    final lOther$createOneRiderAddress = other.createOneRiderAddress;
    if (l$createOneRiderAddress != lOther$createOneRiderAddress) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateAddress on Mutation$CreateAddress {
  CopyWith$Mutation$CreateAddress<Mutation$CreateAddress> get copyWith =>
      CopyWith$Mutation$CreateAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateAddress<TRes> {
  factory CopyWith$Mutation$CreateAddress(
    Mutation$CreateAddress instance,
    TRes Function(Mutation$CreateAddress) then,
  ) = _CopyWithImpl$Mutation$CreateAddress;

  factory CopyWith$Mutation$CreateAddress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateAddress;

  TRes call(
      {Mutation$CreateAddress$createOneRiderAddress? createOneRiderAddress});
  CopyWith$Mutation$CreateAddress$createOneRiderAddress<TRes>
      get createOneRiderAddress;
}

class _CopyWithImpl$Mutation$CreateAddress<TRes>
    implements CopyWith$Mutation$CreateAddress<TRes> {
  _CopyWithImpl$Mutation$CreateAddress(
    this._instance,
    this._then,
  );

  final Mutation$CreateAddress _instance;

  final TRes Function(Mutation$CreateAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createOneRiderAddress = _undefined}) =>
      _then(Mutation$CreateAddress(
          createOneRiderAddress: createOneRiderAddress == _undefined ||
                  createOneRiderAddress == null
              ? _instance.createOneRiderAddress
              : (createOneRiderAddress
                  as Mutation$CreateAddress$createOneRiderAddress)));
  CopyWith$Mutation$CreateAddress$createOneRiderAddress<TRes>
      get createOneRiderAddress {
    final local$createOneRiderAddress = _instance.createOneRiderAddress;
    return CopyWith$Mutation$CreateAddress$createOneRiderAddress(
        local$createOneRiderAddress, (e) => call(createOneRiderAddress: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateAddress<TRes>
    implements CopyWith$Mutation$CreateAddress<TRes> {
  _CopyWithStubImpl$Mutation$CreateAddress(this._res);

  TRes _res;

  call({Mutation$CreateAddress$createOneRiderAddress? createOneRiderAddress}) =>
      _res;
  CopyWith$Mutation$CreateAddress$createOneRiderAddress<TRes>
      get createOneRiderAddress =>
          CopyWith$Mutation$CreateAddress$createOneRiderAddress.stub(_res);
}

const documentNodeMutationCreateAddress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateAddress'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateRiderAddressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneRiderAddress'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'riderAddress'),
                value: VariableNode(name: NameNode(value: 'input')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Mutation$CreateAddress _parserFn$Mutation$CreateAddress(
        Map<String, dynamic> data) =>
    Mutation$CreateAddress.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateAddress = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateAddress?,
);

class Options$Mutation$CreateAddress
    extends graphql.MutationOptions<Mutation$CreateAddress> {
  Options$Mutation$CreateAddress({
    String? operationName,
    required Variables$Mutation$CreateAddress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateAddress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateAddress? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateAddress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateAddress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateAddress,
          parserFn: _parserFn$Mutation$CreateAddress,
        );

  final OnMutationCompleted$Mutation$CreateAddress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateAddress
    extends graphql.WatchQueryOptions<Mutation$CreateAddress> {
  WatchOptions$Mutation$CreateAddress({
    String? operationName,
    required Variables$Mutation$CreateAddress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateAddress? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationCreateAddress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateAddress,
        );
}

extension ClientExtension$Mutation$CreateAddress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateAddress>> mutate$CreateAddress(
          Options$Mutation$CreateAddress options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateAddress> watchMutation$CreateAddress(
          WatchOptions$Mutation$CreateAddress options) =>
      this.watchMutation(options);
}

class Mutation$CreateAddress$HookResult {
  Mutation$CreateAddress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateAddress runMutation;

  final graphql.QueryResult<Mutation$CreateAddress> result;
}

Mutation$CreateAddress$HookResult useMutation$CreateAddress(
    [WidgetOptions$Mutation$CreateAddress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateAddress());
  return Mutation$CreateAddress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateAddress> useWatchMutation$CreateAddress(
        WatchOptions$Mutation$CreateAddress options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateAddress
    extends graphql.MutationOptions<Mutation$CreateAddress> {
  WidgetOptions$Mutation$CreateAddress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateAddress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateAddress? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateAddress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateAddress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateAddress,
          parserFn: _parserFn$Mutation$CreateAddress,
        );

  final OnMutationCompleted$Mutation$CreateAddress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateAddress
    = graphql.MultiSourceResult<Mutation$CreateAddress> Function(
  Variables$Mutation$CreateAddress, {
  Object? optimisticResult,
  Mutation$CreateAddress? typedOptimisticResult,
});
typedef Builder$Mutation$CreateAddress = widgets.Widget Function(
  RunMutation$Mutation$CreateAddress,
  graphql.QueryResult<Mutation$CreateAddress>?,
);

class Mutation$CreateAddress$Widget
    extends graphql_flutter.Mutation<Mutation$CreateAddress> {
  Mutation$CreateAddress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateAddress? options,
    required Builder$Mutation$CreateAddress builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateAddress(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CreateAddress$createOneRiderAddress {
  Mutation$CreateAddress$createOneRiderAddress({required this.id});

  factory Mutation$CreateAddress$createOneRiderAddress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$CreateAddress$createOneRiderAddress(id: (l$id as String));
  }

  final String id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateAddress$createOneRiderAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateAddress$createOneRiderAddress
    on Mutation$CreateAddress$createOneRiderAddress {
  CopyWith$Mutation$CreateAddress$createOneRiderAddress<
          Mutation$CreateAddress$createOneRiderAddress>
      get copyWith => CopyWith$Mutation$CreateAddress$createOneRiderAddress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateAddress$createOneRiderAddress<TRes> {
  factory CopyWith$Mutation$CreateAddress$createOneRiderAddress(
    Mutation$CreateAddress$createOneRiderAddress instance,
    TRes Function(Mutation$CreateAddress$createOneRiderAddress) then,
  ) = _CopyWithImpl$Mutation$CreateAddress$createOneRiderAddress;

  factory CopyWith$Mutation$CreateAddress$createOneRiderAddress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateAddress$createOneRiderAddress;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$CreateAddress$createOneRiderAddress<TRes>
    implements CopyWith$Mutation$CreateAddress$createOneRiderAddress<TRes> {
  _CopyWithImpl$Mutation$CreateAddress$createOneRiderAddress(
    this._instance,
    this._then,
  );

  final Mutation$CreateAddress$createOneRiderAddress _instance;

  final TRes Function(Mutation$CreateAddress$createOneRiderAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$CreateAddress$createOneRiderAddress(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$CreateAddress$createOneRiderAddress<TRes>
    implements CopyWith$Mutation$CreateAddress$createOneRiderAddress<TRes> {
  _CopyWithStubImpl$Mutation$CreateAddress$createOneRiderAddress(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Variables$Mutation$UpdateAddress {
  factory Variables$Mutation$UpdateAddress({
    required String id,
    required Input$CreateRiderAddressInput update,
  }) =>
      Variables$Mutation$UpdateAddress._({
        r'id': id,
        r'update': update,
      });

  Variables$Mutation$UpdateAddress._(this._$data);

  factory Variables$Mutation$UpdateAddress.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$update = data['update'];
    result$data['update'] = Input$CreateRiderAddressInput.fromJson(
        (l$update as Map<String, dynamic>));
    return Variables$Mutation$UpdateAddress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Input$CreateRiderAddressInput get update =>
      (_$data['update'] as Input$CreateRiderAddressInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$update = update;
    result$data['update'] = l$update.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAddress<Variables$Mutation$UpdateAddress>
      get copyWith => CopyWith$Variables$Mutation$UpdateAddress(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$update = update;
    return Object.hashAll([
      l$id,
      l$update,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateAddress<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAddress(
    Variables$Mutation$UpdateAddress instance,
    TRes Function(Variables$Mutation$UpdateAddress) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAddress;

  factory CopyWith$Variables$Mutation$UpdateAddress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAddress;

  TRes call({
    String? id,
    Input$CreateRiderAddressInput? update,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateAddress<TRes>
    implements CopyWith$Variables$Mutation$UpdateAddress<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAddress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAddress _instance;

  final TRes Function(Variables$Mutation$UpdateAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateAddress._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (update != _undefined && update != null)
          'update': (update as Input$CreateRiderAddressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAddress<TRes>
    implements CopyWith$Variables$Mutation$UpdateAddress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAddress(this._res);

  TRes _res;

  call({
    String? id,
    Input$CreateRiderAddressInput? update,
  }) =>
      _res;
}

class Mutation$UpdateAddress {
  Mutation$UpdateAddress({required this.updateOneRiderAddress});

  factory Mutation$UpdateAddress.fromJson(Map<String, dynamic> json) {
    final l$updateOneRiderAddress = json['updateOneRiderAddress'];
    return Mutation$UpdateAddress(
        updateOneRiderAddress:
            Mutation$UpdateAddress$updateOneRiderAddress.fromJson(
                (l$updateOneRiderAddress as Map<String, dynamic>)));
  }

  final Mutation$UpdateAddress$updateOneRiderAddress updateOneRiderAddress;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneRiderAddress = updateOneRiderAddress;
    _resultData['updateOneRiderAddress'] = l$updateOneRiderAddress.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneRiderAddress = updateOneRiderAddress;
    return Object.hashAll([l$updateOneRiderAddress]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneRiderAddress = updateOneRiderAddress;
    final lOther$updateOneRiderAddress = other.updateOneRiderAddress;
    if (l$updateOneRiderAddress != lOther$updateOneRiderAddress) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateAddress on Mutation$UpdateAddress {
  CopyWith$Mutation$UpdateAddress<Mutation$UpdateAddress> get copyWith =>
      CopyWith$Mutation$UpdateAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAddress<TRes> {
  factory CopyWith$Mutation$UpdateAddress(
    Mutation$UpdateAddress instance,
    TRes Function(Mutation$UpdateAddress) then,
  ) = _CopyWithImpl$Mutation$UpdateAddress;

  factory CopyWith$Mutation$UpdateAddress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAddress;

  TRes call(
      {Mutation$UpdateAddress$updateOneRiderAddress? updateOneRiderAddress});
  CopyWith$Mutation$UpdateAddress$updateOneRiderAddress<TRes>
      get updateOneRiderAddress;
}

class _CopyWithImpl$Mutation$UpdateAddress<TRes>
    implements CopyWith$Mutation$UpdateAddress<TRes> {
  _CopyWithImpl$Mutation$UpdateAddress(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAddress _instance;

  final TRes Function(Mutation$UpdateAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneRiderAddress = _undefined}) =>
      _then(Mutation$UpdateAddress(
          updateOneRiderAddress: updateOneRiderAddress == _undefined ||
                  updateOneRiderAddress == null
              ? _instance.updateOneRiderAddress
              : (updateOneRiderAddress
                  as Mutation$UpdateAddress$updateOneRiderAddress)));
  CopyWith$Mutation$UpdateAddress$updateOneRiderAddress<TRes>
      get updateOneRiderAddress {
    final local$updateOneRiderAddress = _instance.updateOneRiderAddress;
    return CopyWith$Mutation$UpdateAddress$updateOneRiderAddress(
        local$updateOneRiderAddress, (e) => call(updateOneRiderAddress: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateAddress<TRes>
    implements CopyWith$Mutation$UpdateAddress<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAddress(this._res);

  TRes _res;

  call({Mutation$UpdateAddress$updateOneRiderAddress? updateOneRiderAddress}) =>
      _res;
  CopyWith$Mutation$UpdateAddress$updateOneRiderAddress<TRes>
      get updateOneRiderAddress =>
          CopyWith$Mutation$UpdateAddress$updateOneRiderAddress.stub(_res);
}

const documentNodeMutationUpdateAddress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateAddress'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'update')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateRiderAddressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneRiderAddress'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: VariableNode(name: NameNode(value: 'update')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Mutation$UpdateAddress _parserFn$Mutation$UpdateAddress(
        Map<String, dynamic> data) =>
    Mutation$UpdateAddress.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateAddress = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateAddress?,
);

class Options$Mutation$UpdateAddress
    extends graphql.MutationOptions<Mutation$UpdateAddress> {
  Options$Mutation$UpdateAddress({
    String? operationName,
    required Variables$Mutation$UpdateAddress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAddress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateAddress? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateAddress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateAddress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateAddress,
          parserFn: _parserFn$Mutation$UpdateAddress,
        );

  final OnMutationCompleted$Mutation$UpdateAddress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateAddress
    extends graphql.WatchQueryOptions<Mutation$UpdateAddress> {
  WatchOptions$Mutation$UpdateAddress({
    String? operationName,
    required Variables$Mutation$UpdateAddress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAddress? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateAddress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateAddress,
        );
}

extension ClientExtension$Mutation$UpdateAddress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateAddress>> mutate$UpdateAddress(
          Options$Mutation$UpdateAddress options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateAddress> watchMutation$UpdateAddress(
          WatchOptions$Mutation$UpdateAddress options) =>
      this.watchMutation(options);
}

class Mutation$UpdateAddress$HookResult {
  Mutation$UpdateAddress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateAddress runMutation;

  final graphql.QueryResult<Mutation$UpdateAddress> result;
}

Mutation$UpdateAddress$HookResult useMutation$UpdateAddress(
    [WidgetOptions$Mutation$UpdateAddress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateAddress());
  return Mutation$UpdateAddress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateAddress> useWatchMutation$UpdateAddress(
        WatchOptions$Mutation$UpdateAddress options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateAddress
    extends graphql.MutationOptions<Mutation$UpdateAddress> {
  WidgetOptions$Mutation$UpdateAddress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAddress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateAddress? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateAddress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateAddress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateAddress,
          parserFn: _parserFn$Mutation$UpdateAddress,
        );

  final OnMutationCompleted$Mutation$UpdateAddress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateAddress
    = graphql.MultiSourceResult<Mutation$UpdateAddress> Function(
  Variables$Mutation$UpdateAddress, {
  Object? optimisticResult,
  Mutation$UpdateAddress? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateAddress = widgets.Widget Function(
  RunMutation$Mutation$UpdateAddress,
  graphql.QueryResult<Mutation$UpdateAddress>?,
);

class Mutation$UpdateAddress$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateAddress> {
  Mutation$UpdateAddress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateAddress? options,
    required Builder$Mutation$UpdateAddress builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateAddress(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateAddress$updateOneRiderAddress {
  Mutation$UpdateAddress$updateOneRiderAddress({required this.id});

  factory Mutation$UpdateAddress$updateOneRiderAddress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$UpdateAddress$updateOneRiderAddress(id: (l$id as String));
  }

  final String id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAddress$updateOneRiderAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateAddress$updateOneRiderAddress
    on Mutation$UpdateAddress$updateOneRiderAddress {
  CopyWith$Mutation$UpdateAddress$updateOneRiderAddress<
          Mutation$UpdateAddress$updateOneRiderAddress>
      get copyWith => CopyWith$Mutation$UpdateAddress$updateOneRiderAddress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAddress$updateOneRiderAddress<TRes> {
  factory CopyWith$Mutation$UpdateAddress$updateOneRiderAddress(
    Mutation$UpdateAddress$updateOneRiderAddress instance,
    TRes Function(Mutation$UpdateAddress$updateOneRiderAddress) then,
  ) = _CopyWithImpl$Mutation$UpdateAddress$updateOneRiderAddress;

  factory CopyWith$Mutation$UpdateAddress$updateOneRiderAddress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAddress$updateOneRiderAddress;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$UpdateAddress$updateOneRiderAddress<TRes>
    implements CopyWith$Mutation$UpdateAddress$updateOneRiderAddress<TRes> {
  _CopyWithImpl$Mutation$UpdateAddress$updateOneRiderAddress(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAddress$updateOneRiderAddress _instance;

  final TRes Function(Mutation$UpdateAddress$updateOneRiderAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$UpdateAddress$updateOneRiderAddress(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$UpdateAddress$updateOneRiderAddress<TRes>
    implements CopyWith$Mutation$UpdateAddress$updateOneRiderAddress<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAddress$updateOneRiderAddress(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Variables$Mutation$DeleteAddress {
  factory Variables$Mutation$DeleteAddress({required String id}) =>
      Variables$Mutation$DeleteAddress._({
        r'id': id,
      });

  Variables$Mutation$DeleteAddress._(this._$data);

  factory Variables$Mutation$DeleteAddress.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteAddress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteAddress<Variables$Mutation$DeleteAddress>
      get copyWith => CopyWith$Variables$Mutation$DeleteAddress(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteAddress<TRes> {
  factory CopyWith$Variables$Mutation$DeleteAddress(
    Variables$Mutation$DeleteAddress instance,
    TRes Function(Variables$Mutation$DeleteAddress) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteAddress;

  factory CopyWith$Variables$Mutation$DeleteAddress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteAddress;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteAddress<TRes>
    implements CopyWith$Variables$Mutation$DeleteAddress<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteAddress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteAddress _instance;

  final TRes Function(Variables$Mutation$DeleteAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteAddress._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteAddress<TRes>
    implements CopyWith$Variables$Mutation$DeleteAddress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteAddress(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteAddress {
  Mutation$DeleteAddress({required this.deleteOneRiderAddress});

  factory Mutation$DeleteAddress.fromJson(Map<String, dynamic> json) {
    final l$deleteOneRiderAddress = json['deleteOneRiderAddress'];
    return Mutation$DeleteAddress(
        deleteOneRiderAddress:
            Mutation$DeleteAddress$deleteOneRiderAddress.fromJson(
                (l$deleteOneRiderAddress as Map<String, dynamic>)));
  }

  final Mutation$DeleteAddress$deleteOneRiderAddress deleteOneRiderAddress;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneRiderAddress = deleteOneRiderAddress;
    _resultData['deleteOneRiderAddress'] = l$deleteOneRiderAddress.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneRiderAddress = deleteOneRiderAddress;
    return Object.hashAll([l$deleteOneRiderAddress]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneRiderAddress = deleteOneRiderAddress;
    final lOther$deleteOneRiderAddress = other.deleteOneRiderAddress;
    if (l$deleteOneRiderAddress != lOther$deleteOneRiderAddress) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteAddress on Mutation$DeleteAddress {
  CopyWith$Mutation$DeleteAddress<Mutation$DeleteAddress> get copyWith =>
      CopyWith$Mutation$DeleteAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAddress<TRes> {
  factory CopyWith$Mutation$DeleteAddress(
    Mutation$DeleteAddress instance,
    TRes Function(Mutation$DeleteAddress) then,
  ) = _CopyWithImpl$Mutation$DeleteAddress;

  factory CopyWith$Mutation$DeleteAddress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAddress;

  TRes call(
      {Mutation$DeleteAddress$deleteOneRiderAddress? deleteOneRiderAddress});
  CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress<TRes>
      get deleteOneRiderAddress;
}

class _CopyWithImpl$Mutation$DeleteAddress<TRes>
    implements CopyWith$Mutation$DeleteAddress<TRes> {
  _CopyWithImpl$Mutation$DeleteAddress(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAddress _instance;

  final TRes Function(Mutation$DeleteAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteOneRiderAddress = _undefined}) =>
      _then(Mutation$DeleteAddress(
          deleteOneRiderAddress: deleteOneRiderAddress == _undefined ||
                  deleteOneRiderAddress == null
              ? _instance.deleteOneRiderAddress
              : (deleteOneRiderAddress
                  as Mutation$DeleteAddress$deleteOneRiderAddress)));
  CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress<TRes>
      get deleteOneRiderAddress {
    final local$deleteOneRiderAddress = _instance.deleteOneRiderAddress;
    return CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress(
        local$deleteOneRiderAddress, (e) => call(deleteOneRiderAddress: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteAddress<TRes>
    implements CopyWith$Mutation$DeleteAddress<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAddress(this._res);

  TRes _res;

  call({Mutation$DeleteAddress$deleteOneRiderAddress? deleteOneRiderAddress}) =>
      _res;
  CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress<TRes>
      get deleteOneRiderAddress =>
          CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress.stub(_res);
}

const documentNodeMutationDeleteAddress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteAddress'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneRiderAddress'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Mutation$DeleteAddress _parserFn$Mutation$DeleteAddress(
        Map<String, dynamic> data) =>
    Mutation$DeleteAddress.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteAddress = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteAddress?,
);

class Options$Mutation$DeleteAddress
    extends graphql.MutationOptions<Mutation$DeleteAddress> {
  Options$Mutation$DeleteAddress({
    String? operationName,
    required Variables$Mutation$DeleteAddress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAddress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteAddress? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteAddress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteAddress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteAddress,
          parserFn: _parserFn$Mutation$DeleteAddress,
        );

  final OnMutationCompleted$Mutation$DeleteAddress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteAddress
    extends graphql.WatchQueryOptions<Mutation$DeleteAddress> {
  WatchOptions$Mutation$DeleteAddress({
    String? operationName,
    required Variables$Mutation$DeleteAddress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAddress? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationDeleteAddress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteAddress,
        );
}

extension ClientExtension$Mutation$DeleteAddress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteAddress>> mutate$DeleteAddress(
          Options$Mutation$DeleteAddress options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteAddress> watchMutation$DeleteAddress(
          WatchOptions$Mutation$DeleteAddress options) =>
      this.watchMutation(options);
}

class Mutation$DeleteAddress$HookResult {
  Mutation$DeleteAddress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteAddress runMutation;

  final graphql.QueryResult<Mutation$DeleteAddress> result;
}

Mutation$DeleteAddress$HookResult useMutation$DeleteAddress(
    [WidgetOptions$Mutation$DeleteAddress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteAddress());
  return Mutation$DeleteAddress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteAddress> useWatchMutation$DeleteAddress(
        WatchOptions$Mutation$DeleteAddress options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteAddress
    extends graphql.MutationOptions<Mutation$DeleteAddress> {
  WidgetOptions$Mutation$DeleteAddress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAddress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteAddress? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteAddress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteAddress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteAddress,
          parserFn: _parserFn$Mutation$DeleteAddress,
        );

  final OnMutationCompleted$Mutation$DeleteAddress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteAddress
    = graphql.MultiSourceResult<Mutation$DeleteAddress> Function(
  Variables$Mutation$DeleteAddress, {
  Object? optimisticResult,
  Mutation$DeleteAddress? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteAddress = widgets.Widget Function(
  RunMutation$Mutation$DeleteAddress,
  graphql.QueryResult<Mutation$DeleteAddress>?,
);

class Mutation$DeleteAddress$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteAddress> {
  Mutation$DeleteAddress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteAddress? options,
    required Builder$Mutation$DeleteAddress builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteAddress(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$DeleteAddress$deleteOneRiderAddress {
  Mutation$DeleteAddress$deleteOneRiderAddress({this.id});

  factory Mutation$DeleteAddress$deleteOneRiderAddress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$DeleteAddress$deleteOneRiderAddress(id: (l$id as String?));
  }

  final String? id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteAddress$deleteOneRiderAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteAddress$deleteOneRiderAddress
    on Mutation$DeleteAddress$deleteOneRiderAddress {
  CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress<
          Mutation$DeleteAddress$deleteOneRiderAddress>
      get copyWith => CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress<TRes> {
  factory CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress(
    Mutation$DeleteAddress$deleteOneRiderAddress instance,
    TRes Function(Mutation$DeleteAddress$deleteOneRiderAddress) then,
  ) = _CopyWithImpl$Mutation$DeleteAddress$deleteOneRiderAddress;

  factory CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAddress$deleteOneRiderAddress;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$DeleteAddress$deleteOneRiderAddress<TRes>
    implements CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress<TRes> {
  _CopyWithImpl$Mutation$DeleteAddress$deleteOneRiderAddress(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAddress$deleteOneRiderAddress _instance;

  final TRes Function(Mutation$DeleteAddress$deleteOneRiderAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$DeleteAddress$deleteOneRiderAddress(
          id: id == _undefined ? _instance.id : (id as String?)));
}

class _CopyWithStubImpl$Mutation$DeleteAddress$deleteOneRiderAddress<TRes>
    implements CopyWith$Mutation$DeleteAddress$deleteOneRiderAddress<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAddress$deleteOneRiderAddress(this._res);

  TRes _res;

  call({String? id}) => _res;
}
