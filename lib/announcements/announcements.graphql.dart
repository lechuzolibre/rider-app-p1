import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/timestamp.dart';

class Query$GetAnnouncements {
  Query$GetAnnouncements({required this.announcements});

  factory Query$GetAnnouncements.fromJson(Map<String, dynamic> json) {
    final l$announcements = json['announcements'];
    return Query$GetAnnouncements(
        announcements: Query$GetAnnouncements$announcements.fromJson(
            (l$announcements as Map<String, dynamic>)));
  }

  final Query$GetAnnouncements$announcements announcements;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$announcements = announcements;
    _resultData['announcements'] = l$announcements.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$announcements = announcements;
    return Object.hashAll([l$announcements]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAnnouncements) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$announcements = announcements;
    final lOther$announcements = other.announcements;
    if (l$announcements != lOther$announcements) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAnnouncements on Query$GetAnnouncements {
  CopyWith$Query$GetAnnouncements<Query$GetAnnouncements> get copyWith =>
      CopyWith$Query$GetAnnouncements(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAnnouncements<TRes> {
  factory CopyWith$Query$GetAnnouncements(
    Query$GetAnnouncements instance,
    TRes Function(Query$GetAnnouncements) then,
  ) = _CopyWithImpl$Query$GetAnnouncements;

  factory CopyWith$Query$GetAnnouncements.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAnnouncements;

  TRes call({Query$GetAnnouncements$announcements? announcements});
  CopyWith$Query$GetAnnouncements$announcements<TRes> get announcements;
}

class _CopyWithImpl$Query$GetAnnouncements<TRes>
    implements CopyWith$Query$GetAnnouncements<TRes> {
  _CopyWithImpl$Query$GetAnnouncements(
    this._instance,
    this._then,
  );

  final Query$GetAnnouncements _instance;

  final TRes Function(Query$GetAnnouncements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? announcements = _undefined}) =>
      _then(Query$GetAnnouncements(
          announcements: announcements == _undefined || announcements == null
              ? _instance.announcements
              : (announcements as Query$GetAnnouncements$announcements)));
  CopyWith$Query$GetAnnouncements$announcements<TRes> get announcements {
    final local$announcements = _instance.announcements;
    return CopyWith$Query$GetAnnouncements$announcements(
        local$announcements, (e) => call(announcements: e));
  }
}

class _CopyWithStubImpl$Query$GetAnnouncements<TRes>
    implements CopyWith$Query$GetAnnouncements<TRes> {
  _CopyWithStubImpl$Query$GetAnnouncements(this._res);

  TRes _res;

  call({Query$GetAnnouncements$announcements? announcements}) => _res;
  CopyWith$Query$GetAnnouncements$announcements<TRes> get announcements =>
      CopyWith$Query$GetAnnouncements$announcements.stub(_res);
}

const documentNodeQueryGetAnnouncements = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAnnouncements'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'announcements'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'paging'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '50'),
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
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'startAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'description'),
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
          )
        ]),
      )
    ]),
  ),
]);
Query$GetAnnouncements _parserFn$Query$GetAnnouncements(
        Map<String, dynamic> data) =>
    Query$GetAnnouncements.fromJson(data);
typedef OnQueryComplete$Query$GetAnnouncements = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAnnouncements?,
);

class Options$Query$GetAnnouncements
    extends graphql.QueryOptions<Query$GetAnnouncements> {
  Options$Query$GetAnnouncements({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAnnouncements? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAnnouncements? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$GetAnnouncements(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAnnouncements,
          parserFn: _parserFn$Query$GetAnnouncements,
        );

  final OnQueryComplete$Query$GetAnnouncements? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAnnouncements
    extends graphql.WatchQueryOptions<Query$GetAnnouncements> {
  WatchOptions$Query$GetAnnouncements({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAnnouncements? typedOptimisticResult,
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
          document: documentNodeQueryGetAnnouncements,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAnnouncements,
        );
}

class FetchMoreOptions$Query$GetAnnouncements extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAnnouncements(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetAnnouncements,
        );
}

extension ClientExtension$Query$GetAnnouncements on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAnnouncements>> query$GetAnnouncements(
          [Options$Query$GetAnnouncements? options]) async =>
      await this.query(options ?? Options$Query$GetAnnouncements());
  graphql.ObservableQuery<Query$GetAnnouncements> watchQuery$GetAnnouncements(
          [WatchOptions$Query$GetAnnouncements? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAnnouncements());
  void writeQuery$GetAnnouncements({
    required Query$GetAnnouncements data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetAnnouncements)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAnnouncements? readQuery$GetAnnouncements({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAnnouncements)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAnnouncements.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAnnouncements>
    useQuery$GetAnnouncements([Options$Query$GetAnnouncements? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetAnnouncements());
graphql.ObservableQuery<Query$GetAnnouncements> useWatchQuery$GetAnnouncements(
        [WatchOptions$Query$GetAnnouncements? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetAnnouncements());

class Query$GetAnnouncements$Widget
    extends graphql_flutter.Query<Query$GetAnnouncements> {
  Query$GetAnnouncements$Widget({
    widgets.Key? key,
    Options$Query$GetAnnouncements? options,
    required graphql_flutter.QueryBuilder<Query$GetAnnouncements> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAnnouncements(),
          builder: builder,
        );
}

class Query$GetAnnouncements$announcements {
  Query$GetAnnouncements$announcements({required this.edges});

  factory Query$GetAnnouncements$announcements.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    return Query$GetAnnouncements$announcements(
        edges: (l$edges as List<dynamic>)
            .map((e) => Query$GetAnnouncements$announcements$edges.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$GetAnnouncements$announcements$edges> edges;

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
    if (!(other is Query$GetAnnouncements$announcements) ||
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

extension UtilityExtension$Query$GetAnnouncements$announcements
    on Query$GetAnnouncements$announcements {
  CopyWith$Query$GetAnnouncements$announcements<
          Query$GetAnnouncements$announcements>
      get copyWith => CopyWith$Query$GetAnnouncements$announcements(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAnnouncements$announcements<TRes> {
  factory CopyWith$Query$GetAnnouncements$announcements(
    Query$GetAnnouncements$announcements instance,
    TRes Function(Query$GetAnnouncements$announcements) then,
  ) = _CopyWithImpl$Query$GetAnnouncements$announcements;

  factory CopyWith$Query$GetAnnouncements$announcements.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAnnouncements$announcements;

  TRes call({List<Query$GetAnnouncements$announcements$edges>? edges});
  TRes edges(
      Iterable<Query$GetAnnouncements$announcements$edges> Function(
              Iterable<
                  CopyWith$Query$GetAnnouncements$announcements$edges<
                      Query$GetAnnouncements$announcements$edges>>)
          _fn);
}

class _CopyWithImpl$Query$GetAnnouncements$announcements<TRes>
    implements CopyWith$Query$GetAnnouncements$announcements<TRes> {
  _CopyWithImpl$Query$GetAnnouncements$announcements(
    this._instance,
    this._then,
  );

  final Query$GetAnnouncements$announcements _instance;

  final TRes Function(Query$GetAnnouncements$announcements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? edges = _undefined}) =>
      _then(Query$GetAnnouncements$announcements(
          edges: edges == _undefined || edges == null
              ? _instance.edges
              : (edges as List<Query$GetAnnouncements$announcements$edges>)));
  TRes edges(
          Iterable<Query$GetAnnouncements$announcements$edges> Function(
                  Iterable<
                      CopyWith$Query$GetAnnouncements$announcements$edges<
                          Query$GetAnnouncements$announcements$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$GetAnnouncements$announcements$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAnnouncements$announcements<TRes>
    implements CopyWith$Query$GetAnnouncements$announcements<TRes> {
  _CopyWithStubImpl$Query$GetAnnouncements$announcements(this._res);

  TRes _res;

  call({List<Query$GetAnnouncements$announcements$edges>? edges}) => _res;
  edges(_fn) => _res;
}

class Query$GetAnnouncements$announcements$edges {
  Query$GetAnnouncements$announcements$edges({required this.node});

  factory Query$GetAnnouncements$announcements$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    return Query$GetAnnouncements$announcements$edges(
        node: Query$GetAnnouncements$announcements$edges$node.fromJson(
            (l$node as Map<String, dynamic>)));
  }

  final Query$GetAnnouncements$announcements$edges$node node;

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
    if (!(other is Query$GetAnnouncements$announcements$edges) ||
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

extension UtilityExtension$Query$GetAnnouncements$announcements$edges
    on Query$GetAnnouncements$announcements$edges {
  CopyWith$Query$GetAnnouncements$announcements$edges<
          Query$GetAnnouncements$announcements$edges>
      get copyWith => CopyWith$Query$GetAnnouncements$announcements$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAnnouncements$announcements$edges<TRes> {
  factory CopyWith$Query$GetAnnouncements$announcements$edges(
    Query$GetAnnouncements$announcements$edges instance,
    TRes Function(Query$GetAnnouncements$announcements$edges) then,
  ) = _CopyWithImpl$Query$GetAnnouncements$announcements$edges;

  factory CopyWith$Query$GetAnnouncements$announcements$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAnnouncements$announcements$edges;

  TRes call({Query$GetAnnouncements$announcements$edges$node? node});
  CopyWith$Query$GetAnnouncements$announcements$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetAnnouncements$announcements$edges<TRes>
    implements CopyWith$Query$GetAnnouncements$announcements$edges<TRes> {
  _CopyWithImpl$Query$GetAnnouncements$announcements$edges(
    this._instance,
    this._then,
  );

  final Query$GetAnnouncements$announcements$edges _instance;

  final TRes Function(Query$GetAnnouncements$announcements$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined}) =>
      _then(Query$GetAnnouncements$announcements$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Query$GetAnnouncements$announcements$edges$node)));
  CopyWith$Query$GetAnnouncements$announcements$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$GetAnnouncements$announcements$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetAnnouncements$announcements$edges<TRes>
    implements CopyWith$Query$GetAnnouncements$announcements$edges<TRes> {
  _CopyWithStubImpl$Query$GetAnnouncements$announcements$edges(this._res);

  TRes _res;

  call({Query$GetAnnouncements$announcements$edges$node? node}) => _res;
  CopyWith$Query$GetAnnouncements$announcements$edges$node<TRes> get node =>
      CopyWith$Query$GetAnnouncements$announcements$edges$node.stub(_res);
}

class Query$GetAnnouncements$announcements$edges$node {
  Query$GetAnnouncements$announcements$edges$node({
    required this.id,
    required this.title,
    required this.startAt,
    required this.description,
    this.url,
  });

  factory Query$GetAnnouncements$announcements$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$startAt = json['startAt'];
    final l$description = json['description'];
    final l$url = json['url'];
    return Query$GetAnnouncements$announcements$edges$node(
      id: (l$id as String),
      title: (l$title as String),
      startAt: fromGraphQLTimestampToDartDateTime(l$startAt),
      description: (l$description as String),
      url: (l$url as String?),
    );
  }

  final String id;

  final String title;

  final DateTime startAt;

  final String description;

  final String? url;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$startAt = startAt;
    _resultData['startAt'] = fromDartDateTimeToGraphQLTimestamp(l$startAt);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$url = url;
    _resultData['url'] = l$url;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$startAt = startAt;
    final l$description = description;
    final l$url = url;
    return Object.hashAll([
      l$id,
      l$title,
      l$startAt,
      l$description,
      l$url,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAnnouncements$announcements$edges$node) ||
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
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetAnnouncements$announcements$edges$node
    on Query$GetAnnouncements$announcements$edges$node {
  CopyWith$Query$GetAnnouncements$announcements$edges$node<
          Query$GetAnnouncements$announcements$edges$node>
      get copyWith => CopyWith$Query$GetAnnouncements$announcements$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAnnouncements$announcements$edges$node<TRes> {
  factory CopyWith$Query$GetAnnouncements$announcements$edges$node(
    Query$GetAnnouncements$announcements$edges$node instance,
    TRes Function(Query$GetAnnouncements$announcements$edges$node) then,
  ) = _CopyWithImpl$Query$GetAnnouncements$announcements$edges$node;

  factory CopyWith$Query$GetAnnouncements$announcements$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAnnouncements$announcements$edges$node;

  TRes call({
    String? id,
    String? title,
    DateTime? startAt,
    String? description,
    String? url,
  });
}

class _CopyWithImpl$Query$GetAnnouncements$announcements$edges$node<TRes>
    implements CopyWith$Query$GetAnnouncements$announcements$edges$node<TRes> {
  _CopyWithImpl$Query$GetAnnouncements$announcements$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetAnnouncements$announcements$edges$node _instance;

  final TRes Function(Query$GetAnnouncements$announcements$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? startAt = _undefined,
    Object? description = _undefined,
    Object? url = _undefined,
  }) =>
      _then(Query$GetAnnouncements$announcements$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        startAt: startAt == _undefined || startAt == null
            ? _instance.startAt
            : (startAt as DateTime),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        url: url == _undefined ? _instance.url : (url as String?),
      ));
}

class _CopyWithStubImpl$Query$GetAnnouncements$announcements$edges$node<TRes>
    implements CopyWith$Query$GetAnnouncements$announcements$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetAnnouncements$announcements$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    DateTime? startAt,
    String? description,
    String? url,
  }) =>
      _res;
}
