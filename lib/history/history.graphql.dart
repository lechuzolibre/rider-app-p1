import '../graphql/fragments/active-order.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/connection_cursor.dart';
import 'package:ridy/graphql/scalars/timestamp.dart';

class Query$GetHistory {
  Query$GetHistory({required this.orders});

  factory Query$GetHistory.fromJson(Map<String, dynamic> json) {
    final l$orders = json['orders'];
    return Query$GetHistory(
        orders: Query$GetHistory$orders.fromJson(
            (l$orders as Map<String, dynamic>)));
  }

  final Query$GetHistory$orders orders;

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
    if (!(other is Query$GetHistory) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetHistory on Query$GetHistory {
  CopyWith$Query$GetHistory<Query$GetHistory> get copyWith =>
      CopyWith$Query$GetHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetHistory<TRes> {
  factory CopyWith$Query$GetHistory(
    Query$GetHistory instance,
    TRes Function(Query$GetHistory) then,
  ) = _CopyWithImpl$Query$GetHistory;

  factory CopyWith$Query$GetHistory.stub(TRes res) =
      _CopyWithStubImpl$Query$GetHistory;

  TRes call({Query$GetHistory$orders? orders});
  CopyWith$Query$GetHistory$orders<TRes> get orders;
}

class _CopyWithImpl$Query$GetHistory<TRes>
    implements CopyWith$Query$GetHistory<TRes> {
  _CopyWithImpl$Query$GetHistory(
    this._instance,
    this._then,
  );

  final Query$GetHistory _instance;

  final TRes Function(Query$GetHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orders = _undefined}) => _then(Query$GetHistory(
      orders: orders == _undefined || orders == null
          ? _instance.orders
          : (orders as Query$GetHistory$orders)));
  CopyWith$Query$GetHistory$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$GetHistory$orders(
        local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$GetHistory<TRes>
    implements CopyWith$Query$GetHistory<TRes> {
  _CopyWithStubImpl$Query$GetHistory(this._res);

  TRes _res;

  call({Query$GetHistory$orders? orders}) => _res;
  CopyWith$Query$GetHistory$orders<TRes> get orders =>
      CopyWith$Query$GetHistory$orders.stub(_res);
}

const documentNodeQueryGetHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetHistory'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sorting'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'field'),
                value: EnumValueNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'direction'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'paging'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '20'),
              )
            ]),
          ),
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
                    name: NameNode(value: 'status'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdOn'),
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
                    name: NameNode(value: 'currency'),
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
                    ]),
                  ),
                ]),
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
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
Query$GetHistory _parserFn$Query$GetHistory(Map<String, dynamic> data) =>
    Query$GetHistory.fromJson(data);
typedef OnQueryComplete$Query$GetHistory = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetHistory?,
);

class Options$Query$GetHistory extends graphql.QueryOptions<Query$GetHistory> {
  Options$Query$GetHistory({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetHistory? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetHistory? onComplete,
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
                    data == null ? null : _parserFn$Query$GetHistory(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetHistory,
          parserFn: _parserFn$Query$GetHistory,
        );

  final OnQueryComplete$Query$GetHistory? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetHistory
    extends graphql.WatchQueryOptions<Query$GetHistory> {
  WatchOptions$Query$GetHistory({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetHistory? typedOptimisticResult,
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
          document: documentNodeQueryGetHistory,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetHistory,
        );
}

class FetchMoreOptions$Query$GetHistory extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetHistory({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetHistory,
        );
}

extension ClientExtension$Query$GetHistory on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetHistory>> query$GetHistory(
          [Options$Query$GetHistory? options]) async =>
      await this.query(options ?? Options$Query$GetHistory());
  graphql.ObservableQuery<Query$GetHistory> watchQuery$GetHistory(
          [WatchOptions$Query$GetHistory? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetHistory());
  void writeQuery$GetHistory({
    required Query$GetHistory data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetHistory)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetHistory? readQuery$GetHistory({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetHistory)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetHistory.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetHistory> useQuery$GetHistory(
        [Options$Query$GetHistory? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetHistory());
graphql.ObservableQuery<Query$GetHistory> useWatchQuery$GetHistory(
        [WatchOptions$Query$GetHistory? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetHistory());

class Query$GetHistory$Widget extends graphql_flutter.Query<Query$GetHistory> {
  Query$GetHistory$Widget({
    widgets.Key? key,
    Options$Query$GetHistory? options,
    required graphql_flutter.QueryBuilder<Query$GetHistory> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetHistory(),
          builder: builder,
        );
}

class Query$GetHistory$orders {
  Query$GetHistory$orders({
    required this.edges,
    required this.pageInfo,
  });

  factory Query$GetHistory$orders.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    return Query$GetHistory$orders(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$GetHistory$orders$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$GetHistory$orders$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
    );
  }

  final List<Query$GetHistory$orders$edges> edges;

  final Query$GetHistory$orders$pageInfo pageInfo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetHistory$orders) ||
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
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetHistory$orders on Query$GetHistory$orders {
  CopyWith$Query$GetHistory$orders<Query$GetHistory$orders> get copyWith =>
      CopyWith$Query$GetHistory$orders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetHistory$orders<TRes> {
  factory CopyWith$Query$GetHistory$orders(
    Query$GetHistory$orders instance,
    TRes Function(Query$GetHistory$orders) then,
  ) = _CopyWithImpl$Query$GetHistory$orders;

  factory CopyWith$Query$GetHistory$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetHistory$orders;

  TRes call({
    List<Query$GetHistory$orders$edges>? edges,
    Query$GetHistory$orders$pageInfo? pageInfo,
  });
  TRes edges(
      Iterable<Query$GetHistory$orders$edges> Function(
              Iterable<
                  CopyWith$Query$GetHistory$orders$edges<
                      Query$GetHistory$orders$edges>>)
          _fn);
  CopyWith$Query$GetHistory$orders$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetHistory$orders<TRes>
    implements CopyWith$Query$GetHistory$orders<TRes> {
  _CopyWithImpl$Query$GetHistory$orders(
    this._instance,
    this._then,
  );

  final Query$GetHistory$orders _instance;

  final TRes Function(Query$GetHistory$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
  }) =>
      _then(Query$GetHistory$orders(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$GetHistory$orders$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetHistory$orders$pageInfo),
      ));
  TRes edges(
          Iterable<Query$GetHistory$orders$edges> Function(
                  Iterable<
                      CopyWith$Query$GetHistory$orders$edges<
                          Query$GetHistory$orders$edges>>)
              _fn) =>
      call(
          edges: _fn(
              _instance.edges.map((e) => CopyWith$Query$GetHistory$orders$edges(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$GetHistory$orders$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetHistory$orders$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetHistory$orders<TRes>
    implements CopyWith$Query$GetHistory$orders<TRes> {
  _CopyWithStubImpl$Query$GetHistory$orders(this._res);

  TRes _res;

  call({
    List<Query$GetHistory$orders$edges>? edges,
    Query$GetHistory$orders$pageInfo? pageInfo,
  }) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$GetHistory$orders$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetHistory$orders$pageInfo.stub(_res);
}

class Query$GetHistory$orders$edges {
  Query$GetHistory$orders$edges({required this.node});

  factory Query$GetHistory$orders$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    return Query$GetHistory$orders$edges(
        node: Query$GetHistory$orders$edges$node.fromJson(
            (l$node as Map<String, dynamic>)));
  }

  final Query$GetHistory$orders$edges$node node;

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
    if (!(other is Query$GetHistory$orders$edges) ||
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

extension UtilityExtension$Query$GetHistory$orders$edges
    on Query$GetHistory$orders$edges {
  CopyWith$Query$GetHistory$orders$edges<Query$GetHistory$orders$edges>
      get copyWith => CopyWith$Query$GetHistory$orders$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetHistory$orders$edges<TRes> {
  factory CopyWith$Query$GetHistory$orders$edges(
    Query$GetHistory$orders$edges instance,
    TRes Function(Query$GetHistory$orders$edges) then,
  ) = _CopyWithImpl$Query$GetHistory$orders$edges;

  factory CopyWith$Query$GetHistory$orders$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetHistory$orders$edges;

  TRes call({Query$GetHistory$orders$edges$node? node});
  CopyWith$Query$GetHistory$orders$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetHistory$orders$edges<TRes>
    implements CopyWith$Query$GetHistory$orders$edges<TRes> {
  _CopyWithImpl$Query$GetHistory$orders$edges(
    this._instance,
    this._then,
  );

  final Query$GetHistory$orders$edges _instance;

  final TRes Function(Query$GetHistory$orders$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined}) => _then(Query$GetHistory$orders$edges(
      node: node == _undefined || node == null
          ? _instance.node
          : (node as Query$GetHistory$orders$edges$node)));
  CopyWith$Query$GetHistory$orders$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$GetHistory$orders$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetHistory$orders$edges<TRes>
    implements CopyWith$Query$GetHistory$orders$edges<TRes> {
  _CopyWithStubImpl$Query$GetHistory$orders$edges(this._res);

  TRes _res;

  call({Query$GetHistory$orders$edges$node? node}) => _res;
  CopyWith$Query$GetHistory$orders$edges$node<TRes> get node =>
      CopyWith$Query$GetHistory$orders$edges$node.stub(_res);
}

class Query$GetHistory$orders$edges$node {
  Query$GetHistory$orders$edges$node({
    required this.id,
    required this.status,
    required this.createdOn,
    required this.addresses,
    required this.currency,
    required this.costAfterCoupon,
    this.service,
  });

  factory Query$GetHistory$orders$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$createdOn = json['createdOn'];
    final l$addresses = json['addresses'];
    final l$currency = json['currency'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$service = json['service'];
    return Query$GetHistory$orders$edges$node(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      createdOn: fromGraphQLTimestampToDartDateTime(l$createdOn),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      currency: (l$currency as String),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      service: l$service == null
          ? null
          : Query$GetHistory$orders$edges$node$service.fromJson(
              (l$service as Map<String, dynamic>)),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final DateTime createdOn;

  final List<String> addresses;

  final String currency;

  final double costAfterCoupon;

  final Query$GetHistory$orders$edges$node$service? service;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$createdOn = createdOn;
    _resultData['createdOn'] = fromDartDateTimeToGraphQLTimestamp(l$createdOn);
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$createdOn = createdOn;
    final l$addresses = addresses;
    final l$currency = currency;
    final l$costAfterCoupon = costAfterCoupon;
    final l$service = service;
    return Object.hashAll([
      l$id,
      l$status,
      l$createdOn,
      Object.hashAll(l$addresses.map((v) => v)),
      l$currency,
      l$costAfterCoupon,
      l$service,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetHistory$orders$edges$node) ||
        runtimeType != other.runtimeType) {
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
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
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
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetHistory$orders$edges$node
    on Query$GetHistory$orders$edges$node {
  CopyWith$Query$GetHistory$orders$edges$node<
          Query$GetHistory$orders$edges$node>
      get copyWith => CopyWith$Query$GetHistory$orders$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetHistory$orders$edges$node<TRes> {
  factory CopyWith$Query$GetHistory$orders$edges$node(
    Query$GetHistory$orders$edges$node instance,
    TRes Function(Query$GetHistory$orders$edges$node) then,
  ) = _CopyWithImpl$Query$GetHistory$orders$edges$node;

  factory CopyWith$Query$GetHistory$orders$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetHistory$orders$edges$node;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    DateTime? createdOn,
    List<String>? addresses,
    String? currency,
    double? costAfterCoupon,
    Query$GetHistory$orders$edges$node$service? service,
  });
  CopyWith$Query$GetHistory$orders$edges$node$service<TRes> get service;
}

class _CopyWithImpl$Query$GetHistory$orders$edges$node<TRes>
    implements CopyWith$Query$GetHistory$orders$edges$node<TRes> {
  _CopyWithImpl$Query$GetHistory$orders$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetHistory$orders$edges$node _instance;

  final TRes Function(Query$GetHistory$orders$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? createdOn = _undefined,
    Object? addresses = _undefined,
    Object? currency = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Query$GetHistory$orders$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        costAfterCoupon:
            costAfterCoupon == _undefined || costAfterCoupon == null
                ? _instance.costAfterCoupon
                : (costAfterCoupon as double),
        service: service == _undefined
            ? _instance.service
            : (service as Query$GetHistory$orders$edges$node$service?),
      ));
  CopyWith$Query$GetHistory$orders$edges$node$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$GetHistory$orders$edges$node$service.stub(
            _then(_instance))
        : CopyWith$Query$GetHistory$orders$edges$node$service(
            local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$GetHistory$orders$edges$node<TRes>
    implements CopyWith$Query$GetHistory$orders$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetHistory$orders$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    DateTime? createdOn,
    List<String>? addresses,
    String? currency,
    double? costAfterCoupon,
    Query$GetHistory$orders$edges$node$service? service,
  }) =>
      _res;
  CopyWith$Query$GetHistory$orders$edges$node$service<TRes> get service =>
      CopyWith$Query$GetHistory$orders$edges$node$service.stub(_res);
}

class Query$GetHistory$orders$edges$node$service {
  Query$GetHistory$orders$edges$node$service({
    required this.media,
    required this.name,
  });

  factory Query$GetHistory$orders$edges$node$service.fromJson(
      Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$name = json['name'];
    return Query$GetHistory$orders$edges$node$service(
      media: Query$GetHistory$orders$edges$node$service$media.fromJson(
          (l$media as Map<String, dynamic>)),
      name: (l$name as String),
    );
  }

  final Query$GetHistory$orders$edges$node$service$media media;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$name = name;
    return Object.hashAll([
      l$media,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetHistory$orders$edges$node$service) ||
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
    return true;
  }
}

extension UtilityExtension$Query$GetHistory$orders$edges$node$service
    on Query$GetHistory$orders$edges$node$service {
  CopyWith$Query$GetHistory$orders$edges$node$service<
          Query$GetHistory$orders$edges$node$service>
      get copyWith => CopyWith$Query$GetHistory$orders$edges$node$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetHistory$orders$edges$node$service<TRes> {
  factory CopyWith$Query$GetHistory$orders$edges$node$service(
    Query$GetHistory$orders$edges$node$service instance,
    TRes Function(Query$GetHistory$orders$edges$node$service) then,
  ) = _CopyWithImpl$Query$GetHistory$orders$edges$node$service;

  factory CopyWith$Query$GetHistory$orders$edges$node$service.stub(TRes res) =
      _CopyWithStubImpl$Query$GetHistory$orders$edges$node$service;

  TRes call({
    Query$GetHistory$orders$edges$node$service$media? media,
    String? name,
  });
  CopyWith$Query$GetHistory$orders$edges$node$service$media<TRes> get media;
}

class _CopyWithImpl$Query$GetHistory$orders$edges$node$service<TRes>
    implements CopyWith$Query$GetHistory$orders$edges$node$service<TRes> {
  _CopyWithImpl$Query$GetHistory$orders$edges$node$service(
    this._instance,
    this._then,
  );

  final Query$GetHistory$orders$edges$node$service _instance;

  final TRes Function(Query$GetHistory$orders$edges$node$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$GetHistory$orders$edges$node$service(
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Query$GetHistory$orders$edges$node$service$media),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
  CopyWith$Query$GetHistory$orders$edges$node$service$media<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetHistory$orders$edges$node$service$media(
        local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetHistory$orders$edges$node$service<TRes>
    implements CopyWith$Query$GetHistory$orders$edges$node$service<TRes> {
  _CopyWithStubImpl$Query$GetHistory$orders$edges$node$service(this._res);

  TRes _res;

  call({
    Query$GetHistory$orders$edges$node$service$media? media,
    String? name,
  }) =>
      _res;
  CopyWith$Query$GetHistory$orders$edges$node$service$media<TRes> get media =>
      CopyWith$Query$GetHistory$orders$edges$node$service$media.stub(_res);
}

class Query$GetHistory$orders$edges$node$service$media {
  Query$GetHistory$orders$edges$node$service$media({required this.address});

  factory Query$GetHistory$orders$edges$node$service$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetHistory$orders$edges$node$service$media(
        address: (l$address as String));
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
    if (!(other is Query$GetHistory$orders$edges$node$service$media) ||
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

extension UtilityExtension$Query$GetHistory$orders$edges$node$service$media
    on Query$GetHistory$orders$edges$node$service$media {
  CopyWith$Query$GetHistory$orders$edges$node$service$media<
          Query$GetHistory$orders$edges$node$service$media>
      get copyWith => CopyWith$Query$GetHistory$orders$edges$node$service$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetHistory$orders$edges$node$service$media<TRes> {
  factory CopyWith$Query$GetHistory$orders$edges$node$service$media(
    Query$GetHistory$orders$edges$node$service$media instance,
    TRes Function(Query$GetHistory$orders$edges$node$service$media) then,
  ) = _CopyWithImpl$Query$GetHistory$orders$edges$node$service$media;

  factory CopyWith$Query$GetHistory$orders$edges$node$service$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetHistory$orders$edges$node$service$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetHistory$orders$edges$node$service$media<TRes>
    implements CopyWith$Query$GetHistory$orders$edges$node$service$media<TRes> {
  _CopyWithImpl$Query$GetHistory$orders$edges$node$service$media(
    this._instance,
    this._then,
  );

  final Query$GetHistory$orders$edges$node$service$media _instance;

  final TRes Function(Query$GetHistory$orders$edges$node$service$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetHistory$orders$edges$node$service$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetHistory$orders$edges$node$service$media<TRes>
    implements CopyWith$Query$GetHistory$orders$edges$node$service$media<TRes> {
  _CopyWithStubImpl$Query$GetHistory$orders$edges$node$service$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$GetHistory$orders$pageInfo {
  Query$GetHistory$orders$pageInfo({
    this.hasNextPage,
    this.endCursor,
    this.startCursor,
    this.hasPreviousPage,
  });

  factory Query$GetHistory$orders$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$startCursor = json['startCursor'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    return Query$GetHistory$orders$pageInfo(
      hasNextPage: (l$hasNextPage as bool?),
      endCursor: l$endCursor == null
          ? null
          : fromGraphQLConnectionCursorToDartString(l$endCursor),
      startCursor: l$startCursor == null
          ? null
          : fromGraphQLConnectionCursorToDartString(l$startCursor),
      hasPreviousPage: (l$hasPreviousPage as bool?),
    );
  }

  final bool? hasNextPage;

  final String? endCursor;

  final String? startCursor;

  final bool? hasPreviousPage;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor == null
        ? null
        : fromDartStringToGraphQLConnectionCursor(l$endCursor);
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor == null
        ? null
        : fromDartStringToGraphQLConnectionCursor(l$startCursor);
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$startCursor = startCursor;
    final l$hasPreviousPage = hasPreviousPage;
    return Object.hashAll([
      l$hasNextPage,
      l$endCursor,
      l$startCursor,
      l$hasPreviousPage,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetHistory$orders$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetHistory$orders$pageInfo
    on Query$GetHistory$orders$pageInfo {
  CopyWith$Query$GetHistory$orders$pageInfo<Query$GetHistory$orders$pageInfo>
      get copyWith => CopyWith$Query$GetHistory$orders$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetHistory$orders$pageInfo<TRes> {
  factory CopyWith$Query$GetHistory$orders$pageInfo(
    Query$GetHistory$orders$pageInfo instance,
    TRes Function(Query$GetHistory$orders$pageInfo) then,
  ) = _CopyWithImpl$Query$GetHistory$orders$pageInfo;

  factory CopyWith$Query$GetHistory$orders$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetHistory$orders$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? startCursor,
    bool? hasPreviousPage,
  });
}

class _CopyWithImpl$Query$GetHistory$orders$pageInfo<TRes>
    implements CopyWith$Query$GetHistory$orders$pageInfo<TRes> {
  _CopyWithImpl$Query$GetHistory$orders$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetHistory$orders$pageInfo _instance;

  final TRes Function(Query$GetHistory$orders$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? startCursor = _undefined,
    Object? hasPreviousPage = _undefined,
  }) =>
      _then(Query$GetHistory$orders$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        hasPreviousPage: hasPreviousPage == _undefined
            ? _instance.hasPreviousPage
            : (hasPreviousPage as bool?),
      ));
}

class _CopyWithStubImpl$Query$GetHistory$orders$pageInfo<TRes>
    implements CopyWith$Query$GetHistory$orders$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetHistory$orders$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? startCursor,
    bool? hasPreviousPage,
  }) =>
      _res;
}

class Variables$Query$GetOrderDetails {
  factory Variables$Query$GetOrderDetails({required String id}) =>
      Variables$Query$GetOrderDetails._({
        r'id': id,
      });

  Variables$Query$GetOrderDetails._(this._$data);

  factory Variables$Query$GetOrderDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetOrderDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetOrderDetails<Variables$Query$GetOrderDetails>
      get copyWith => CopyWith$Variables$Query$GetOrderDetails(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetOrderDetails) ||
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

abstract class CopyWith$Variables$Query$GetOrderDetails<TRes> {
  factory CopyWith$Variables$Query$GetOrderDetails(
    Variables$Query$GetOrderDetails instance,
    TRes Function(Variables$Query$GetOrderDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetOrderDetails;

  factory CopyWith$Variables$Query$GetOrderDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetOrderDetails;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetOrderDetails<TRes>
    implements CopyWith$Variables$Query$GetOrderDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetOrderDetails(
    this._instance,
    this._then,
  );

  final Variables$Query$GetOrderDetails _instance;

  final TRes Function(Variables$Query$GetOrderDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetOrderDetails._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetOrderDetails<TRes>
    implements CopyWith$Variables$Query$GetOrderDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetOrderDetails(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetOrderDetails {
  Query$GetOrderDetails({this.order});

  factory Query$GetOrderDetails.fromJson(Map<String, dynamic> json) {
    final l$order = json['order'];
    return Query$GetOrderDetails(
        order: l$order == null
            ? null
            : Query$GetOrderDetails$order.fromJson(
                (l$order as Map<String, dynamic>)));
  }

  final Query$GetOrderDetails$order? order;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    return Object.hashAll([l$order]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrderDetails) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrderDetails on Query$GetOrderDetails {
  CopyWith$Query$GetOrderDetails<Query$GetOrderDetails> get copyWith =>
      CopyWith$Query$GetOrderDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetOrderDetails<TRes> {
  factory CopyWith$Query$GetOrderDetails(
    Query$GetOrderDetails instance,
    TRes Function(Query$GetOrderDetails) then,
  ) = _CopyWithImpl$Query$GetOrderDetails;

  factory CopyWith$Query$GetOrderDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails;

  TRes call({Query$GetOrderDetails$order? order});
  CopyWith$Query$GetOrderDetails$order<TRes> get order;
}

class _CopyWithImpl$Query$GetOrderDetails<TRes>
    implements CopyWith$Query$GetOrderDetails<TRes> {
  _CopyWithImpl$Query$GetOrderDetails(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails _instance;

  final TRes Function(Query$GetOrderDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined}) => _then(Query$GetOrderDetails(
      order: order == _undefined
          ? _instance.order
          : (order as Query$GetOrderDetails$order?)));
  CopyWith$Query$GetOrderDetails$order<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith$Query$GetOrderDetails$order.stub(_then(_instance))
        : CopyWith$Query$GetOrderDetails$order(
            local$order, (e) => call(order: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderDetails<TRes>
    implements CopyWith$Query$GetOrderDetails<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails(this._res);

  TRes _res;

  call({Query$GetOrderDetails$order? order}) => _res;
  CopyWith$Query$GetOrderDetails$order<TRes> get order =>
      CopyWith$Query$GetOrderDetails$order.stub(_res);
}

const documentNodeQueryGetOrderDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetOrderDetails'),
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
        name: NameNode(value: 'order'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'points'),
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
            name: NameNode(value: 'addresses'),
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
            name: NameNode(value: 'currency'),
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
            name: NameNode(value: 'finishTimestamp'),
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
            name: NameNode(value: 'driver'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'rating'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'service'),
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
          ),
          FieldNode(
            name: NameNode(value: 'paymentGateway'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'title'),
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
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionPoint,
]);
Query$GetOrderDetails _parserFn$Query$GetOrderDetails(
        Map<String, dynamic> data) =>
    Query$GetOrderDetails.fromJson(data);
typedef OnQueryComplete$Query$GetOrderDetails = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetOrderDetails?,
);

class Options$Query$GetOrderDetails
    extends graphql.QueryOptions<Query$GetOrderDetails> {
  Options$Query$GetOrderDetails({
    String? operationName,
    required Variables$Query$GetOrderDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetOrderDetails? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetOrderDetails? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$GetOrderDetails(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetOrderDetails,
          parserFn: _parserFn$Query$GetOrderDetails,
        );

  final OnQueryComplete$Query$GetOrderDetails? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetOrderDetails
    extends graphql.WatchQueryOptions<Query$GetOrderDetails> {
  WatchOptions$Query$GetOrderDetails({
    String? operationName,
    required Variables$Query$GetOrderDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetOrderDetails? typedOptimisticResult,
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
          document: documentNodeQueryGetOrderDetails,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetOrderDetails,
        );
}

class FetchMoreOptions$Query$GetOrderDetails extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetOrderDetails({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetOrderDetails variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetOrderDetails,
        );
}

extension ClientExtension$Query$GetOrderDetails on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetOrderDetails>> query$GetOrderDetails(
          Options$Query$GetOrderDetails options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetOrderDetails> watchQuery$GetOrderDetails(
          WatchOptions$Query$GetOrderDetails options) =>
      this.watchQuery(options);
  void writeQuery$GetOrderDetails({
    required Query$GetOrderDetails data,
    required Variables$Query$GetOrderDetails variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetOrderDetails),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetOrderDetails? readQuery$GetOrderDetails({
    required Variables$Query$GetOrderDetails variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetOrderDetails),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetOrderDetails.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetOrderDetails> useQuery$GetOrderDetails(
        Options$Query$GetOrderDetails options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetOrderDetails> useWatchQuery$GetOrderDetails(
        WatchOptions$Query$GetOrderDetails options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetOrderDetails$Widget
    extends graphql_flutter.Query<Query$GetOrderDetails> {
  Query$GetOrderDetails$Widget({
    widgets.Key? key,
    required Options$Query$GetOrderDetails options,
    required graphql_flutter.QueryBuilder<Query$GetOrderDetails> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetOrderDetails$order {
  Query$GetOrderDetails$order({
    required this.points,
    required this.addresses,
    required this.costAfterCoupon,
    required this.currency,
    this.startTimestamp,
    this.finishTimestamp,
    required this.expectedTimestamp,
    this.driver,
    this.service,
    this.paymentGateway,
  });

  factory Query$GetOrderDetails$order.fromJson(Map<String, dynamic> json) {
    final l$points = json['points'];
    final l$addresses = json['addresses'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$currency = json['currency'];
    final l$startTimestamp = json['startTimestamp'];
    final l$finishTimestamp = json['finishTimestamp'];
    final l$expectedTimestamp = json['expectedTimestamp'];
    final l$driver = json['driver'];
    final l$service = json['service'];
    final l$paymentGateway = json['paymentGateway'];
    return Query$GetOrderDetails$order(
      points: (l$points as List<dynamic>)
          .map((e) => Query$GetOrderDetails$order$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      currency: (l$currency as String),
      startTimestamp: l$startTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$startTimestamp),
      finishTimestamp: l$finishTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$finishTimestamp),
      expectedTimestamp:
          fromGraphQLTimestampToDartDateTime(l$expectedTimestamp),
      driver: l$driver == null
          ? null
          : Query$GetOrderDetails$order$driver.fromJson(
              (l$driver as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Query$GetOrderDetails$order$service.fromJson(
              (l$service as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Query$GetOrderDetails$order$paymentGateway.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
    );
  }

  final List<Query$GetOrderDetails$order$points> points;

  final List<String> addresses;

  final double costAfterCoupon;

  final String currency;

  final DateTime? startTimestamp;

  final DateTime? finishTimestamp;

  final DateTime expectedTimestamp;

  final Query$GetOrderDetails$order$driver? driver;

  final Query$GetOrderDetails$order$service? service;

  final Query$GetOrderDetails$order$paymentGateway? paymentGateway;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$startTimestamp = startTimestamp;
    _resultData['startTimestamp'] = l$startTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$startTimestamp);
    final l$finishTimestamp = finishTimestamp;
    _resultData['finishTimestamp'] = l$finishTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$finishTimestamp);
    final l$expectedTimestamp = expectedTimestamp;
    _resultData['expectedTimestamp'] =
        fromDartDateTimeToGraphQLTimestamp(l$expectedTimestamp);
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$paymentGateway = paymentGateway;
    _resultData['paymentGateway'] = l$paymentGateway?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$points = points;
    final l$addresses = addresses;
    final l$costAfterCoupon = costAfterCoupon;
    final l$currency = currency;
    final l$startTimestamp = startTimestamp;
    final l$finishTimestamp = finishTimestamp;
    final l$expectedTimestamp = expectedTimestamp;
    final l$driver = driver;
    final l$service = service;
    final l$paymentGateway = paymentGateway;
    return Object.hashAll([
      Object.hashAll(l$points.map((v) => v)),
      Object.hashAll(l$addresses.map((v) => v)),
      l$costAfterCoupon,
      l$currency,
      l$startTimestamp,
      l$finishTimestamp,
      l$expectedTimestamp,
      l$driver,
      l$service,
      l$paymentGateway,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrderDetails$order) ||
        runtimeType != other.runtimeType) {
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
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$startTimestamp = startTimestamp;
    final lOther$startTimestamp = other.startTimestamp;
    if (l$startTimestamp != lOther$startTimestamp) {
      return false;
    }
    final l$finishTimestamp = finishTimestamp;
    final lOther$finishTimestamp = other.finishTimestamp;
    if (l$finishTimestamp != lOther$finishTimestamp) {
      return false;
    }
    final l$expectedTimestamp = expectedTimestamp;
    final lOther$expectedTimestamp = other.expectedTimestamp;
    if (l$expectedTimestamp != lOther$expectedTimestamp) {
      return false;
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
    final l$paymentGateway = paymentGateway;
    final lOther$paymentGateway = other.paymentGateway;
    if (l$paymentGateway != lOther$paymentGateway) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrderDetails$order
    on Query$GetOrderDetails$order {
  CopyWith$Query$GetOrderDetails$order<Query$GetOrderDetails$order>
      get copyWith => CopyWith$Query$GetOrderDetails$order(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order<TRes> {
  factory CopyWith$Query$GetOrderDetails$order(
    Query$GetOrderDetails$order instance,
    TRes Function(Query$GetOrderDetails$order) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order;

  factory CopyWith$Query$GetOrderDetails$order.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order;

  TRes call({
    List<Query$GetOrderDetails$order$points>? points,
    List<String>? addresses,
    double? costAfterCoupon,
    String? currency,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    DateTime? expectedTimestamp,
    Query$GetOrderDetails$order$driver? driver,
    Query$GetOrderDetails$order$service? service,
    Query$GetOrderDetails$order$paymentGateway? paymentGateway,
  });
  TRes points(
      Iterable<Query$GetOrderDetails$order$points> Function(
              Iterable<
                  CopyWith$Query$GetOrderDetails$order$points<
                      Query$GetOrderDetails$order$points>>)
          _fn);
  CopyWith$Query$GetOrderDetails$order$driver<TRes> get driver;
  CopyWith$Query$GetOrderDetails$order$service<TRes> get service;
  CopyWith$Query$GetOrderDetails$order$paymentGateway<TRes> get paymentGateway;
}

class _CopyWithImpl$Query$GetOrderDetails$order<TRes>
    implements CopyWith$Query$GetOrderDetails$order<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order _instance;

  final TRes Function(Query$GetOrderDetails$order) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? points = _undefined,
    Object? addresses = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? currency = _undefined,
    Object? startTimestamp = _undefined,
    Object? finishTimestamp = _undefined,
    Object? expectedTimestamp = _undefined,
    Object? driver = _undefined,
    Object? service = _undefined,
    Object? paymentGateway = _undefined,
  }) =>
      _then(Query$GetOrderDetails$order(
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Query$GetOrderDetails$order$points>),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        costAfterCoupon:
            costAfterCoupon == _undefined || costAfterCoupon == null
                ? _instance.costAfterCoupon
                : (costAfterCoupon as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        startTimestamp: startTimestamp == _undefined
            ? _instance.startTimestamp
            : (startTimestamp as DateTime?),
        finishTimestamp: finishTimestamp == _undefined
            ? _instance.finishTimestamp
            : (finishTimestamp as DateTime?),
        expectedTimestamp:
            expectedTimestamp == _undefined || expectedTimestamp == null
                ? _instance.expectedTimestamp
                : (expectedTimestamp as DateTime),
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Query$GetOrderDetails$order$driver?),
        service: service == _undefined
            ? _instance.service
            : (service as Query$GetOrderDetails$order$service?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway as Query$GetOrderDetails$order$paymentGateway?),
      ));
  TRes points(
          Iterable<Query$GetOrderDetails$order$points> Function(
                  Iterable<
                      CopyWith$Query$GetOrderDetails$order$points<
                          Query$GetOrderDetails$order$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points
              .map((e) => CopyWith$Query$GetOrderDetails$order$points(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$GetOrderDetails$order$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Query$GetOrderDetails$order$driver.stub(_then(_instance))
        : CopyWith$Query$GetOrderDetails$order$driver(
            local$driver, (e) => call(driver: e));
  }

  CopyWith$Query$GetOrderDetails$order$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$GetOrderDetails$order$service.stub(_then(_instance))
        : CopyWith$Query$GetOrderDetails$order$service(
            local$service, (e) => call(service: e));
  }

  CopyWith$Query$GetOrderDetails$order$paymentGateway<TRes> get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Query$GetOrderDetails$order$paymentGateway.stub(
            _then(_instance))
        : CopyWith$Query$GetOrderDetails$order$paymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderDetails$order<TRes>
    implements CopyWith$Query$GetOrderDetails$order<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order(this._res);

  TRes _res;

  call({
    List<Query$GetOrderDetails$order$points>? points,
    List<String>? addresses,
    double? costAfterCoupon,
    String? currency,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    DateTime? expectedTimestamp,
    Query$GetOrderDetails$order$driver? driver,
    Query$GetOrderDetails$order$service? service,
    Query$GetOrderDetails$order$paymentGateway? paymentGateway,
  }) =>
      _res;
  points(_fn) => _res;
  CopyWith$Query$GetOrderDetails$order$driver<TRes> get driver =>
      CopyWith$Query$GetOrderDetails$order$driver.stub(_res);
  CopyWith$Query$GetOrderDetails$order$service<TRes> get service =>
      CopyWith$Query$GetOrderDetails$order$service.stub(_res);
  CopyWith$Query$GetOrderDetails$order$paymentGateway<TRes>
      get paymentGateway =>
          CopyWith$Query$GetOrderDetails$order$paymentGateway.stub(_res);
}

class Query$GetOrderDetails$order$points implements Fragment$Point {
  Query$GetOrderDetails$order$points({
    required this.lat,
    required this.lng,
  });

  factory Query$GetOrderDetails$order$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$GetOrderDetails$order$points(
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
    if (!(other is Query$GetOrderDetails$order$points) ||
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

extension UtilityExtension$Query$GetOrderDetails$order$points
    on Query$GetOrderDetails$order$points {
  CopyWith$Query$GetOrderDetails$order$points<
          Query$GetOrderDetails$order$points>
      get copyWith => CopyWith$Query$GetOrderDetails$order$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order$points<TRes> {
  factory CopyWith$Query$GetOrderDetails$order$points(
    Query$GetOrderDetails$order$points instance,
    TRes Function(Query$GetOrderDetails$order$points) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order$points;

  factory CopyWith$Query$GetOrderDetails$order$points.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order$points;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$GetOrderDetails$order$points<TRes>
    implements CopyWith$Query$GetOrderDetails$order$points<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order$points(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order$points _instance;

  final TRes Function(Query$GetOrderDetails$order$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$GetOrderDetails$order$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$GetOrderDetails$order$points<TRes>
    implements CopyWith$Query$GetOrderDetails$order$points<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Query$GetOrderDetails$order$driver {
  Query$GetOrderDetails$order$driver({
    this.firstName,
    this.lastName,
    this.rating,
    this.carPlate,
    this.media,
    this.car,
  });

  factory Query$GetOrderDetails$order$driver.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$rating = json['rating'];
    final l$carPlate = json['carPlate'];
    final l$media = json['media'];
    final l$car = json['car'];
    return Query$GetOrderDetails$order$driver(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      rating: (l$rating as int?),
      carPlate: (l$carPlate as String?),
      media: l$media == null
          ? null
          : Query$GetOrderDetails$order$driver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      car: l$car == null
          ? null
          : Query$GetOrderDetails$order$driver$car.fromJson(
              (l$car as Map<String, dynamic>)),
    );
  }

  final String? firstName;

  final String? lastName;

  final int? rating;

  final String? carPlate;

  final Query$GetOrderDetails$order$driver$media? media;

  final Query$GetOrderDetails$order$driver$car? car;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$carPlate = carPlate;
    _resultData['carPlate'] = l$carPlate;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$car = car;
    _resultData['car'] = l$car?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$rating = rating;
    final l$carPlate = carPlate;
    final l$media = media;
    final l$car = car;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$rating,
      l$carPlate,
      l$media,
      l$car,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrderDetails$order$driver) ||
        runtimeType != other.runtimeType) {
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
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (l$carPlate != lOther$carPlate) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$car = car;
    final lOther$car = other.car;
    if (l$car != lOther$car) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrderDetails$order$driver
    on Query$GetOrderDetails$order$driver {
  CopyWith$Query$GetOrderDetails$order$driver<
          Query$GetOrderDetails$order$driver>
      get copyWith => CopyWith$Query$GetOrderDetails$order$driver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order$driver<TRes> {
  factory CopyWith$Query$GetOrderDetails$order$driver(
    Query$GetOrderDetails$order$driver instance,
    TRes Function(Query$GetOrderDetails$order$driver) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order$driver;

  factory CopyWith$Query$GetOrderDetails$order$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order$driver;

  TRes call({
    String? firstName,
    String? lastName,
    int? rating,
    String? carPlate,
    Query$GetOrderDetails$order$driver$media? media,
    Query$GetOrderDetails$order$driver$car? car,
  });
  CopyWith$Query$GetOrderDetails$order$driver$media<TRes> get media;
  CopyWith$Query$GetOrderDetails$order$driver$car<TRes> get car;
}

class _CopyWithImpl$Query$GetOrderDetails$order$driver<TRes>
    implements CopyWith$Query$GetOrderDetails$order$driver<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order$driver(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order$driver _instance;

  final TRes Function(Query$GetOrderDetails$order$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? rating = _undefined,
    Object? carPlate = _undefined,
    Object? media = _undefined,
    Object? car = _undefined,
  }) =>
      _then(Query$GetOrderDetails$order$driver(
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetOrderDetails$order$driver$media?),
        car: car == _undefined
            ? _instance.car
            : (car as Query$GetOrderDetails$order$driver$car?),
      ));
  CopyWith$Query$GetOrderDetails$order$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetOrderDetails$order$driver$media.stub(
            _then(_instance))
        : CopyWith$Query$GetOrderDetails$order$driver$media(
            local$media, (e) => call(media: e));
  }

  CopyWith$Query$GetOrderDetails$order$driver$car<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Query$GetOrderDetails$order$driver$car.stub(_then(_instance))
        : CopyWith$Query$GetOrderDetails$order$driver$car(
            local$car, (e) => call(car: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderDetails$order$driver<TRes>
    implements CopyWith$Query$GetOrderDetails$order$driver<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order$driver(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    int? rating,
    String? carPlate,
    Query$GetOrderDetails$order$driver$media? media,
    Query$GetOrderDetails$order$driver$car? car,
  }) =>
      _res;
  CopyWith$Query$GetOrderDetails$order$driver$media<TRes> get media =>
      CopyWith$Query$GetOrderDetails$order$driver$media.stub(_res);
  CopyWith$Query$GetOrderDetails$order$driver$car<TRes> get car =>
      CopyWith$Query$GetOrderDetails$order$driver$car.stub(_res);
}

class Query$GetOrderDetails$order$driver$media {
  Query$GetOrderDetails$order$driver$media({required this.address});

  factory Query$GetOrderDetails$order$driver$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetOrderDetails$order$driver$media(
        address: (l$address as String));
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
    if (!(other is Query$GetOrderDetails$order$driver$media) ||
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

extension UtilityExtension$Query$GetOrderDetails$order$driver$media
    on Query$GetOrderDetails$order$driver$media {
  CopyWith$Query$GetOrderDetails$order$driver$media<
          Query$GetOrderDetails$order$driver$media>
      get copyWith => CopyWith$Query$GetOrderDetails$order$driver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order$driver$media<TRes> {
  factory CopyWith$Query$GetOrderDetails$order$driver$media(
    Query$GetOrderDetails$order$driver$media instance,
    TRes Function(Query$GetOrderDetails$order$driver$media) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order$driver$media;

  factory CopyWith$Query$GetOrderDetails$order$driver$media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order$driver$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetOrderDetails$order$driver$media<TRes>
    implements CopyWith$Query$GetOrderDetails$order$driver$media<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order$driver$media(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order$driver$media _instance;

  final TRes Function(Query$GetOrderDetails$order$driver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetOrderDetails$order$driver$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetOrderDetails$order$driver$media<TRes>
    implements CopyWith$Query$GetOrderDetails$order$driver$media<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order$driver$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$GetOrderDetails$order$driver$car {
  Query$GetOrderDetails$order$driver$car({required this.name});

  factory Query$GetOrderDetails$order$driver$car.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$GetOrderDetails$order$driver$car(name: (l$name as String));
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
    if (!(other is Query$GetOrderDetails$order$driver$car) ||
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

extension UtilityExtension$Query$GetOrderDetails$order$driver$car
    on Query$GetOrderDetails$order$driver$car {
  CopyWith$Query$GetOrderDetails$order$driver$car<
          Query$GetOrderDetails$order$driver$car>
      get copyWith => CopyWith$Query$GetOrderDetails$order$driver$car(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order$driver$car<TRes> {
  factory CopyWith$Query$GetOrderDetails$order$driver$car(
    Query$GetOrderDetails$order$driver$car instance,
    TRes Function(Query$GetOrderDetails$order$driver$car) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order$driver$car;

  factory CopyWith$Query$GetOrderDetails$order$driver$car.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order$driver$car;

  TRes call({String? name});
}

class _CopyWithImpl$Query$GetOrderDetails$order$driver$car<TRes>
    implements CopyWith$Query$GetOrderDetails$order$driver$car<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order$driver$car(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order$driver$car _instance;

  final TRes Function(Query$GetOrderDetails$order$driver$car) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Query$GetOrderDetails$order$driver$car(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$GetOrderDetails$order$driver$car<TRes>
    implements CopyWith$Query$GetOrderDetails$order$driver$car<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order$driver$car(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GetOrderDetails$order$service {
  Query$GetOrderDetails$order$service({
    required this.name,
    required this.media,
  });

  factory Query$GetOrderDetails$order$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$media = json['media'];
    return Query$GetOrderDetails$order$service(
      name: (l$name as String),
      media: Query$GetOrderDetails$order$service$media.fromJson(
          (l$media as Map<String, dynamic>)),
    );
  }

  final String name;

  final Query$GetOrderDetails$order$service$media media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$media = media;
    return Object.hashAll([
      l$name,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrderDetails$order$service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetOrderDetails$order$service
    on Query$GetOrderDetails$order$service {
  CopyWith$Query$GetOrderDetails$order$service<
          Query$GetOrderDetails$order$service>
      get copyWith => CopyWith$Query$GetOrderDetails$order$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order$service<TRes> {
  factory CopyWith$Query$GetOrderDetails$order$service(
    Query$GetOrderDetails$order$service instance,
    TRes Function(Query$GetOrderDetails$order$service) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order$service;

  factory CopyWith$Query$GetOrderDetails$order$service.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order$service;

  TRes call({
    String? name,
    Query$GetOrderDetails$order$service$media? media,
  });
  CopyWith$Query$GetOrderDetails$order$service$media<TRes> get media;
}

class _CopyWithImpl$Query$GetOrderDetails$order$service<TRes>
    implements CopyWith$Query$GetOrderDetails$order$service<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order$service(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order$service _instance;

  final TRes Function(Query$GetOrderDetails$order$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Query$GetOrderDetails$order$service(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Query$GetOrderDetails$order$service$media),
      ));
  CopyWith$Query$GetOrderDetails$order$service$media<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetOrderDetails$order$service$media(
        local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderDetails$order$service<TRes>
    implements CopyWith$Query$GetOrderDetails$order$service<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order$service(this._res);

  TRes _res;

  call({
    String? name,
    Query$GetOrderDetails$order$service$media? media,
  }) =>
      _res;
  CopyWith$Query$GetOrderDetails$order$service$media<TRes> get media =>
      CopyWith$Query$GetOrderDetails$order$service$media.stub(_res);
}

class Query$GetOrderDetails$order$service$media {
  Query$GetOrderDetails$order$service$media({required this.address});

  factory Query$GetOrderDetails$order$service$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetOrderDetails$order$service$media(
        address: (l$address as String));
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
    if (!(other is Query$GetOrderDetails$order$service$media) ||
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

extension UtilityExtension$Query$GetOrderDetails$order$service$media
    on Query$GetOrderDetails$order$service$media {
  CopyWith$Query$GetOrderDetails$order$service$media<
          Query$GetOrderDetails$order$service$media>
      get copyWith => CopyWith$Query$GetOrderDetails$order$service$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order$service$media<TRes> {
  factory CopyWith$Query$GetOrderDetails$order$service$media(
    Query$GetOrderDetails$order$service$media instance,
    TRes Function(Query$GetOrderDetails$order$service$media) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order$service$media;

  factory CopyWith$Query$GetOrderDetails$order$service$media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order$service$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetOrderDetails$order$service$media<TRes>
    implements CopyWith$Query$GetOrderDetails$order$service$media<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order$service$media(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order$service$media _instance;

  final TRes Function(Query$GetOrderDetails$order$service$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetOrderDetails$order$service$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetOrderDetails$order$service$media<TRes>
    implements CopyWith$Query$GetOrderDetails$order$service$media<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order$service$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$GetOrderDetails$order$paymentGateway {
  Query$GetOrderDetails$order$paymentGateway({
    required this.title,
    this.media,
  });

  factory Query$GetOrderDetails$order$paymentGateway.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$media = json['media'];
    return Query$GetOrderDetails$order$paymentGateway(
      title: (l$title as String),
      media: l$media == null
          ? null
          : Query$GetOrderDetails$order$paymentGateway$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String title;

  final Query$GetOrderDetails$order$paymentGateway$media? media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$media = media;
    return Object.hashAll([
      l$title,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrderDetails$order$paymentGateway) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$GetOrderDetails$order$paymentGateway
    on Query$GetOrderDetails$order$paymentGateway {
  CopyWith$Query$GetOrderDetails$order$paymentGateway<
          Query$GetOrderDetails$order$paymentGateway>
      get copyWith => CopyWith$Query$GetOrderDetails$order$paymentGateway(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order$paymentGateway<TRes> {
  factory CopyWith$Query$GetOrderDetails$order$paymentGateway(
    Query$GetOrderDetails$order$paymentGateway instance,
    TRes Function(Query$GetOrderDetails$order$paymentGateway) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order$paymentGateway;

  factory CopyWith$Query$GetOrderDetails$order$paymentGateway.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order$paymentGateway;

  TRes call({
    String? title,
    Query$GetOrderDetails$order$paymentGateway$media? media,
  });
  CopyWith$Query$GetOrderDetails$order$paymentGateway$media<TRes> get media;
}

class _CopyWithImpl$Query$GetOrderDetails$order$paymentGateway<TRes>
    implements CopyWith$Query$GetOrderDetails$order$paymentGateway<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order$paymentGateway(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order$paymentGateway _instance;

  final TRes Function(Query$GetOrderDetails$order$paymentGateway) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Query$GetOrderDetails$order$paymentGateway(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetOrderDetails$order$paymentGateway$media?),
      ));
  CopyWith$Query$GetOrderDetails$order$paymentGateway$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetOrderDetails$order$paymentGateway$media.stub(
            _then(_instance))
        : CopyWith$Query$GetOrderDetails$order$paymentGateway$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderDetails$order$paymentGateway<TRes>
    implements CopyWith$Query$GetOrderDetails$order$paymentGateway<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order$paymentGateway(this._res);

  TRes _res;

  call({
    String? title,
    Query$GetOrderDetails$order$paymentGateway$media? media,
  }) =>
      _res;
  CopyWith$Query$GetOrderDetails$order$paymentGateway$media<TRes> get media =>
      CopyWith$Query$GetOrderDetails$order$paymentGateway$media.stub(_res);
}

class Query$GetOrderDetails$order$paymentGateway$media {
  Query$GetOrderDetails$order$paymentGateway$media({required this.address});

  factory Query$GetOrderDetails$order$paymentGateway$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetOrderDetails$order$paymentGateway$media(
        address: (l$address as String));
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
    if (!(other is Query$GetOrderDetails$order$paymentGateway$media) ||
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

extension UtilityExtension$Query$GetOrderDetails$order$paymentGateway$media
    on Query$GetOrderDetails$order$paymentGateway$media {
  CopyWith$Query$GetOrderDetails$order$paymentGateway$media<
          Query$GetOrderDetails$order$paymentGateway$media>
      get copyWith => CopyWith$Query$GetOrderDetails$order$paymentGateway$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetOrderDetails$order$paymentGateway$media<TRes> {
  factory CopyWith$Query$GetOrderDetails$order$paymentGateway$media(
    Query$GetOrderDetails$order$paymentGateway$media instance,
    TRes Function(Query$GetOrderDetails$order$paymentGateway$media) then,
  ) = _CopyWithImpl$Query$GetOrderDetails$order$paymentGateway$media;

  factory CopyWith$Query$GetOrderDetails$order$paymentGateway$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderDetails$order$paymentGateway$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetOrderDetails$order$paymentGateway$media<TRes>
    implements CopyWith$Query$GetOrderDetails$order$paymentGateway$media<TRes> {
  _CopyWithImpl$Query$GetOrderDetails$order$paymentGateway$media(
    this._instance,
    this._then,
  );

  final Query$GetOrderDetails$order$paymentGateway$media _instance;

  final TRes Function(Query$GetOrderDetails$order$paymentGateway$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetOrderDetails$order$paymentGateway$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetOrderDetails$order$paymentGateway$media<TRes>
    implements CopyWith$Query$GetOrderDetails$order$paymentGateway$media<TRes> {
  _CopyWithStubImpl$Query$GetOrderDetails$order$paymentGateway$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Variables$Mutation$CancelBooking {
  factory Variables$Mutation$CancelBooking({required String id}) =>
      Variables$Mutation$CancelBooking._({
        r'id': id,
      });

  Variables$Mutation$CancelBooking._(this._$data);

  factory Variables$Mutation$CancelBooking.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$CancelBooking._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$CancelBooking<Variables$Mutation$CancelBooking>
      get copyWith => CopyWith$Variables$Mutation$CancelBooking(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CancelBooking) ||
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

abstract class CopyWith$Variables$Mutation$CancelBooking<TRes> {
  factory CopyWith$Variables$Mutation$CancelBooking(
    Variables$Mutation$CancelBooking instance,
    TRes Function(Variables$Mutation$CancelBooking) then,
  ) = _CopyWithImpl$Variables$Mutation$CancelBooking;

  factory CopyWith$Variables$Mutation$CancelBooking.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CancelBooking;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$CancelBooking<TRes>
    implements CopyWith$Variables$Mutation$CancelBooking<TRes> {
  _CopyWithImpl$Variables$Mutation$CancelBooking(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CancelBooking _instance;

  final TRes Function(Variables$Mutation$CancelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$CancelBooking._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CancelBooking<TRes>
    implements CopyWith$Variables$Mutation$CancelBooking<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CancelBooking(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$CancelBooking {
  Mutation$CancelBooking({required this.cancelBooking});

  factory Mutation$CancelBooking.fromJson(Map<String, dynamic> json) {
    final l$cancelBooking = json['cancelBooking'];
    return Mutation$CancelBooking(
        cancelBooking: Mutation$CancelBooking$cancelBooking.fromJson(
            (l$cancelBooking as Map<String, dynamic>)));
  }

  final Mutation$CancelBooking$cancelBooking cancelBooking;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cancelBooking = cancelBooking;
    _resultData['cancelBooking'] = l$cancelBooking.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cancelBooking = cancelBooking;
    return Object.hashAll([l$cancelBooking]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CancelBooking) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cancelBooking = cancelBooking;
    final lOther$cancelBooking = other.cancelBooking;
    if (l$cancelBooking != lOther$cancelBooking) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CancelBooking on Mutation$CancelBooking {
  CopyWith$Mutation$CancelBooking<Mutation$CancelBooking> get copyWith =>
      CopyWith$Mutation$CancelBooking(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CancelBooking<TRes> {
  factory CopyWith$Mutation$CancelBooking(
    Mutation$CancelBooking instance,
    TRes Function(Mutation$CancelBooking) then,
  ) = _CopyWithImpl$Mutation$CancelBooking;

  factory CopyWith$Mutation$CancelBooking.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CancelBooking;

  TRes call({Mutation$CancelBooking$cancelBooking? cancelBooking});
  CopyWith$Mutation$CancelBooking$cancelBooking<TRes> get cancelBooking;
}

class _CopyWithImpl$Mutation$CancelBooking<TRes>
    implements CopyWith$Mutation$CancelBooking<TRes> {
  _CopyWithImpl$Mutation$CancelBooking(
    this._instance,
    this._then,
  );

  final Mutation$CancelBooking _instance;

  final TRes Function(Mutation$CancelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? cancelBooking = _undefined}) =>
      _then(Mutation$CancelBooking(
          cancelBooking: cancelBooking == _undefined || cancelBooking == null
              ? _instance.cancelBooking
              : (cancelBooking as Mutation$CancelBooking$cancelBooking)));
  CopyWith$Mutation$CancelBooking$cancelBooking<TRes> get cancelBooking {
    final local$cancelBooking = _instance.cancelBooking;
    return CopyWith$Mutation$CancelBooking$cancelBooking(
        local$cancelBooking, (e) => call(cancelBooking: e));
  }
}

class _CopyWithStubImpl$Mutation$CancelBooking<TRes>
    implements CopyWith$Mutation$CancelBooking<TRes> {
  _CopyWithStubImpl$Mutation$CancelBooking(this._res);

  TRes _res;

  call({Mutation$CancelBooking$cancelBooking? cancelBooking}) => _res;
  CopyWith$Mutation$CancelBooking$cancelBooking<TRes> get cancelBooking =>
      CopyWith$Mutation$CancelBooking$cancelBooking.stub(_res);
}

const documentNodeMutationCancelBooking = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CancelBooking'),
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
        name: NameNode(value: 'cancelBooking'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
Mutation$CancelBooking _parserFn$Mutation$CancelBooking(
        Map<String, dynamic> data) =>
    Mutation$CancelBooking.fromJson(data);
typedef OnMutationCompleted$Mutation$CancelBooking = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CancelBooking?,
);

class Options$Mutation$CancelBooking
    extends graphql.MutationOptions<Mutation$CancelBooking> {
  Options$Mutation$CancelBooking({
    String? operationName,
    required Variables$Mutation$CancelBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelBooking? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CancelBooking? onCompleted,
    graphql.OnMutationUpdate<Mutation$CancelBooking>? update,
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
                        : _parserFn$Mutation$CancelBooking(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCancelBooking,
          parserFn: _parserFn$Mutation$CancelBooking,
        );

  final OnMutationCompleted$Mutation$CancelBooking? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CancelBooking
    extends graphql.WatchQueryOptions<Mutation$CancelBooking> {
  WatchOptions$Mutation$CancelBooking({
    String? operationName,
    required Variables$Mutation$CancelBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelBooking? typedOptimisticResult,
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
          document: documentNodeMutationCancelBooking,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CancelBooking,
        );
}

extension ClientExtension$Mutation$CancelBooking on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CancelBooking>> mutate$CancelBooking(
          Options$Mutation$CancelBooking options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CancelBooking> watchMutation$CancelBooking(
          WatchOptions$Mutation$CancelBooking options) =>
      this.watchMutation(options);
}

class Mutation$CancelBooking$HookResult {
  Mutation$CancelBooking$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CancelBooking runMutation;

  final graphql.QueryResult<Mutation$CancelBooking> result;
}

Mutation$CancelBooking$HookResult useMutation$CancelBooking(
    [WidgetOptions$Mutation$CancelBooking? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CancelBooking());
  return Mutation$CancelBooking$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CancelBooking> useWatchMutation$CancelBooking(
        WatchOptions$Mutation$CancelBooking options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CancelBooking
    extends graphql.MutationOptions<Mutation$CancelBooking> {
  WidgetOptions$Mutation$CancelBooking({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelBooking? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CancelBooking? onCompleted,
    graphql.OnMutationUpdate<Mutation$CancelBooking>? update,
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
                        : _parserFn$Mutation$CancelBooking(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCancelBooking,
          parserFn: _parserFn$Mutation$CancelBooking,
        );

  final OnMutationCompleted$Mutation$CancelBooking? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CancelBooking
    = graphql.MultiSourceResult<Mutation$CancelBooking> Function(
  Variables$Mutation$CancelBooking, {
  Object? optimisticResult,
  Mutation$CancelBooking? typedOptimisticResult,
});
typedef Builder$Mutation$CancelBooking = widgets.Widget Function(
  RunMutation$Mutation$CancelBooking,
  graphql.QueryResult<Mutation$CancelBooking>?,
);

class Mutation$CancelBooking$Widget
    extends graphql_flutter.Mutation<Mutation$CancelBooking> {
  Mutation$CancelBooking$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CancelBooking? options,
    required Builder$Mutation$CancelBooking builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CancelBooking(),
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

class Mutation$CancelBooking$cancelBooking {
  Mutation$CancelBooking$cancelBooking({required this.id});

  factory Mutation$CancelBooking$cancelBooking.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$CancelBooking$cancelBooking(id: (l$id as String));
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
    if (!(other is Mutation$CancelBooking$cancelBooking) ||
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

extension UtilityExtension$Mutation$CancelBooking$cancelBooking
    on Mutation$CancelBooking$cancelBooking {
  CopyWith$Mutation$CancelBooking$cancelBooking<
          Mutation$CancelBooking$cancelBooking>
      get copyWith => CopyWith$Mutation$CancelBooking$cancelBooking(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CancelBooking$cancelBooking<TRes> {
  factory CopyWith$Mutation$CancelBooking$cancelBooking(
    Mutation$CancelBooking$cancelBooking instance,
    TRes Function(Mutation$CancelBooking$cancelBooking) then,
  ) = _CopyWithImpl$Mutation$CancelBooking$cancelBooking;

  factory CopyWith$Mutation$CancelBooking$cancelBooking.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CancelBooking$cancelBooking;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$CancelBooking$cancelBooking<TRes>
    implements CopyWith$Mutation$CancelBooking$cancelBooking<TRes> {
  _CopyWithImpl$Mutation$CancelBooking$cancelBooking(
    this._instance,
    this._then,
  );

  final Mutation$CancelBooking$cancelBooking _instance;

  final TRes Function(Mutation$CancelBooking$cancelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$CancelBooking$cancelBooking(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$CancelBooking$cancelBooking<TRes>
    implements CopyWith$Mutation$CancelBooking$cancelBooking<TRes> {
  _CopyWithStubImpl$Mutation$CancelBooking$cancelBooking(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Variables$Mutation$SubmitComplaint {
  factory Variables$Mutation$SubmitComplaint({
    required String id,
    required String subject,
    required String content,
  }) =>
      Variables$Mutation$SubmitComplaint._({
        r'id': id,
        r'subject': subject,
        r'content': content,
      });

  Variables$Mutation$SubmitComplaint._(this._$data);

  factory Variables$Mutation$SubmitComplaint.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$subject = data['subject'];
    result$data['subject'] = (l$subject as String);
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    return Variables$Mutation$SubmitComplaint._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  String get subject => (_$data['subject'] as String);
  String get content => (_$data['content'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$subject = subject;
    result$data['subject'] = l$subject;
    final l$content = content;
    result$data['content'] = l$content;
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitComplaint<
          Variables$Mutation$SubmitComplaint>
      get copyWith => CopyWith$Variables$Mutation$SubmitComplaint(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SubmitComplaint) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$subject = subject;
    final lOther$subject = other.subject;
    if (l$subject != lOther$subject) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$subject = subject;
    final l$content = content;
    return Object.hashAll([
      l$id,
      l$subject,
      l$content,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitComplaint<TRes> {
  factory CopyWith$Variables$Mutation$SubmitComplaint(
    Variables$Mutation$SubmitComplaint instance,
    TRes Function(Variables$Mutation$SubmitComplaint) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitComplaint;

  factory CopyWith$Variables$Mutation$SubmitComplaint.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitComplaint;

  TRes call({
    String? id,
    String? subject,
    String? content,
  });
}

class _CopyWithImpl$Variables$Mutation$SubmitComplaint<TRes>
    implements CopyWith$Variables$Mutation$SubmitComplaint<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitComplaint(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitComplaint _instance;

  final TRes Function(Variables$Mutation$SubmitComplaint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? subject = _undefined,
    Object? content = _undefined,
  }) =>
      _then(Variables$Mutation$SubmitComplaint._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (subject != _undefined && subject != null)
          'subject': (subject as String),
        if (content != _undefined && content != null)
          'content': (content as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitComplaint<TRes>
    implements CopyWith$Variables$Mutation$SubmitComplaint<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitComplaint(this._res);

  TRes _res;

  call({
    String? id,
    String? subject,
    String? content,
  }) =>
      _res;
}

class Mutation$SubmitComplaint {
  Mutation$SubmitComplaint({required this.createOneComplaint});

  factory Mutation$SubmitComplaint.fromJson(Map<String, dynamic> json) {
    final l$createOneComplaint = json['createOneComplaint'];
    return Mutation$SubmitComplaint(
        createOneComplaint:
            Mutation$SubmitComplaint$createOneComplaint.fromJson(
                (l$createOneComplaint as Map<String, dynamic>)));
  }

  final Mutation$SubmitComplaint$createOneComplaint createOneComplaint;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneComplaint = createOneComplaint;
    _resultData['createOneComplaint'] = l$createOneComplaint.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneComplaint = createOneComplaint;
    return Object.hashAll([l$createOneComplaint]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitComplaint) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneComplaint = createOneComplaint;
    final lOther$createOneComplaint = other.createOneComplaint;
    if (l$createOneComplaint != lOther$createOneComplaint) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SubmitComplaint
    on Mutation$SubmitComplaint {
  CopyWith$Mutation$SubmitComplaint<Mutation$SubmitComplaint> get copyWith =>
      CopyWith$Mutation$SubmitComplaint(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SubmitComplaint<TRes> {
  factory CopyWith$Mutation$SubmitComplaint(
    Mutation$SubmitComplaint instance,
    TRes Function(Mutation$SubmitComplaint) then,
  ) = _CopyWithImpl$Mutation$SubmitComplaint;

  factory CopyWith$Mutation$SubmitComplaint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitComplaint;

  TRes call({Mutation$SubmitComplaint$createOneComplaint? createOneComplaint});
  CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes>
      get createOneComplaint;
}

class _CopyWithImpl$Mutation$SubmitComplaint<TRes>
    implements CopyWith$Mutation$SubmitComplaint<TRes> {
  _CopyWithImpl$Mutation$SubmitComplaint(
    this._instance,
    this._then,
  );

  final Mutation$SubmitComplaint _instance;

  final TRes Function(Mutation$SubmitComplaint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createOneComplaint = _undefined}) =>
      _then(Mutation$SubmitComplaint(
          createOneComplaint:
              createOneComplaint == _undefined || createOneComplaint == null
                  ? _instance.createOneComplaint
                  : (createOneComplaint
                      as Mutation$SubmitComplaint$createOneComplaint)));
  CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes>
      get createOneComplaint {
    final local$createOneComplaint = _instance.createOneComplaint;
    return CopyWith$Mutation$SubmitComplaint$createOneComplaint(
        local$createOneComplaint, (e) => call(createOneComplaint: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitComplaint<TRes>
    implements CopyWith$Mutation$SubmitComplaint<TRes> {
  _CopyWithStubImpl$Mutation$SubmitComplaint(this._res);

  TRes _res;

  call({Mutation$SubmitComplaint$createOneComplaint? createOneComplaint}) =>
      _res;
  CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes>
      get createOneComplaint =>
          CopyWith$Mutation$SubmitComplaint$createOneComplaint.stub(_res);
}

const documentNodeMutationSubmitComplaint = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitComplaint'),
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
        variable: VariableNode(name: NameNode(value: 'subject')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'content')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneComplaint'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'complaint'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'requestId'),
                    value: VariableNode(name: NameNode(value: 'id')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'requestedByDriver'),
                    value: BooleanValueNode(value: false),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'subject'),
                    value: VariableNode(name: NameNode(value: 'subject')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'content'),
                    value: VariableNode(name: NameNode(value: 'content')),
                  ),
                ]),
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
Mutation$SubmitComplaint _parserFn$Mutation$SubmitComplaint(
        Map<String, dynamic> data) =>
    Mutation$SubmitComplaint.fromJson(data);
typedef OnMutationCompleted$Mutation$SubmitComplaint = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SubmitComplaint?,
);

class Options$Mutation$SubmitComplaint
    extends graphql.MutationOptions<Mutation$SubmitComplaint> {
  Options$Mutation$SubmitComplaint({
    String? operationName,
    required Variables$Mutation$SubmitComplaint variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitComplaint? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitComplaint? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitComplaint>? update,
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
                        : _parserFn$Mutation$SubmitComplaint(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitComplaint,
          parserFn: _parserFn$Mutation$SubmitComplaint,
        );

  final OnMutationCompleted$Mutation$SubmitComplaint? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SubmitComplaint
    extends graphql.WatchQueryOptions<Mutation$SubmitComplaint> {
  WatchOptions$Mutation$SubmitComplaint({
    String? operationName,
    required Variables$Mutation$SubmitComplaint variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitComplaint? typedOptimisticResult,
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
          document: documentNodeMutationSubmitComplaint,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SubmitComplaint,
        );
}

extension ClientExtension$Mutation$SubmitComplaint on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SubmitComplaint>> mutate$SubmitComplaint(
          Options$Mutation$SubmitComplaint options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SubmitComplaint>
      watchMutation$SubmitComplaint(
              WatchOptions$Mutation$SubmitComplaint options) =>
          this.watchMutation(options);
}

class Mutation$SubmitComplaint$HookResult {
  Mutation$SubmitComplaint$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SubmitComplaint runMutation;

  final graphql.QueryResult<Mutation$SubmitComplaint> result;
}

Mutation$SubmitComplaint$HookResult useMutation$SubmitComplaint(
    [WidgetOptions$Mutation$SubmitComplaint? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SubmitComplaint());
  return Mutation$SubmitComplaint$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SubmitComplaint>
    useWatchMutation$SubmitComplaint(
            WatchOptions$Mutation$SubmitComplaint options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SubmitComplaint
    extends graphql.MutationOptions<Mutation$SubmitComplaint> {
  WidgetOptions$Mutation$SubmitComplaint({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitComplaint? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitComplaint? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitComplaint>? update,
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
                        : _parserFn$Mutation$SubmitComplaint(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitComplaint,
          parserFn: _parserFn$Mutation$SubmitComplaint,
        );

  final OnMutationCompleted$Mutation$SubmitComplaint? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SubmitComplaint
    = graphql.MultiSourceResult<Mutation$SubmitComplaint> Function(
  Variables$Mutation$SubmitComplaint, {
  Object? optimisticResult,
  Mutation$SubmitComplaint? typedOptimisticResult,
});
typedef Builder$Mutation$SubmitComplaint = widgets.Widget Function(
  RunMutation$Mutation$SubmitComplaint,
  graphql.QueryResult<Mutation$SubmitComplaint>?,
);

class Mutation$SubmitComplaint$Widget
    extends graphql_flutter.Mutation<Mutation$SubmitComplaint> {
  Mutation$SubmitComplaint$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SubmitComplaint? options,
    required Builder$Mutation$SubmitComplaint builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SubmitComplaint(),
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

class Mutation$SubmitComplaint$createOneComplaint {
  Mutation$SubmitComplaint$createOneComplaint({required this.id});

  factory Mutation$SubmitComplaint$createOneComplaint.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$SubmitComplaint$createOneComplaint(id: (l$id as String));
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
    if (!(other is Mutation$SubmitComplaint$createOneComplaint) ||
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

extension UtilityExtension$Mutation$SubmitComplaint$createOneComplaint
    on Mutation$SubmitComplaint$createOneComplaint {
  CopyWith$Mutation$SubmitComplaint$createOneComplaint<
          Mutation$SubmitComplaint$createOneComplaint>
      get copyWith => CopyWith$Mutation$SubmitComplaint$createOneComplaint(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes> {
  factory CopyWith$Mutation$SubmitComplaint$createOneComplaint(
    Mutation$SubmitComplaint$createOneComplaint instance,
    TRes Function(Mutation$SubmitComplaint$createOneComplaint) then,
  ) = _CopyWithImpl$Mutation$SubmitComplaint$createOneComplaint;

  factory CopyWith$Mutation$SubmitComplaint$createOneComplaint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitComplaint$createOneComplaint;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$SubmitComplaint$createOneComplaint<TRes>
    implements CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes> {
  _CopyWithImpl$Mutation$SubmitComplaint$createOneComplaint(
    this._instance,
    this._then,
  );

  final Mutation$SubmitComplaint$createOneComplaint _instance;

  final TRes Function(Mutation$SubmitComplaint$createOneComplaint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$SubmitComplaint$createOneComplaint(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$SubmitComplaint$createOneComplaint<TRes>
    implements CopyWith$Mutation$SubmitComplaint$createOneComplaint<TRes> {
  _CopyWithStubImpl$Mutation$SubmitComplaint$createOneComplaint(this._res);

  TRes _res;

  call({String? id}) => _res;
}
