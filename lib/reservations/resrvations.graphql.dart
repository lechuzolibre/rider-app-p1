import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/timestamp.dart';

class Query$Reservations {
  Query$Reservations({required this.orders});

  factory Query$Reservations.fromJson(Map<String, dynamic> json) {
    final l$orders = json['orders'];
    return Query$Reservations(
        orders: Query$Reservations$orders.fromJson(
            (l$orders as Map<String, dynamic>)));
  }

  final Query$Reservations$orders orders;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders = orders;
    _resultData['orders'] = l$orders.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders = orders;
    return Object.hashAll([l$orders]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Reservations) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders != lOther$orders) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Reservations on Query$Reservations {
  CopyWith$Query$Reservations<Query$Reservations> get copyWith =>
      CopyWith$Query$Reservations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Reservations<TRes> {
  factory CopyWith$Query$Reservations(
    Query$Reservations instance,
    TRes Function(Query$Reservations) then,
  ) = _CopyWithImpl$Query$Reservations;

  factory CopyWith$Query$Reservations.stub(TRes res) =
      _CopyWithStubImpl$Query$Reservations;

  TRes call({Query$Reservations$orders? orders});
  CopyWith$Query$Reservations$orders<TRes> get orders;
}

class _CopyWithImpl$Query$Reservations<TRes>
    implements CopyWith$Query$Reservations<TRes> {
  _CopyWithImpl$Query$Reservations(
    this._instance,
    this._then,
  );

  final Query$Reservations _instance;

  final TRes Function(Query$Reservations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orders = _undefined}) => _then(Query$Reservations(
      orders: orders == _undefined || orders == null
          ? _instance.orders
          : (orders as Query$Reservations$orders)));
  CopyWith$Query$Reservations$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$Reservations$orders(
        local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$Reservations<TRes>
    implements CopyWith$Query$Reservations<TRes> {
  _CopyWithStubImpl$Query$Reservations(this._res);

  TRes _res;

  call({Query$Reservations$orders? orders}) => _res;
  CopyWith$Query$Reservations$orders<TRes> get orders =>
      CopyWith$Query$Reservations$orders.stub(_res);
}

const documentNodeQueryReservations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Reservations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'status'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: EnumValueNode(name: NameNode(value: 'Booked')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
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
                    name: NameNode(value: 'expectedTimestamp'),
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
                ]),
              )
            ]),
          )
        ]),
      )
    ]),
  ),
]);
Query$Reservations _parserFn$Query$Reservations(Map<String, dynamic> data) =>
    Query$Reservations.fromJson(data);
typedef OnQueryComplete$Query$Reservations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Reservations?,
);

class Options$Query$Reservations
    extends graphql.QueryOptions<Query$Reservations> {
  Options$Query$Reservations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Reservations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Reservations? onComplete,
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
                    data == null ? null : _parserFn$Query$Reservations(data),
                  ),
          onError: onError,
          document: documentNodeQueryReservations,
          parserFn: _parserFn$Query$Reservations,
        );

  final OnQueryComplete$Query$Reservations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Reservations
    extends graphql.WatchQueryOptions<Query$Reservations> {
  WatchOptions$Query$Reservations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Reservations? typedOptimisticResult,
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
          document: documentNodeQueryReservations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Reservations,
        );
}

class FetchMoreOptions$Query$Reservations extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Reservations(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryReservations,
        );
}

extension ClientExtension$Query$Reservations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Reservations>> query$Reservations(
          [Options$Query$Reservations? options]) async =>
      await this.query(options ?? Options$Query$Reservations());
  graphql.ObservableQuery<Query$Reservations> watchQuery$Reservations(
          [WatchOptions$Query$Reservations? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Reservations());
  void writeQuery$Reservations({
    required Query$Reservations data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryReservations)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Reservations? readQuery$Reservations({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryReservations)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Reservations.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Reservations> useQuery$Reservations(
        [Options$Query$Reservations? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Reservations());
graphql.ObservableQuery<Query$Reservations> useWatchQuery$Reservations(
        [WatchOptions$Query$Reservations? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Reservations());

class Query$Reservations$Widget
    extends graphql_flutter.Query<Query$Reservations> {
  Query$Reservations$Widget({
    widgets.Key? key,
    Options$Query$Reservations? options,
    required graphql_flutter.QueryBuilder<Query$Reservations> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Reservations(),
          builder: builder,
        );
}

class Query$Reservations$orders {
  Query$Reservations$orders({required this.edges});

  factory Query$Reservations$orders.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    return Query$Reservations$orders(
        edges: (l$edges as List<dynamic>)
            .map((e) => Query$Reservations$orders$edges.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$Reservations$orders$edges> edges;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    return Object.hashAll([Object.hashAll(l$edges.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Reservations$orders) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Reservations$orders
    on Query$Reservations$orders {
  CopyWith$Query$Reservations$orders<Query$Reservations$orders> get copyWith =>
      CopyWith$Query$Reservations$orders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Reservations$orders<TRes> {
  factory CopyWith$Query$Reservations$orders(
    Query$Reservations$orders instance,
    TRes Function(Query$Reservations$orders) then,
  ) = _CopyWithImpl$Query$Reservations$orders;

  factory CopyWith$Query$Reservations$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$Reservations$orders;

  TRes call({List<Query$Reservations$orders$edges>? edges});
  TRes edges(
      Iterable<Query$Reservations$orders$edges> Function(
              Iterable<
                  CopyWith$Query$Reservations$orders$edges<
                      Query$Reservations$orders$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Reservations$orders<TRes>
    implements CopyWith$Query$Reservations$orders<TRes> {
  _CopyWithImpl$Query$Reservations$orders(
    this._instance,
    this._then,
  );

  final Query$Reservations$orders _instance;

  final TRes Function(Query$Reservations$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? edges = _undefined}) => _then(Query$Reservations$orders(
      edges: edges == _undefined || edges == null
          ? _instance.edges
          : (edges as List<Query$Reservations$orders$edges>)));
  TRes edges(
          Iterable<Query$Reservations$orders$edges> Function(
                  Iterable<
                      CopyWith$Query$Reservations$orders$edges<
                          Query$Reservations$orders$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Reservations$orders$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Reservations$orders<TRes>
    implements CopyWith$Query$Reservations$orders<TRes> {
  _CopyWithStubImpl$Query$Reservations$orders(this._res);

  TRes _res;

  call({List<Query$Reservations$orders$edges>? edges}) => _res;
  edges(_fn) => _res;
}

class Query$Reservations$orders$edges {
  Query$Reservations$orders$edges({required this.node});

  factory Query$Reservations$orders$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    return Query$Reservations$orders$edges(
        node: Query$Reservations$orders$edges$node.fromJson(
            (l$node as Map<String, dynamic>)));
  }

  final Query$Reservations$orders$edges$node node;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    return Object.hashAll([l$node]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Reservations$orders$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Reservations$orders$edges
    on Query$Reservations$orders$edges {
  CopyWith$Query$Reservations$orders$edges<Query$Reservations$orders$edges>
      get copyWith => CopyWith$Query$Reservations$orders$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Reservations$orders$edges<TRes> {
  factory CopyWith$Query$Reservations$orders$edges(
    Query$Reservations$orders$edges instance,
    TRes Function(Query$Reservations$orders$edges) then,
  ) = _CopyWithImpl$Query$Reservations$orders$edges;

  factory CopyWith$Query$Reservations$orders$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Reservations$orders$edges;

  TRes call({Query$Reservations$orders$edges$node? node});
  CopyWith$Query$Reservations$orders$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Reservations$orders$edges<TRes>
    implements CopyWith$Query$Reservations$orders$edges<TRes> {
  _CopyWithImpl$Query$Reservations$orders$edges(
    this._instance,
    this._then,
  );

  final Query$Reservations$orders$edges _instance;

  final TRes Function(Query$Reservations$orders$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined}) =>
      _then(Query$Reservations$orders$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Query$Reservations$orders$edges$node)));
  CopyWith$Query$Reservations$orders$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$Reservations$orders$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Reservations$orders$edges<TRes>
    implements CopyWith$Query$Reservations$orders$edges<TRes> {
  _CopyWithStubImpl$Query$Reservations$orders$edges(this._res);

  TRes _res;

  call({Query$Reservations$orders$edges$node? node}) => _res;
  CopyWith$Query$Reservations$orders$edges$node<TRes> get node =>
      CopyWith$Query$Reservations$orders$edges$node.stub(_res);
}

class Query$Reservations$orders$edges$node {
  Query$Reservations$orders$edges$node({
    required this.id,
    required this.expectedTimestamp,
    required this.addresses,
  });

  factory Query$Reservations$orders$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$expectedTimestamp = json['expectedTimestamp'];
    final l$addresses = json['addresses'];
    return Query$Reservations$orders$edges$node(
      id: (l$id as String),
      expectedTimestamp:
          fromGraphQLTimestampToDartDateTime(l$expectedTimestamp),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
    );
  }

  final String id;

  final DateTime expectedTimestamp;

  final List<String> addresses;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$expectedTimestamp = expectedTimestamp;
    _resultData['expectedTimestamp'] =
        fromDartDateTimeToGraphQLTimestamp(l$expectedTimestamp);
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$expectedTimestamp = expectedTimestamp;
    final l$addresses = addresses;
    return Object.hashAll([
      l$id,
      l$expectedTimestamp,
      Object.hashAll(l$addresses.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Reservations$orders$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$expectedTimestamp = expectedTimestamp;
    final lOther$expectedTimestamp = other.expectedTimestamp;
    if (l$expectedTimestamp != lOther$expectedTimestamp) {
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
    return true;
  }
}

extension UtilityExtension$Query$Reservations$orders$edges$node
    on Query$Reservations$orders$edges$node {
  CopyWith$Query$Reservations$orders$edges$node<
          Query$Reservations$orders$edges$node>
      get copyWith => CopyWith$Query$Reservations$orders$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Reservations$orders$edges$node<TRes> {
  factory CopyWith$Query$Reservations$orders$edges$node(
    Query$Reservations$orders$edges$node instance,
    TRes Function(Query$Reservations$orders$edges$node) then,
  ) = _CopyWithImpl$Query$Reservations$orders$edges$node;

  factory CopyWith$Query$Reservations$orders$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Reservations$orders$edges$node;

  TRes call({
    String? id,
    DateTime? expectedTimestamp,
    List<String>? addresses,
  });
}

class _CopyWithImpl$Query$Reservations$orders$edges$node<TRes>
    implements CopyWith$Query$Reservations$orders$edges$node<TRes> {
  _CopyWithImpl$Query$Reservations$orders$edges$node(
    this._instance,
    this._then,
  );

  final Query$Reservations$orders$edges$node _instance;

  final TRes Function(Query$Reservations$orders$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? expectedTimestamp = _undefined,
    Object? addresses = _undefined,
  }) =>
      _then(Query$Reservations$orders$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        expectedTimestamp:
            expectedTimestamp == _undefined || expectedTimestamp == null
                ? _instance.expectedTimestamp
                : (expectedTimestamp as DateTime),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
      ));
}

class _CopyWithStubImpl$Query$Reservations$orders$edges$node<TRes>
    implements CopyWith$Query$Reservations$orders$edges$node<TRes> {
  _CopyWithStubImpl$Query$Reservations$orders$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? expectedTimestamp,
    List<String>? addresses,
  }) =>
      _res;
}
