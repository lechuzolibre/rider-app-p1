import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/timestamp.dart';

class Query$Wallet {
  Query$Wallet({
    required this.riderWallets,
    required this.riderTransacions,
  });

  factory Query$Wallet.fromJson(Map<String, dynamic> json) {
    final l$riderWallets = json['riderWallets'];
    final l$riderTransacions = json['riderTransacions'];
    return Query$Wallet(
      riderWallets: (l$riderWallets as List<dynamic>)
          .map((e) =>
              Query$Wallet$riderWallets.fromJson((e as Map<String, dynamic>)))
          .toList(),
      riderTransacions: Query$Wallet$riderTransacions.fromJson(
          (l$riderTransacions as Map<String, dynamic>)),
    );
  }

  final List<Query$Wallet$riderWallets> riderWallets;

  final Query$Wallet$riderTransacions riderTransacions;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$riderWallets = riderWallets;
    _resultData['riderWallets'] =
        l$riderWallets.map((e) => e.toJson()).toList();
    final l$riderTransacions = riderTransacions;
    _resultData['riderTransacions'] = l$riderTransacions.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$riderWallets = riderWallets;
    final l$riderTransacions = riderTransacions;
    return Object.hashAll([
      Object.hashAll(l$riderWallets.map((v) => v)),
      l$riderTransacions,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Wallet) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$riderWallets = riderWallets;
    final lOther$riderWallets = other.riderWallets;
    if (l$riderWallets.length != lOther$riderWallets.length) {
      return false;
    }
    for (int i = 0; i < l$riderWallets.length; i++) {
      final l$riderWallets$entry = l$riderWallets[i];
      final lOther$riderWallets$entry = lOther$riderWallets[i];
      if (l$riderWallets$entry != lOther$riderWallets$entry) {
        return false;
      }
    }
    final l$riderTransacions = riderTransacions;
    final lOther$riderTransacions = other.riderTransacions;
    if (l$riderTransacions != lOther$riderTransacions) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Wallet on Query$Wallet {
  CopyWith$Query$Wallet<Query$Wallet> get copyWith => CopyWith$Query$Wallet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Wallet<TRes> {
  factory CopyWith$Query$Wallet(
    Query$Wallet instance,
    TRes Function(Query$Wallet) then,
  ) = _CopyWithImpl$Query$Wallet;

  factory CopyWith$Query$Wallet.stub(TRes res) = _CopyWithStubImpl$Query$Wallet;

  TRes call({
    List<Query$Wallet$riderWallets>? riderWallets,
    Query$Wallet$riderTransacions? riderTransacions,
  });
  TRes riderWallets(
      Iterable<Query$Wallet$riderWallets> Function(
              Iterable<
                  CopyWith$Query$Wallet$riderWallets<
                      Query$Wallet$riderWallets>>)
          _fn);
  CopyWith$Query$Wallet$riderTransacions<TRes> get riderTransacions;
}

class _CopyWithImpl$Query$Wallet<TRes> implements CopyWith$Query$Wallet<TRes> {
  _CopyWithImpl$Query$Wallet(
    this._instance,
    this._then,
  );

  final Query$Wallet _instance;

  final TRes Function(Query$Wallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? riderWallets = _undefined,
    Object? riderTransacions = _undefined,
  }) =>
      _then(Query$Wallet(
        riderWallets: riderWallets == _undefined || riderWallets == null
            ? _instance.riderWallets
            : (riderWallets as List<Query$Wallet$riderWallets>),
        riderTransacions:
            riderTransacions == _undefined || riderTransacions == null
                ? _instance.riderTransacions
                : (riderTransacions as Query$Wallet$riderTransacions),
      ));
  TRes riderWallets(
          Iterable<Query$Wallet$riderWallets> Function(
                  Iterable<
                      CopyWith$Query$Wallet$riderWallets<
                          Query$Wallet$riderWallets>>)
              _fn) =>
      call(
          riderWallets: _fn(_instance.riderWallets
              .map((e) => CopyWith$Query$Wallet$riderWallets(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$Wallet$riderTransacions<TRes> get riderTransacions {
    final local$riderTransacions = _instance.riderTransacions;
    return CopyWith$Query$Wallet$riderTransacions(
        local$riderTransacions, (e) => call(riderTransacions: e));
  }
}

class _CopyWithStubImpl$Query$Wallet<TRes>
    implements CopyWith$Query$Wallet<TRes> {
  _CopyWithStubImpl$Query$Wallet(this._res);

  TRes _res;

  call({
    List<Query$Wallet$riderWallets>? riderWallets,
    Query$Wallet$riderTransacions? riderTransacions,
  }) =>
      _res;
  riderWallets(_fn) => _res;
  CopyWith$Query$Wallet$riderTransacions<TRes> get riderTransacions =>
      CopyWith$Query$Wallet$riderTransacions.stub(_res);
}

const documentNodeQueryWallet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Wallet'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'riderWallets'),
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
            name: NameNode(value: 'balance'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'riderTransacions'),
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
                    name: NameNode(value: 'createdAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                    name: NameNode(value: 'refrenceNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'deductType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'action'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rechargeType'),
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
      ),
    ]),
  ),
]);
Query$Wallet _parserFn$Query$Wallet(Map<String, dynamic> data) =>
    Query$Wallet.fromJson(data);
typedef OnQueryComplete$Query$Wallet = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Wallet?,
);

class Options$Query$Wallet extends graphql.QueryOptions<Query$Wallet> {
  Options$Query$Wallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Wallet? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Wallet? onComplete,
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
                    data == null ? null : _parserFn$Query$Wallet(data),
                  ),
          onError: onError,
          document: documentNodeQueryWallet,
          parserFn: _parserFn$Query$Wallet,
        );

  final OnQueryComplete$Query$Wallet? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Wallet
    extends graphql.WatchQueryOptions<Query$Wallet> {
  WatchOptions$Query$Wallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Wallet? typedOptimisticResult,
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
          document: documentNodeQueryWallet,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Wallet,
        );
}

class FetchMoreOptions$Query$Wallet extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Wallet({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryWallet,
        );
}

extension ClientExtension$Query$Wallet on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Wallet>> query$Wallet(
          [Options$Query$Wallet? options]) async =>
      await this.query(options ?? Options$Query$Wallet());
  graphql.ObservableQuery<Query$Wallet> watchQuery$Wallet(
          [WatchOptions$Query$Wallet? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Wallet());
  void writeQuery$Wallet({
    required Query$Wallet data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryWallet)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Wallet? readQuery$Wallet({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryWallet)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Wallet.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Wallet> useQuery$Wallet(
        [Options$Query$Wallet? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Wallet());
graphql.ObservableQuery<Query$Wallet> useWatchQuery$Wallet(
        [WatchOptions$Query$Wallet? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Wallet());

class Query$Wallet$Widget extends graphql_flutter.Query<Query$Wallet> {
  Query$Wallet$Widget({
    widgets.Key? key,
    Options$Query$Wallet? options,
    required graphql_flutter.QueryBuilder<Query$Wallet> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Wallet(),
          builder: builder,
        );
}

class Query$Wallet$riderWallets {
  Query$Wallet$riderWallets({
    required this.id,
    required this.balance,
    required this.currency,
  });

  factory Query$Wallet$riderWallets.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    return Query$Wallet$riderWallets(
      id: (l$id as String),
      balance: (l$balance as num).toDouble(),
      currency: (l$currency as String),
    );
  }

  final String id;

  final double balance;

  final String currency;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$balance = balance;
    final l$currency = currency;
    return Object.hashAll([
      l$id,
      l$balance,
      l$currency,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Wallet$riderWallets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Wallet$riderWallets
    on Query$Wallet$riderWallets {
  CopyWith$Query$Wallet$riderWallets<Query$Wallet$riderWallets> get copyWith =>
      CopyWith$Query$Wallet$riderWallets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Wallet$riderWallets<TRes> {
  factory CopyWith$Query$Wallet$riderWallets(
    Query$Wallet$riderWallets instance,
    TRes Function(Query$Wallet$riderWallets) then,
  ) = _CopyWithImpl$Query$Wallet$riderWallets;

  factory CopyWith$Query$Wallet$riderWallets.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$riderWallets;

  TRes call({
    String? id,
    double? balance,
    String? currency,
  });
}

class _CopyWithImpl$Query$Wallet$riderWallets<TRes>
    implements CopyWith$Query$Wallet$riderWallets<TRes> {
  _CopyWithImpl$Query$Wallet$riderWallets(
    this._instance,
    this._then,
  );

  final Query$Wallet$riderWallets _instance;

  final TRes Function(Query$Wallet$riderWallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? balance = _undefined,
    Object? currency = _undefined,
  }) =>
      _then(Query$Wallet$riderWallets(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
      ));
}

class _CopyWithStubImpl$Query$Wallet$riderWallets<TRes>
    implements CopyWith$Query$Wallet$riderWallets<TRes> {
  _CopyWithStubImpl$Query$Wallet$riderWallets(this._res);

  TRes _res;

  call({
    String? id,
    double? balance,
    String? currency,
  }) =>
      _res;
}

class Query$Wallet$riderTransacions {
  Query$Wallet$riderTransacions({required this.edges});

  factory Query$Wallet$riderTransacions.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    return Query$Wallet$riderTransacions(
        edges: (l$edges as List<dynamic>)
            .map((e) => Query$Wallet$riderTransacions$edges.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$Wallet$riderTransacions$edges> edges;

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
    if (!(other is Query$Wallet$riderTransacions) ||
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

extension UtilityExtension$Query$Wallet$riderTransacions
    on Query$Wallet$riderTransacions {
  CopyWith$Query$Wallet$riderTransacions<Query$Wallet$riderTransacions>
      get copyWith => CopyWith$Query$Wallet$riderTransacions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$riderTransacions<TRes> {
  factory CopyWith$Query$Wallet$riderTransacions(
    Query$Wallet$riderTransacions instance,
    TRes Function(Query$Wallet$riderTransacions) then,
  ) = _CopyWithImpl$Query$Wallet$riderTransacions;

  factory CopyWith$Query$Wallet$riderTransacions.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$riderTransacions;

  TRes call({List<Query$Wallet$riderTransacions$edges>? edges});
  TRes edges(
      Iterable<Query$Wallet$riderTransacions$edges> Function(
              Iterable<
                  CopyWith$Query$Wallet$riderTransacions$edges<
                      Query$Wallet$riderTransacions$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Wallet$riderTransacions<TRes>
    implements CopyWith$Query$Wallet$riderTransacions<TRes> {
  _CopyWithImpl$Query$Wallet$riderTransacions(
    this._instance,
    this._then,
  );

  final Query$Wallet$riderTransacions _instance;

  final TRes Function(Query$Wallet$riderTransacions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? edges = _undefined}) =>
      _then(Query$Wallet$riderTransacions(
          edges: edges == _undefined || edges == null
              ? _instance.edges
              : (edges as List<Query$Wallet$riderTransacions$edges>)));
  TRes edges(
          Iterable<Query$Wallet$riderTransacions$edges> Function(
                  Iterable<
                      CopyWith$Query$Wallet$riderTransacions$edges<
                          Query$Wallet$riderTransacions$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Wallet$riderTransacions$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Wallet$riderTransacions<TRes>
    implements CopyWith$Query$Wallet$riderTransacions<TRes> {
  _CopyWithStubImpl$Query$Wallet$riderTransacions(this._res);

  TRes _res;

  call({List<Query$Wallet$riderTransacions$edges>? edges}) => _res;
  edges(_fn) => _res;
}

class Query$Wallet$riderTransacions$edges {
  Query$Wallet$riderTransacions$edges({required this.node});

  factory Query$Wallet$riderTransacions$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    return Query$Wallet$riderTransacions$edges(
        node: Query$Wallet$riderTransacions$edges$node.fromJson(
            (l$node as Map<String, dynamic>)));
  }

  final Query$Wallet$riderTransacions$edges$node node;

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
    if (!(other is Query$Wallet$riderTransacions$edges) ||
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

extension UtilityExtension$Query$Wallet$riderTransacions$edges
    on Query$Wallet$riderTransacions$edges {
  CopyWith$Query$Wallet$riderTransacions$edges<
          Query$Wallet$riderTransacions$edges>
      get copyWith => CopyWith$Query$Wallet$riderTransacions$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$riderTransacions$edges<TRes> {
  factory CopyWith$Query$Wallet$riderTransacions$edges(
    Query$Wallet$riderTransacions$edges instance,
    TRes Function(Query$Wallet$riderTransacions$edges) then,
  ) = _CopyWithImpl$Query$Wallet$riderTransacions$edges;

  factory CopyWith$Query$Wallet$riderTransacions$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$riderTransacions$edges;

  TRes call({Query$Wallet$riderTransacions$edges$node? node});
  CopyWith$Query$Wallet$riderTransacions$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Wallet$riderTransacions$edges<TRes>
    implements CopyWith$Query$Wallet$riderTransacions$edges<TRes> {
  _CopyWithImpl$Query$Wallet$riderTransacions$edges(
    this._instance,
    this._then,
  );

  final Query$Wallet$riderTransacions$edges _instance;

  final TRes Function(Query$Wallet$riderTransacions$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined}) =>
      _then(Query$Wallet$riderTransacions$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Query$Wallet$riderTransacions$edges$node)));
  CopyWith$Query$Wallet$riderTransacions$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$Wallet$riderTransacions$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Wallet$riderTransacions$edges<TRes>
    implements CopyWith$Query$Wallet$riderTransacions$edges<TRes> {
  _CopyWithStubImpl$Query$Wallet$riderTransacions$edges(this._res);

  TRes _res;

  call({Query$Wallet$riderTransacions$edges$node? node}) => _res;
  CopyWith$Query$Wallet$riderTransacions$edges$node<TRes> get node =>
      CopyWith$Query$Wallet$riderTransacions$edges$node.stub(_res);
}

class Query$Wallet$riderTransacions$edges$node {
  Query$Wallet$riderTransacions$edges$node({
    required this.createdAt,
    required this.amount,
    required this.currency,
    this.refrenceNumber,
    this.deductType,
    required this.action,
    this.rechargeType,
  });

  factory Query$Wallet$riderTransacions$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$createdAt = json['createdAt'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$refrenceNumber = json['refrenceNumber'];
    final l$deductType = json['deductType'];
    final l$action = json['action'];
    final l$rechargeType = json['rechargeType'];
    return Query$Wallet$riderTransacions$edges$node(
      createdAt: fromGraphQLTimestampToDartDateTime(l$createdAt),
      amount: (l$amount as num).toDouble(),
      currency: (l$currency as String),
      refrenceNumber: (l$refrenceNumber as String?),
      deductType: l$deductType == null
          ? null
          : fromJson$Enum$RiderDeductTransactionType((l$deductType as String)),
      action: fromJson$Enum$TransactionAction((l$action as String)),
      rechargeType: l$rechargeType == null
          ? null
          : fromJson$Enum$RiderRechargeTransactionType(
              (l$rechargeType as String)),
    );
  }

  final DateTime createdAt;

  final double amount;

  final String currency;

  final String? refrenceNumber;

  final Enum$RiderDeductTransactionType? deductType;

  final Enum$TransactionAction action;

  final Enum$RiderRechargeTransactionType? rechargeType;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = fromDartDateTimeToGraphQLTimestamp(l$createdAt);
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$refrenceNumber = refrenceNumber;
    _resultData['refrenceNumber'] = l$refrenceNumber;
    final l$deductType = deductType;
    _resultData['deductType'] = l$deductType == null
        ? null
        : toJson$Enum$RiderDeductTransactionType(l$deductType);
    final l$action = action;
    _resultData['action'] = toJson$Enum$TransactionAction(l$action);
    final l$rechargeType = rechargeType;
    _resultData['rechargeType'] = l$rechargeType == null
        ? null
        : toJson$Enum$RiderRechargeTransactionType(l$rechargeType);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$amount = amount;
    final l$currency = currency;
    final l$refrenceNumber = refrenceNumber;
    final l$deductType = deductType;
    final l$action = action;
    final l$rechargeType = rechargeType;
    return Object.hashAll([
      l$createdAt,
      l$amount,
      l$currency,
      l$refrenceNumber,
      l$deductType,
      l$action,
      l$rechargeType,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Wallet$riderTransacions$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$refrenceNumber = refrenceNumber;
    final lOther$refrenceNumber = other.refrenceNumber;
    if (l$refrenceNumber != lOther$refrenceNumber) {
      return false;
    }
    final l$deductType = deductType;
    final lOther$deductType = other.deductType;
    if (l$deductType != lOther$deductType) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
      return false;
    }
    final l$rechargeType = rechargeType;
    final lOther$rechargeType = other.rechargeType;
    if (l$rechargeType != lOther$rechargeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Wallet$riderTransacions$edges$node
    on Query$Wallet$riderTransacions$edges$node {
  CopyWith$Query$Wallet$riderTransacions$edges$node<
          Query$Wallet$riderTransacions$edges$node>
      get copyWith => CopyWith$Query$Wallet$riderTransacions$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$riderTransacions$edges$node<TRes> {
  factory CopyWith$Query$Wallet$riderTransacions$edges$node(
    Query$Wallet$riderTransacions$edges$node instance,
    TRes Function(Query$Wallet$riderTransacions$edges$node) then,
  ) = _CopyWithImpl$Query$Wallet$riderTransacions$edges$node;

  factory CopyWith$Query$Wallet$riderTransacions$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$riderTransacions$edges$node;

  TRes call({
    DateTime? createdAt,
    double? amount,
    String? currency,
    String? refrenceNumber,
    Enum$RiderDeductTransactionType? deductType,
    Enum$TransactionAction? action,
    Enum$RiderRechargeTransactionType? rechargeType,
  });
}

class _CopyWithImpl$Query$Wallet$riderTransacions$edges$node<TRes>
    implements CopyWith$Query$Wallet$riderTransacions$edges$node<TRes> {
  _CopyWithImpl$Query$Wallet$riderTransacions$edges$node(
    this._instance,
    this._then,
  );

  final Query$Wallet$riderTransacions$edges$node _instance;

  final TRes Function(Query$Wallet$riderTransacions$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? refrenceNumber = _undefined,
    Object? deductType = _undefined,
    Object? action = _undefined,
    Object? rechargeType = _undefined,
  }) =>
      _then(Query$Wallet$riderTransacions$edges$node(
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        refrenceNumber: refrenceNumber == _undefined
            ? _instance.refrenceNumber
            : (refrenceNumber as String?),
        deductType: deductType == _undefined
            ? _instance.deductType
            : (deductType as Enum$RiderDeductTransactionType?),
        action: action == _undefined || action == null
            ? _instance.action
            : (action as Enum$TransactionAction),
        rechargeType: rechargeType == _undefined
            ? _instance.rechargeType
            : (rechargeType as Enum$RiderRechargeTransactionType?),
      ));
}

class _CopyWithStubImpl$Query$Wallet$riderTransacions$edges$node<TRes>
    implements CopyWith$Query$Wallet$riderTransacions$edges$node<TRes> {
  _CopyWithStubImpl$Query$Wallet$riderTransacions$edges$node(this._res);

  TRes _res;

  call({
    DateTime? createdAt,
    double? amount,
    String? currency,
    String? refrenceNumber,
    Enum$RiderDeductTransactionType? deductType,
    Enum$TransactionAction? action,
    Enum$RiderRechargeTransactionType? rechargeType,
  }) =>
      _res;
}

class Query$PaymentGateways {
  Query$PaymentGateways({required this.paymentGateways});

  factory Query$PaymentGateways.fromJson(Map<String, dynamic> json) {
    final l$paymentGateways = json['paymentGateways'];
    return Query$PaymentGateways(
        paymentGateways: (l$paymentGateways as List<dynamic>)
            .map((e) => Query$PaymentGateways$paymentGateways.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$PaymentGateways$paymentGateways> paymentGateways;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentGateways = paymentGateways;
    _resultData['paymentGateways'] =
        l$paymentGateways.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentGateways = paymentGateways;
    return Object.hashAll([Object.hashAll(l$paymentGateways.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PaymentGateways) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentGateways = paymentGateways;
    final lOther$paymentGateways = other.paymentGateways;
    if (l$paymentGateways.length != lOther$paymentGateways.length) {
      return false;
    }
    for (int i = 0; i < l$paymentGateways.length; i++) {
      final l$paymentGateways$entry = l$paymentGateways[i];
      final lOther$paymentGateways$entry = lOther$paymentGateways[i];
      if (l$paymentGateways$entry != lOther$paymentGateways$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$PaymentGateways on Query$PaymentGateways {
  CopyWith$Query$PaymentGateways<Query$PaymentGateways> get copyWith =>
      CopyWith$Query$PaymentGateways(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PaymentGateways<TRes> {
  factory CopyWith$Query$PaymentGateways(
    Query$PaymentGateways instance,
    TRes Function(Query$PaymentGateways) then,
  ) = _CopyWithImpl$Query$PaymentGateways;

  factory CopyWith$Query$PaymentGateways.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentGateways;

  TRes call({List<Query$PaymentGateways$paymentGateways>? paymentGateways});
  TRes paymentGateways(
      Iterable<Query$PaymentGateways$paymentGateways> Function(
              Iterable<
                  CopyWith$Query$PaymentGateways$paymentGateways<
                      Query$PaymentGateways$paymentGateways>>)
          _fn);
}

class _CopyWithImpl$Query$PaymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways<TRes> {
  _CopyWithImpl$Query$PaymentGateways(
    this._instance,
    this._then,
  );

  final Query$PaymentGateways _instance;

  final TRes Function(Query$PaymentGateways) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentGateways = _undefined}) =>
      _then(Query$PaymentGateways(
          paymentGateways:
              paymentGateways == _undefined || paymentGateways == null
                  ? _instance.paymentGateways
                  : (paymentGateways
                      as List<Query$PaymentGateways$paymentGateways>)));
  TRes paymentGateways(
          Iterable<Query$PaymentGateways$paymentGateways> Function(
                  Iterable<
                      CopyWith$Query$PaymentGateways$paymentGateways<
                          Query$PaymentGateways$paymentGateways>>)
              _fn) =>
      call(
          paymentGateways: _fn(_instance.paymentGateways
              .map((e) => CopyWith$Query$PaymentGateways$paymentGateways(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PaymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways<TRes> {
  _CopyWithStubImpl$Query$PaymentGateways(this._res);

  TRes _res;

  call({List<Query$PaymentGateways$paymentGateways>? paymentGateways}) => _res;
  paymentGateways(_fn) => _res;
}

const documentNodeQueryPaymentGateways = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PaymentGateways'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'paymentGateways'),
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
            name: NameNode(value: 'publicKey'),
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
      )
    ]),
  ),
]);
Query$PaymentGateways _parserFn$Query$PaymentGateways(
        Map<String, dynamic> data) =>
    Query$PaymentGateways.fromJson(data);
typedef OnQueryComplete$Query$PaymentGateways = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PaymentGateways?,
);

class Options$Query$PaymentGateways
    extends graphql.QueryOptions<Query$PaymentGateways> {
  Options$Query$PaymentGateways({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentGateways? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PaymentGateways? onComplete,
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
                    data == null ? null : _parserFn$Query$PaymentGateways(data),
                  ),
          onError: onError,
          document: documentNodeQueryPaymentGateways,
          parserFn: _parserFn$Query$PaymentGateways,
        );

  final OnQueryComplete$Query$PaymentGateways? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PaymentGateways
    extends graphql.WatchQueryOptions<Query$PaymentGateways> {
  WatchOptions$Query$PaymentGateways({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentGateways? typedOptimisticResult,
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
          document: documentNodeQueryPaymentGateways,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PaymentGateways,
        );
}

class FetchMoreOptions$Query$PaymentGateways extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PaymentGateways(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryPaymentGateways,
        );
}

extension ClientExtension$Query$PaymentGateways on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PaymentGateways>> query$PaymentGateways(
          [Options$Query$PaymentGateways? options]) async =>
      await this.query(options ?? Options$Query$PaymentGateways());
  graphql.ObservableQuery<Query$PaymentGateways> watchQuery$PaymentGateways(
          [WatchOptions$Query$PaymentGateways? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PaymentGateways());
  void writeQuery$PaymentGateways({
    required Query$PaymentGateways data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryPaymentGateways)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PaymentGateways? readQuery$PaymentGateways({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPaymentGateways)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PaymentGateways.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PaymentGateways> useQuery$PaymentGateways(
        [Options$Query$PaymentGateways? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$PaymentGateways());
graphql.ObservableQuery<Query$PaymentGateways> useWatchQuery$PaymentGateways(
        [WatchOptions$Query$PaymentGateways? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$PaymentGateways());

class Query$PaymentGateways$Widget
    extends graphql_flutter.Query<Query$PaymentGateways> {
  Query$PaymentGateways$Widget({
    widgets.Key? key,
    Options$Query$PaymentGateways? options,
    required graphql_flutter.QueryBuilder<Query$PaymentGateways> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$PaymentGateways(),
          builder: builder,
        );
}

class Query$PaymentGateways$paymentGateways {
  Query$PaymentGateways$paymentGateways({
    required this.id,
    required this.title,
    required this.type,
    this.publicKey,
    this.media,
  });

  factory Query$PaymentGateways$paymentGateways.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$publicKey = json['publicKey'];
    final l$media = json['media'];
    return Query$PaymentGateways$paymentGateways(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      publicKey: (l$publicKey as String?),
      media: l$media == null
          ? null
          : Query$PaymentGateways$paymentGateways$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final String? publicKey;

  final Query$PaymentGateways$paymentGateways$media? media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PaymentGatewayType(l$type);
    final l$publicKey = publicKey;
    _resultData['publicKey'] = l$publicKey;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$publicKey = publicKey;
    final l$media = media;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$publicKey,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PaymentGateways$paymentGateways) ||
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
    final l$publicKey = publicKey;
    final lOther$publicKey = other.publicKey;
    if (l$publicKey != lOther$publicKey) {
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

extension UtilityExtension$Query$PaymentGateways$paymentGateways
    on Query$PaymentGateways$paymentGateways {
  CopyWith$Query$PaymentGateways$paymentGateways<
          Query$PaymentGateways$paymentGateways>
      get copyWith => CopyWith$Query$PaymentGateways$paymentGateways(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentGateways$paymentGateways<TRes> {
  factory CopyWith$Query$PaymentGateways$paymentGateways(
    Query$PaymentGateways$paymentGateways instance,
    TRes Function(Query$PaymentGateways$paymentGateways) then,
  ) = _CopyWithImpl$Query$PaymentGateways$paymentGateways;

  factory CopyWith$Query$PaymentGateways$paymentGateways.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentGateways$paymentGateways;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    String? publicKey,
    Query$PaymentGateways$paymentGateways$media? media,
  });
  CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> get media;
}

class _CopyWithImpl$Query$PaymentGateways$paymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways$paymentGateways<TRes> {
  _CopyWithImpl$Query$PaymentGateways$paymentGateways(
    this._instance,
    this._then,
  );

  final Query$PaymentGateways$paymentGateways _instance;

  final TRes Function(Query$PaymentGateways$paymentGateways) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? publicKey = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Query$PaymentGateways$paymentGateways(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PaymentGatewayType),
        publicKey: publicKey == _undefined
            ? _instance.publicKey
            : (publicKey as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$PaymentGateways$paymentGateways$media?),
      ));
  CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$PaymentGateways$paymentGateways$media.stub(
            _then(_instance))
        : CopyWith$Query$PaymentGateways$paymentGateways$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$PaymentGateways$paymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways$paymentGateways<TRes> {
  _CopyWithStubImpl$Query$PaymentGateways$paymentGateways(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    String? publicKey,
    Query$PaymentGateways$paymentGateways$media? media,
  }) =>
      _res;
  CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> get media =>
      CopyWith$Query$PaymentGateways$paymentGateways$media.stub(_res);
}

class Query$PaymentGateways$paymentGateways$media {
  Query$PaymentGateways$paymentGateways$media({required this.address});

  factory Query$PaymentGateways$paymentGateways$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$PaymentGateways$paymentGateways$media(
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
    if (!(other is Query$PaymentGateways$paymentGateways$media) ||
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

extension UtilityExtension$Query$PaymentGateways$paymentGateways$media
    on Query$PaymentGateways$paymentGateways$media {
  CopyWith$Query$PaymentGateways$paymentGateways$media<
          Query$PaymentGateways$paymentGateways$media>
      get copyWith => CopyWith$Query$PaymentGateways$paymentGateways$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> {
  factory CopyWith$Query$PaymentGateways$paymentGateways$media(
    Query$PaymentGateways$paymentGateways$media instance,
    TRes Function(Query$PaymentGateways$paymentGateways$media) then,
  ) = _CopyWithImpl$Query$PaymentGateways$paymentGateways$media;

  factory CopyWith$Query$PaymentGateways$paymentGateways$media.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentGateways$paymentGateways$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$PaymentGateways$paymentGateways$media<TRes>
    implements CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> {
  _CopyWithImpl$Query$PaymentGateways$paymentGateways$media(
    this._instance,
    this._then,
  );

  final Query$PaymentGateways$paymentGateways$media _instance;

  final TRes Function(Query$PaymentGateways$paymentGateways$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$PaymentGateways$paymentGateways$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$PaymentGateways$paymentGateways$media<TRes>
    implements CopyWith$Query$PaymentGateways$paymentGateways$media<TRes> {
  _CopyWithStubImpl$Query$PaymentGateways$paymentGateways$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$PayForRide {
  Query$PayForRide({
    required this.paymentGateways,
    required this.riderWallets,
  });

  factory Query$PayForRide.fromJson(Map<String, dynamic> json) {
    final l$paymentGateways = json['paymentGateways'];
    final l$riderWallets = json['riderWallets'];
    return Query$PayForRide(
      paymentGateways: (l$paymentGateways as List<dynamic>)
          .map((e) => Query$PayForRide$paymentGateways.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      riderWallets: (l$riderWallets as List<dynamic>)
          .map((e) => Query$PayForRide$riderWallets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final List<Query$PayForRide$paymentGateways> paymentGateways;

  final List<Query$PayForRide$riderWallets> riderWallets;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentGateways = paymentGateways;
    _resultData['paymentGateways'] =
        l$paymentGateways.map((e) => e.toJson()).toList();
    final l$riderWallets = riderWallets;
    _resultData['riderWallets'] =
        l$riderWallets.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentGateways = paymentGateways;
    final l$riderWallets = riderWallets;
    return Object.hashAll([
      Object.hashAll(l$paymentGateways.map((v) => v)),
      Object.hashAll(l$riderWallets.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PayForRide) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentGateways = paymentGateways;
    final lOther$paymentGateways = other.paymentGateways;
    if (l$paymentGateways.length != lOther$paymentGateways.length) {
      return false;
    }
    for (int i = 0; i < l$paymentGateways.length; i++) {
      final l$paymentGateways$entry = l$paymentGateways[i];
      final lOther$paymentGateways$entry = lOther$paymentGateways[i];
      if (l$paymentGateways$entry != lOther$paymentGateways$entry) {
        return false;
      }
    }
    final l$riderWallets = riderWallets;
    final lOther$riderWallets = other.riderWallets;
    if (l$riderWallets.length != lOther$riderWallets.length) {
      return false;
    }
    for (int i = 0; i < l$riderWallets.length; i++) {
      final l$riderWallets$entry = l$riderWallets[i];
      final lOther$riderWallets$entry = lOther$riderWallets[i];
      if (l$riderWallets$entry != lOther$riderWallets$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$PayForRide on Query$PayForRide {
  CopyWith$Query$PayForRide<Query$PayForRide> get copyWith =>
      CopyWith$Query$PayForRide(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PayForRide<TRes> {
  factory CopyWith$Query$PayForRide(
    Query$PayForRide instance,
    TRes Function(Query$PayForRide) then,
  ) = _CopyWithImpl$Query$PayForRide;

  factory CopyWith$Query$PayForRide.stub(TRes res) =
      _CopyWithStubImpl$Query$PayForRide;

  TRes call({
    List<Query$PayForRide$paymentGateways>? paymentGateways,
    List<Query$PayForRide$riderWallets>? riderWallets,
  });
  TRes paymentGateways(
      Iterable<Query$PayForRide$paymentGateways> Function(
              Iterable<
                  CopyWith$Query$PayForRide$paymentGateways<
                      Query$PayForRide$paymentGateways>>)
          _fn);
  TRes riderWallets(
      Iterable<Query$PayForRide$riderWallets> Function(
              Iterable<
                  CopyWith$Query$PayForRide$riderWallets<
                      Query$PayForRide$riderWallets>>)
          _fn);
}

class _CopyWithImpl$Query$PayForRide<TRes>
    implements CopyWith$Query$PayForRide<TRes> {
  _CopyWithImpl$Query$PayForRide(
    this._instance,
    this._then,
  );

  final Query$PayForRide _instance;

  final TRes Function(Query$PayForRide) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentGateways = _undefined,
    Object? riderWallets = _undefined,
  }) =>
      _then(Query$PayForRide(
        paymentGateways:
            paymentGateways == _undefined || paymentGateways == null
                ? _instance.paymentGateways
                : (paymentGateways as List<Query$PayForRide$paymentGateways>),
        riderWallets: riderWallets == _undefined || riderWallets == null
            ? _instance.riderWallets
            : (riderWallets as List<Query$PayForRide$riderWallets>),
      ));
  TRes paymentGateways(
          Iterable<Query$PayForRide$paymentGateways> Function(
                  Iterable<
                      CopyWith$Query$PayForRide$paymentGateways<
                          Query$PayForRide$paymentGateways>>)
              _fn) =>
      call(
          paymentGateways: _fn(_instance.paymentGateways
              .map((e) => CopyWith$Query$PayForRide$paymentGateways(
                    e,
                    (i) => i,
                  ))).toList());
  TRes riderWallets(
          Iterable<Query$PayForRide$riderWallets> Function(
                  Iterable<
                      CopyWith$Query$PayForRide$riderWallets<
                          Query$PayForRide$riderWallets>>)
              _fn) =>
      call(
          riderWallets: _fn(_instance.riderWallets
              .map((e) => CopyWith$Query$PayForRide$riderWallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PayForRide<TRes>
    implements CopyWith$Query$PayForRide<TRes> {
  _CopyWithStubImpl$Query$PayForRide(this._res);

  TRes _res;

  call({
    List<Query$PayForRide$paymentGateways>? paymentGateways,
    List<Query$PayForRide$riderWallets>? riderWallets,
  }) =>
      _res;
  paymentGateways(_fn) => _res;
  riderWallets(_fn) => _res;
}

const documentNodeQueryPayForRide = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PayForRide'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'paymentGateways'),
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
            name: NameNode(value: 'publicKey'),
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
        name: NameNode(value: 'riderWallets'),
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
            name: NameNode(value: 'balance'),
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
        ]),
      ),
    ]),
  ),
]);
Query$PayForRide _parserFn$Query$PayForRide(Map<String, dynamic> data) =>
    Query$PayForRide.fromJson(data);
typedef OnQueryComplete$Query$PayForRide = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PayForRide?,
);

class Options$Query$PayForRide extends graphql.QueryOptions<Query$PayForRide> {
  Options$Query$PayForRide({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PayForRide? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PayForRide? onComplete,
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
                    data == null ? null : _parserFn$Query$PayForRide(data),
                  ),
          onError: onError,
          document: documentNodeQueryPayForRide,
          parserFn: _parserFn$Query$PayForRide,
        );

  final OnQueryComplete$Query$PayForRide? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PayForRide
    extends graphql.WatchQueryOptions<Query$PayForRide> {
  WatchOptions$Query$PayForRide({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PayForRide? typedOptimisticResult,
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
          document: documentNodeQueryPayForRide,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PayForRide,
        );
}

class FetchMoreOptions$Query$PayForRide extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PayForRide({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryPayForRide,
        );
}

extension ClientExtension$Query$PayForRide on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PayForRide>> query$PayForRide(
          [Options$Query$PayForRide? options]) async =>
      await this.query(options ?? Options$Query$PayForRide());
  graphql.ObservableQuery<Query$PayForRide> watchQuery$PayForRide(
          [WatchOptions$Query$PayForRide? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PayForRide());
  void writeQuery$PayForRide({
    required Query$PayForRide data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryPayForRide)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PayForRide? readQuery$PayForRide({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryPayForRide)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PayForRide.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PayForRide> useQuery$PayForRide(
        [Options$Query$PayForRide? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$PayForRide());
graphql.ObservableQuery<Query$PayForRide> useWatchQuery$PayForRide(
        [WatchOptions$Query$PayForRide? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$PayForRide());

class Query$PayForRide$Widget extends graphql_flutter.Query<Query$PayForRide> {
  Query$PayForRide$Widget({
    widgets.Key? key,
    Options$Query$PayForRide? options,
    required graphql_flutter.QueryBuilder<Query$PayForRide> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$PayForRide(),
          builder: builder,
        );
}

class Query$PayForRide$paymentGateways {
  Query$PayForRide$paymentGateways({
    required this.id,
    required this.title,
    required this.type,
    this.publicKey,
    this.media,
  });

  factory Query$PayForRide$paymentGateways.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$publicKey = json['publicKey'];
    final l$media = json['media'];
    return Query$PayForRide$paymentGateways(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      publicKey: (l$publicKey as String?),
      media: l$media == null
          ? null
          : Query$PayForRide$paymentGateways$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final String? publicKey;

  final Query$PayForRide$paymentGateways$media? media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PaymentGatewayType(l$type);
    final l$publicKey = publicKey;
    _resultData['publicKey'] = l$publicKey;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$publicKey = publicKey;
    final l$media = media;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$publicKey,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PayForRide$paymentGateways) ||
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
    final l$publicKey = publicKey;
    final lOther$publicKey = other.publicKey;
    if (l$publicKey != lOther$publicKey) {
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

extension UtilityExtension$Query$PayForRide$paymentGateways
    on Query$PayForRide$paymentGateways {
  CopyWith$Query$PayForRide$paymentGateways<Query$PayForRide$paymentGateways>
      get copyWith => CopyWith$Query$PayForRide$paymentGateways(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PayForRide$paymentGateways<TRes> {
  factory CopyWith$Query$PayForRide$paymentGateways(
    Query$PayForRide$paymentGateways instance,
    TRes Function(Query$PayForRide$paymentGateways) then,
  ) = _CopyWithImpl$Query$PayForRide$paymentGateways;

  factory CopyWith$Query$PayForRide$paymentGateways.stub(TRes res) =
      _CopyWithStubImpl$Query$PayForRide$paymentGateways;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    String? publicKey,
    Query$PayForRide$paymentGateways$media? media,
  });
  CopyWith$Query$PayForRide$paymentGateways$media<TRes> get media;
}

class _CopyWithImpl$Query$PayForRide$paymentGateways<TRes>
    implements CopyWith$Query$PayForRide$paymentGateways<TRes> {
  _CopyWithImpl$Query$PayForRide$paymentGateways(
    this._instance,
    this._then,
  );

  final Query$PayForRide$paymentGateways _instance;

  final TRes Function(Query$PayForRide$paymentGateways) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? publicKey = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Query$PayForRide$paymentGateways(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PaymentGatewayType),
        publicKey: publicKey == _undefined
            ? _instance.publicKey
            : (publicKey as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$PayForRide$paymentGateways$media?),
      ));
  CopyWith$Query$PayForRide$paymentGateways$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$PayForRide$paymentGateways$media.stub(_then(_instance))
        : CopyWith$Query$PayForRide$paymentGateways$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$PayForRide$paymentGateways<TRes>
    implements CopyWith$Query$PayForRide$paymentGateways<TRes> {
  _CopyWithStubImpl$Query$PayForRide$paymentGateways(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    String? publicKey,
    Query$PayForRide$paymentGateways$media? media,
  }) =>
      _res;
  CopyWith$Query$PayForRide$paymentGateways$media<TRes> get media =>
      CopyWith$Query$PayForRide$paymentGateways$media.stub(_res);
}

class Query$PayForRide$paymentGateways$media {
  Query$PayForRide$paymentGateways$media({required this.address});

  factory Query$PayForRide$paymentGateways$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$PayForRide$paymentGateways$media(
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
    if (!(other is Query$PayForRide$paymentGateways$media) ||
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

extension UtilityExtension$Query$PayForRide$paymentGateways$media
    on Query$PayForRide$paymentGateways$media {
  CopyWith$Query$PayForRide$paymentGateways$media<
          Query$PayForRide$paymentGateways$media>
      get copyWith => CopyWith$Query$PayForRide$paymentGateways$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PayForRide$paymentGateways$media<TRes> {
  factory CopyWith$Query$PayForRide$paymentGateways$media(
    Query$PayForRide$paymentGateways$media instance,
    TRes Function(Query$PayForRide$paymentGateways$media) then,
  ) = _CopyWithImpl$Query$PayForRide$paymentGateways$media;

  factory CopyWith$Query$PayForRide$paymentGateways$media.stub(TRes res) =
      _CopyWithStubImpl$Query$PayForRide$paymentGateways$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$PayForRide$paymentGateways$media<TRes>
    implements CopyWith$Query$PayForRide$paymentGateways$media<TRes> {
  _CopyWithImpl$Query$PayForRide$paymentGateways$media(
    this._instance,
    this._then,
  );

  final Query$PayForRide$paymentGateways$media _instance;

  final TRes Function(Query$PayForRide$paymentGateways$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$PayForRide$paymentGateways$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$PayForRide$paymentGateways$media<TRes>
    implements CopyWith$Query$PayForRide$paymentGateways$media<TRes> {
  _CopyWithStubImpl$Query$PayForRide$paymentGateways$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$PayForRide$riderWallets {
  Query$PayForRide$riderWallets({
    required this.id,
    required this.balance,
    required this.currency,
  });

  factory Query$PayForRide$riderWallets.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    return Query$PayForRide$riderWallets(
      id: (l$id as String),
      balance: (l$balance as num).toDouble(),
      currency: (l$currency as String),
    );
  }

  final String id;

  final double balance;

  final String currency;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$balance = balance;
    final l$currency = currency;
    return Object.hashAll([
      l$id,
      l$balance,
      l$currency,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PayForRide$riderWallets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PayForRide$riderWallets
    on Query$PayForRide$riderWallets {
  CopyWith$Query$PayForRide$riderWallets<Query$PayForRide$riderWallets>
      get copyWith => CopyWith$Query$PayForRide$riderWallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PayForRide$riderWallets<TRes> {
  factory CopyWith$Query$PayForRide$riderWallets(
    Query$PayForRide$riderWallets instance,
    TRes Function(Query$PayForRide$riderWallets) then,
  ) = _CopyWithImpl$Query$PayForRide$riderWallets;

  factory CopyWith$Query$PayForRide$riderWallets.stub(TRes res) =
      _CopyWithStubImpl$Query$PayForRide$riderWallets;

  TRes call({
    String? id,
    double? balance,
    String? currency,
  });
}

class _CopyWithImpl$Query$PayForRide$riderWallets<TRes>
    implements CopyWith$Query$PayForRide$riderWallets<TRes> {
  _CopyWithImpl$Query$PayForRide$riderWallets(
    this._instance,
    this._then,
  );

  final Query$PayForRide$riderWallets _instance;

  final TRes Function(Query$PayForRide$riderWallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? balance = _undefined,
    Object? currency = _undefined,
  }) =>
      _then(Query$PayForRide$riderWallets(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
      ));
}

class _CopyWithStubImpl$Query$PayForRide$riderWallets<TRes>
    implements CopyWith$Query$PayForRide$riderWallets<TRes> {
  _CopyWithStubImpl$Query$PayForRide$riderWallets(this._res);

  TRes _res;

  call({
    String? id,
    double? balance,
    String? currency,
  }) =>
      _res;
}

class Variables$Mutation$PayRide {
  factory Variables$Mutation$PayRide({
    required Input$TopUpWalletInput input,
    required String orderId,
    double? tipAmount,
    required bool shouldPreauth,
  }) =>
      Variables$Mutation$PayRide._({
        r'input': input,
        r'orderId': orderId,
        if (tipAmount != null) r'tipAmount': tipAmount,
        r'shouldPreauth': shouldPreauth,
      });

  Variables$Mutation$PayRide._(this._$data);

  factory Variables$Mutation$PayRide.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$TopUpWalletInput.fromJson((l$input as Map<String, dynamic>));
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    if (data.containsKey('tipAmount')) {
      final l$tipAmount = data['tipAmount'];
      result$data['tipAmount'] = (l$tipAmount as num?)?.toDouble();
    }
    final l$shouldPreauth = data['shouldPreauth'];
    result$data['shouldPreauth'] = (l$shouldPreauth as bool);
    return Variables$Mutation$PayRide._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TopUpWalletInput get input =>
      (_$data['input'] as Input$TopUpWalletInput);
  String get orderId => (_$data['orderId'] as String);
  double? get tipAmount => (_$data['tipAmount'] as double?);
  bool get shouldPreauth => (_$data['shouldPreauth'] as bool);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    if (_$data.containsKey('tipAmount')) {
      final l$tipAmount = tipAmount;
      result$data['tipAmount'] = l$tipAmount;
    }
    final l$shouldPreauth = shouldPreauth;
    result$data['shouldPreauth'] = l$shouldPreauth;
    return result$data;
  }

  CopyWith$Variables$Mutation$PayRide<Variables$Mutation$PayRide>
      get copyWith => CopyWith$Variables$Mutation$PayRide(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$PayRide) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$tipAmount = tipAmount;
    final lOther$tipAmount = other.tipAmount;
    if (_$data.containsKey('tipAmount') !=
        other._$data.containsKey('tipAmount')) {
      return false;
    }
    if (l$tipAmount != lOther$tipAmount) {
      return false;
    }
    final l$shouldPreauth = shouldPreauth;
    final lOther$shouldPreauth = other.shouldPreauth;
    if (l$shouldPreauth != lOther$shouldPreauth) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$orderId = orderId;
    final l$tipAmount = tipAmount;
    final l$shouldPreauth = shouldPreauth;
    return Object.hashAll([
      l$input,
      l$orderId,
      _$data.containsKey('tipAmount') ? l$tipAmount : const {},
      l$shouldPreauth,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$PayRide<TRes> {
  factory CopyWith$Variables$Mutation$PayRide(
    Variables$Mutation$PayRide instance,
    TRes Function(Variables$Mutation$PayRide) then,
  ) = _CopyWithImpl$Variables$Mutation$PayRide;

  factory CopyWith$Variables$Mutation$PayRide.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PayRide;

  TRes call({
    Input$TopUpWalletInput? input,
    String? orderId,
    double? tipAmount,
    bool? shouldPreauth,
  });
}

class _CopyWithImpl$Variables$Mutation$PayRide<TRes>
    implements CopyWith$Variables$Mutation$PayRide<TRes> {
  _CopyWithImpl$Variables$Mutation$PayRide(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PayRide _instance;

  final TRes Function(Variables$Mutation$PayRide) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? orderId = _undefined,
    Object? tipAmount = _undefined,
    Object? shouldPreauth = _undefined,
  }) =>
      _then(Variables$Mutation$PayRide._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TopUpWalletInput),
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
        if (tipAmount != _undefined) 'tipAmount': (tipAmount as double?),
        if (shouldPreauth != _undefined && shouldPreauth != null)
          'shouldPreauth': (shouldPreauth as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$PayRide<TRes>
    implements CopyWith$Variables$Mutation$PayRide<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PayRide(this._res);

  TRes _res;

  call({
    Input$TopUpWalletInput? input,
    String? orderId,
    double? tipAmount,
    bool? shouldPreauth,
  }) =>
      _res;
}

class Mutation$PayRide {
  Mutation$PayRide({
    required this.topUpWallet,
    required this.updateOneOrder,
  });

  factory Mutation$PayRide.fromJson(Map<String, dynamic> json) {
    final l$topUpWallet = json['topUpWallet'];
    final l$updateOneOrder = json['updateOneOrder'];
    return Mutation$PayRide(
      topUpWallet: Mutation$PayRide$topUpWallet.fromJson(
          (l$topUpWallet as Map<String, dynamic>)),
      updateOneOrder: Mutation$PayRide$updateOneOrder.fromJson(
          (l$updateOneOrder as Map<String, dynamic>)),
    );
  }

  final Mutation$PayRide$topUpWallet topUpWallet;

  final Mutation$PayRide$updateOneOrder updateOneOrder;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topUpWallet = topUpWallet;
    _resultData['topUpWallet'] = l$topUpWallet.toJson();
    final l$updateOneOrder = updateOneOrder;
    _resultData['updateOneOrder'] = l$updateOneOrder.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topUpWallet = topUpWallet;
    final l$updateOneOrder = updateOneOrder;
    return Object.hashAll([
      l$topUpWallet,
      l$updateOneOrder,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$PayRide) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$topUpWallet = topUpWallet;
    final lOther$topUpWallet = other.topUpWallet;
    if (l$topUpWallet != lOther$topUpWallet) {
      return false;
    }
    final l$updateOneOrder = updateOneOrder;
    final lOther$updateOneOrder = other.updateOneOrder;
    if (l$updateOneOrder != lOther$updateOneOrder) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PayRide on Mutation$PayRide {
  CopyWith$Mutation$PayRide<Mutation$PayRide> get copyWith =>
      CopyWith$Mutation$PayRide(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PayRide<TRes> {
  factory CopyWith$Mutation$PayRide(
    Mutation$PayRide instance,
    TRes Function(Mutation$PayRide) then,
  ) = _CopyWithImpl$Mutation$PayRide;

  factory CopyWith$Mutation$PayRide.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PayRide;

  TRes call({
    Mutation$PayRide$topUpWallet? topUpWallet,
    Mutation$PayRide$updateOneOrder? updateOneOrder,
  });
  CopyWith$Mutation$PayRide$topUpWallet<TRes> get topUpWallet;
  CopyWith$Mutation$PayRide$updateOneOrder<TRes> get updateOneOrder;
}

class _CopyWithImpl$Mutation$PayRide<TRes>
    implements CopyWith$Mutation$PayRide<TRes> {
  _CopyWithImpl$Mutation$PayRide(
    this._instance,
    this._then,
  );

  final Mutation$PayRide _instance;

  final TRes Function(Mutation$PayRide) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topUpWallet = _undefined,
    Object? updateOneOrder = _undefined,
  }) =>
      _then(Mutation$PayRide(
        topUpWallet: topUpWallet == _undefined || topUpWallet == null
            ? _instance.topUpWallet
            : (topUpWallet as Mutation$PayRide$topUpWallet),
        updateOneOrder: updateOneOrder == _undefined || updateOneOrder == null
            ? _instance.updateOneOrder
            : (updateOneOrder as Mutation$PayRide$updateOneOrder),
      ));
  CopyWith$Mutation$PayRide$topUpWallet<TRes> get topUpWallet {
    final local$topUpWallet = _instance.topUpWallet;
    return CopyWith$Mutation$PayRide$topUpWallet(
        local$topUpWallet, (e) => call(topUpWallet: e));
  }

  CopyWith$Mutation$PayRide$updateOneOrder<TRes> get updateOneOrder {
    final local$updateOneOrder = _instance.updateOneOrder;
    return CopyWith$Mutation$PayRide$updateOneOrder(
        local$updateOneOrder, (e) => call(updateOneOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$PayRide<TRes>
    implements CopyWith$Mutation$PayRide<TRes> {
  _CopyWithStubImpl$Mutation$PayRide(this._res);

  TRes _res;

  call({
    Mutation$PayRide$topUpWallet? topUpWallet,
    Mutation$PayRide$updateOneOrder? updateOneOrder,
  }) =>
      _res;
  CopyWith$Mutation$PayRide$topUpWallet<TRes> get topUpWallet =>
      CopyWith$Mutation$PayRide$topUpWallet.stub(_res);
  CopyWith$Mutation$PayRide$updateOneOrder<TRes> get updateOneOrder =>
      CopyWith$Mutation$PayRide$updateOneOrder.stub(_res);
}

const documentNodeMutationPayRide = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'PayRide'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TopUpWalletInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'tipAmount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'shouldPreauth')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topUpWallet'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
          ArgumentNode(
            name: NameNode(value: 'shouldPreauth'),
            value: VariableNode(name: NameNode(value: 'shouldPreauth')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'updateOneOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'orderId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'tipAmount'),
                    value: VariableNode(name: NameNode(value: 'tipAmount')),
                  )
                ]),
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
      ),
    ]),
  ),
]);
Mutation$PayRide _parserFn$Mutation$PayRide(Map<String, dynamic> data) =>
    Mutation$PayRide.fromJson(data);
typedef OnMutationCompleted$Mutation$PayRide = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$PayRide?,
);

class Options$Mutation$PayRide
    extends graphql.MutationOptions<Mutation$PayRide> {
  Options$Mutation$PayRide({
    String? operationName,
    required Variables$Mutation$PayRide variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PayRide? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PayRide? onCompleted,
    graphql.OnMutationUpdate<Mutation$PayRide>? update,
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
                    data == null ? null : _parserFn$Mutation$PayRide(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationPayRide,
          parserFn: _parserFn$Mutation$PayRide,
        );

  final OnMutationCompleted$Mutation$PayRide? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$PayRide
    extends graphql.WatchQueryOptions<Mutation$PayRide> {
  WatchOptions$Mutation$PayRide({
    String? operationName,
    required Variables$Mutation$PayRide variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PayRide? typedOptimisticResult,
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
          document: documentNodeMutationPayRide,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$PayRide,
        );
}

extension ClientExtension$Mutation$PayRide on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$PayRide>> mutate$PayRide(
          Options$Mutation$PayRide options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$PayRide> watchMutation$PayRide(
          WatchOptions$Mutation$PayRide options) =>
      this.watchMutation(options);
}

class Mutation$PayRide$HookResult {
  Mutation$PayRide$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$PayRide runMutation;

  final graphql.QueryResult<Mutation$PayRide> result;
}

Mutation$PayRide$HookResult useMutation$PayRide(
    [WidgetOptions$Mutation$PayRide? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$PayRide());
  return Mutation$PayRide$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$PayRide> useWatchMutation$PayRide(
        WatchOptions$Mutation$PayRide options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$PayRide
    extends graphql.MutationOptions<Mutation$PayRide> {
  WidgetOptions$Mutation$PayRide({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PayRide? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PayRide? onCompleted,
    graphql.OnMutationUpdate<Mutation$PayRide>? update,
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
                    data == null ? null : _parserFn$Mutation$PayRide(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationPayRide,
          parserFn: _parserFn$Mutation$PayRide,
        );

  final OnMutationCompleted$Mutation$PayRide? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$PayRide
    = graphql.MultiSourceResult<Mutation$PayRide> Function(
  Variables$Mutation$PayRide, {
  Object? optimisticResult,
  Mutation$PayRide? typedOptimisticResult,
});
typedef Builder$Mutation$PayRide = widgets.Widget Function(
  RunMutation$Mutation$PayRide,
  graphql.QueryResult<Mutation$PayRide>?,
);

class Mutation$PayRide$Widget
    extends graphql_flutter.Mutation<Mutation$PayRide> {
  Mutation$PayRide$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$PayRide? options,
    required Builder$Mutation$PayRide builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$PayRide(),
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

class Mutation$PayRide$topUpWallet {
  Mutation$PayRide$topUpWallet({
    required this.status,
    required this.url,
  });

  factory Mutation$PayRide$topUpWallet.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$url = json['url'];
    return Mutation$PayRide$topUpWallet(
      status: fromJson$Enum$TopUpWalletStatus((l$status as String)),
      url: (l$url as String),
    );
  }

  final Enum$TopUpWalletStatus status;

  final String url;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$TopUpWalletStatus(l$status);
    final l$url = url;
    _resultData['url'] = l$url;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$url = url;
    return Object.hashAll([
      l$status,
      l$url,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$PayRide$topUpWallet) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PayRide$topUpWallet
    on Mutation$PayRide$topUpWallet {
  CopyWith$Mutation$PayRide$topUpWallet<Mutation$PayRide$topUpWallet>
      get copyWith => CopyWith$Mutation$PayRide$topUpWallet(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PayRide$topUpWallet<TRes> {
  factory CopyWith$Mutation$PayRide$topUpWallet(
    Mutation$PayRide$topUpWallet instance,
    TRes Function(Mutation$PayRide$topUpWallet) then,
  ) = _CopyWithImpl$Mutation$PayRide$topUpWallet;

  factory CopyWith$Mutation$PayRide$topUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PayRide$topUpWallet;

  TRes call({
    Enum$TopUpWalletStatus? status,
    String? url,
  });
}

class _CopyWithImpl$Mutation$PayRide$topUpWallet<TRes>
    implements CopyWith$Mutation$PayRide$topUpWallet<TRes> {
  _CopyWithImpl$Mutation$PayRide$topUpWallet(
    this._instance,
    this._then,
  );

  final Mutation$PayRide$topUpWallet _instance;

  final TRes Function(Mutation$PayRide$topUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? url = _undefined,
  }) =>
      _then(Mutation$PayRide$topUpWallet(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$TopUpWalletStatus),
        url: url == _undefined || url == null ? _instance.url : (url as String),
      ));
}

class _CopyWithStubImpl$Mutation$PayRide$topUpWallet<TRes>
    implements CopyWith$Mutation$PayRide$topUpWallet<TRes> {
  _CopyWithStubImpl$Mutation$PayRide$topUpWallet(this._res);

  TRes _res;

  call({
    Enum$TopUpWalletStatus? status,
    String? url,
  }) =>
      _res;
}

class Mutation$PayRide$updateOneOrder {
  Mutation$PayRide$updateOneOrder({required this.id});

  factory Mutation$PayRide$updateOneOrder.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$PayRide$updateOneOrder(id: (l$id as String));
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
    if (!(other is Mutation$PayRide$updateOneOrder) ||
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

extension UtilityExtension$Mutation$PayRide$updateOneOrder
    on Mutation$PayRide$updateOneOrder {
  CopyWith$Mutation$PayRide$updateOneOrder<Mutation$PayRide$updateOneOrder>
      get copyWith => CopyWith$Mutation$PayRide$updateOneOrder(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PayRide$updateOneOrder<TRes> {
  factory CopyWith$Mutation$PayRide$updateOneOrder(
    Mutation$PayRide$updateOneOrder instance,
    TRes Function(Mutation$PayRide$updateOneOrder) then,
  ) = _CopyWithImpl$Mutation$PayRide$updateOneOrder;

  factory CopyWith$Mutation$PayRide$updateOneOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PayRide$updateOneOrder;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$PayRide$updateOneOrder<TRes>
    implements CopyWith$Mutation$PayRide$updateOneOrder<TRes> {
  _CopyWithImpl$Mutation$PayRide$updateOneOrder(
    this._instance,
    this._then,
  );

  final Mutation$PayRide$updateOneOrder _instance;

  final TRes Function(Mutation$PayRide$updateOneOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Mutation$PayRide$updateOneOrder(
      id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$PayRide$updateOneOrder<TRes>
    implements CopyWith$Mutation$PayRide$updateOneOrder<TRes> {
  _CopyWithStubImpl$Mutation$PayRide$updateOneOrder(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Variables$Mutation$TopUpWallet {
  factory Variables$Mutation$TopUpWallet(
          {required Input$TopUpWalletInput input}) =>
      Variables$Mutation$TopUpWallet._({
        r'input': input,
      });

  Variables$Mutation$TopUpWallet._(this._$data);

  factory Variables$Mutation$TopUpWallet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$TopUpWalletInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$TopUpWallet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TopUpWalletInput get input =>
      (_$data['input'] as Input$TopUpWalletInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$TopUpWallet<Variables$Mutation$TopUpWallet>
      get copyWith => CopyWith$Variables$Mutation$TopUpWallet(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$TopUpWallet) ||
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

abstract class CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  factory CopyWith$Variables$Mutation$TopUpWallet(
    Variables$Mutation$TopUpWallet instance,
    TRes Function(Variables$Mutation$TopUpWallet) then,
  ) = _CopyWithImpl$Variables$Mutation$TopUpWallet;

  factory CopyWith$Variables$Mutation$TopUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TopUpWallet;

  TRes call({Input$TopUpWalletInput? input});
}

class _CopyWithImpl$Variables$Mutation$TopUpWallet<TRes>
    implements CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  _CopyWithImpl$Variables$Mutation$TopUpWallet(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TopUpWallet _instance;

  final TRes Function(Variables$Mutation$TopUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$TopUpWallet._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TopUpWalletInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TopUpWallet<TRes>
    implements CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TopUpWallet(this._res);

  TRes _res;

  call({Input$TopUpWalletInput? input}) => _res;
}

class Mutation$TopUpWallet {
  Mutation$TopUpWallet({required this.topUpWallet});

  factory Mutation$TopUpWallet.fromJson(Map<String, dynamic> json) {
    final l$topUpWallet = json['topUpWallet'];
    return Mutation$TopUpWallet(
        topUpWallet: Mutation$TopUpWallet$topUpWallet.fromJson(
            (l$topUpWallet as Map<String, dynamic>)));
  }

  final Mutation$TopUpWallet$topUpWallet topUpWallet;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topUpWallet = topUpWallet;
    _resultData['topUpWallet'] = l$topUpWallet.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topUpWallet = topUpWallet;
    return Object.hashAll([l$topUpWallet]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TopUpWallet) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$topUpWallet = topUpWallet;
    final lOther$topUpWallet = other.topUpWallet;
    if (l$topUpWallet != lOther$topUpWallet) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$TopUpWallet on Mutation$TopUpWallet {
  CopyWith$Mutation$TopUpWallet<Mutation$TopUpWallet> get copyWith =>
      CopyWith$Mutation$TopUpWallet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TopUpWallet<TRes> {
  factory CopyWith$Mutation$TopUpWallet(
    Mutation$TopUpWallet instance,
    TRes Function(Mutation$TopUpWallet) then,
  ) = _CopyWithImpl$Mutation$TopUpWallet;

  factory CopyWith$Mutation$TopUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TopUpWallet;

  TRes call({Mutation$TopUpWallet$topUpWallet? topUpWallet});
  CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> get topUpWallet;
}

class _CopyWithImpl$Mutation$TopUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet<TRes> {
  _CopyWithImpl$Mutation$TopUpWallet(
    this._instance,
    this._then,
  );

  final Mutation$TopUpWallet _instance;

  final TRes Function(Mutation$TopUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? topUpWallet = _undefined}) => _then(Mutation$TopUpWallet(
      topUpWallet: topUpWallet == _undefined || topUpWallet == null
          ? _instance.topUpWallet
          : (topUpWallet as Mutation$TopUpWallet$topUpWallet)));
  CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> get topUpWallet {
    final local$topUpWallet = _instance.topUpWallet;
    return CopyWith$Mutation$TopUpWallet$topUpWallet(
        local$topUpWallet, (e) => call(topUpWallet: e));
  }
}

class _CopyWithStubImpl$Mutation$TopUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet<TRes> {
  _CopyWithStubImpl$Mutation$TopUpWallet(this._res);

  TRes _res;

  call({Mutation$TopUpWallet$topUpWallet? topUpWallet}) => _res;
  CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> get topUpWallet =>
      CopyWith$Mutation$TopUpWallet$topUpWallet.stub(_res);
}

const documentNodeMutationTopUpWallet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TopUpWallet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TopUpWalletInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topUpWallet'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Mutation$TopUpWallet _parserFn$Mutation$TopUpWallet(
        Map<String, dynamic> data) =>
    Mutation$TopUpWallet.fromJson(data);
typedef OnMutationCompleted$Mutation$TopUpWallet = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$TopUpWallet?,
);

class Options$Mutation$TopUpWallet
    extends graphql.MutationOptions<Mutation$TopUpWallet> {
  Options$Mutation$TopUpWallet({
    String? operationName,
    required Variables$Mutation$TopUpWallet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TopUpWallet? onCompleted,
    graphql.OnMutationUpdate<Mutation$TopUpWallet>? update,
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
                    data == null ? null : _parserFn$Mutation$TopUpWallet(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTopUpWallet,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );

  final OnMutationCompleted$Mutation$TopUpWallet? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TopUpWallet
    extends graphql.WatchQueryOptions<Mutation$TopUpWallet> {
  WatchOptions$Mutation$TopUpWallet({
    String? operationName,
    required Variables$Mutation$TopUpWallet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
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
          document: documentNodeMutationTopUpWallet,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );
}

extension ClientExtension$Mutation$TopUpWallet on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TopUpWallet>> mutate$TopUpWallet(
          Options$Mutation$TopUpWallet options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$TopUpWallet> watchMutation$TopUpWallet(
          WatchOptions$Mutation$TopUpWallet options) =>
      this.watchMutation(options);
}

class Mutation$TopUpWallet$HookResult {
  Mutation$TopUpWallet$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$TopUpWallet runMutation;

  final graphql.QueryResult<Mutation$TopUpWallet> result;
}

Mutation$TopUpWallet$HookResult useMutation$TopUpWallet(
    [WidgetOptions$Mutation$TopUpWallet? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$TopUpWallet());
  return Mutation$TopUpWallet$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TopUpWallet> useWatchMutation$TopUpWallet(
        WatchOptions$Mutation$TopUpWallet options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$TopUpWallet
    extends graphql.MutationOptions<Mutation$TopUpWallet> {
  WidgetOptions$Mutation$TopUpWallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TopUpWallet? onCompleted,
    graphql.OnMutationUpdate<Mutation$TopUpWallet>? update,
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
                    data == null ? null : _parserFn$Mutation$TopUpWallet(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTopUpWallet,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );

  final OnMutationCompleted$Mutation$TopUpWallet? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$TopUpWallet
    = graphql.MultiSourceResult<Mutation$TopUpWallet> Function(
  Variables$Mutation$TopUpWallet, {
  Object? optimisticResult,
  Mutation$TopUpWallet? typedOptimisticResult,
});
typedef Builder$Mutation$TopUpWallet = widgets.Widget Function(
  RunMutation$Mutation$TopUpWallet,
  graphql.QueryResult<Mutation$TopUpWallet>?,
);

class Mutation$TopUpWallet$Widget
    extends graphql_flutter.Mutation<Mutation$TopUpWallet> {
  Mutation$TopUpWallet$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$TopUpWallet? options,
    required Builder$Mutation$TopUpWallet builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$TopUpWallet(),
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

class Mutation$TopUpWallet$topUpWallet {
  Mutation$TopUpWallet$topUpWallet({
    required this.status,
    required this.url,
  });

  factory Mutation$TopUpWallet$topUpWallet.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$url = json['url'];
    return Mutation$TopUpWallet$topUpWallet(
      status: fromJson$Enum$TopUpWalletStatus((l$status as String)),
      url: (l$url as String),
    );
  }

  final Enum$TopUpWalletStatus status;

  final String url;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$TopUpWalletStatus(l$status);
    final l$url = url;
    _resultData['url'] = l$url;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$url = url;
    return Object.hashAll([
      l$status,
      l$url,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$TopUpWallet$topUpWallet) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$TopUpWallet$topUpWallet
    on Mutation$TopUpWallet$topUpWallet {
  CopyWith$Mutation$TopUpWallet$topUpWallet<Mutation$TopUpWallet$topUpWallet>
      get copyWith => CopyWith$Mutation$TopUpWallet$topUpWallet(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> {
  factory CopyWith$Mutation$TopUpWallet$topUpWallet(
    Mutation$TopUpWallet$topUpWallet instance,
    TRes Function(Mutation$TopUpWallet$topUpWallet) then,
  ) = _CopyWithImpl$Mutation$TopUpWallet$topUpWallet;

  factory CopyWith$Mutation$TopUpWallet$topUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TopUpWallet$topUpWallet;

  TRes call({
    Enum$TopUpWalletStatus? status,
    String? url,
  });
}

class _CopyWithImpl$Mutation$TopUpWallet$topUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> {
  _CopyWithImpl$Mutation$TopUpWallet$topUpWallet(
    this._instance,
    this._then,
  );

  final Mutation$TopUpWallet$topUpWallet _instance;

  final TRes Function(Mutation$TopUpWallet$topUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? url = _undefined,
  }) =>
      _then(Mutation$TopUpWallet$topUpWallet(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$TopUpWalletStatus),
        url: url == _undefined || url == null ? _instance.url : (url as String),
      ));
}

class _CopyWithStubImpl$Mutation$TopUpWallet$topUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet$topUpWallet<TRes> {
  _CopyWithStubImpl$Mutation$TopUpWallet$topUpWallet(this._res);

  TRes _res;

  call({
    Enum$TopUpWalletStatus? status,
    String? url,
  }) =>
      _res;
}
