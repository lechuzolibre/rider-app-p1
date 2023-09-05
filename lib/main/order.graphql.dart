import '../graphql/fragments/active-order.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:ridy/graphql/scalars/timestamp.dart';

class Variables$Query$GetCurrentOrder {
  factory Variables$Query$GetCurrentOrder({required int versionCode}) =>
      Variables$Query$GetCurrentOrder._({
        r'versionCode': versionCode,
      });

  Variables$Query$GetCurrentOrder._(this._$data);

  factory Variables$Query$GetCurrentOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$versionCode = data['versionCode'];
    result$data['versionCode'] = (l$versionCode as int);
    return Variables$Query$GetCurrentOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  int get versionCode => (_$data['versionCode'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$versionCode = versionCode;
    result$data['versionCode'] = l$versionCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetCurrentOrder<Variables$Query$GetCurrentOrder>
      get copyWith => CopyWith$Variables$Query$GetCurrentOrder(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCurrentOrder) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$versionCode = versionCode;
    final lOther$versionCode = other.versionCode;
    if (l$versionCode != lOther$versionCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$versionCode = versionCode;
    return Object.hashAll([l$versionCode]);
  }
}

abstract class CopyWith$Variables$Query$GetCurrentOrder<TRes> {
  factory CopyWith$Variables$Query$GetCurrentOrder(
    Variables$Query$GetCurrentOrder instance,
    TRes Function(Variables$Query$GetCurrentOrder) then,
  ) = _CopyWithImpl$Variables$Query$GetCurrentOrder;

  factory CopyWith$Variables$Query$GetCurrentOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCurrentOrder;

  TRes call({int? versionCode});
}

class _CopyWithImpl$Variables$Query$GetCurrentOrder<TRes>
    implements CopyWith$Variables$Query$GetCurrentOrder<TRes> {
  _CopyWithImpl$Variables$Query$GetCurrentOrder(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCurrentOrder _instance;

  final TRes Function(Variables$Query$GetCurrentOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? versionCode = _undefined}) =>
      _then(Variables$Query$GetCurrentOrder._({
        ..._instance._$data,
        if (versionCode != _undefined && versionCode != null)
          'versionCode': (versionCode as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCurrentOrder<TRes>
    implements CopyWith$Variables$Query$GetCurrentOrder<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCurrentOrder(this._res);

  TRes _res;

  call({int? versionCode}) => _res;
}

class Query$GetCurrentOrder {
  Query$GetCurrentOrder({
    this.rider,
    required this.requireUpdate,
    this.getCurrentOrderDriverLocation,
  });

  factory Query$GetCurrentOrder.fromJson(Map<String, dynamic> json) {
    final l$rider = json['rider'];
    final l$requireUpdate = json['requireUpdate'];
    final l$getCurrentOrderDriverLocation =
        json['getCurrentOrderDriverLocation'];
    return Query$GetCurrentOrder(
      rider: l$rider == null
          ? null
          : Query$GetCurrentOrder$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      requireUpdate: fromJson$Enum$VersionStatus((l$requireUpdate as String)),
      getCurrentOrderDriverLocation: l$getCurrentOrderDriverLocation == null
          ? null
          : Query$GetCurrentOrder$getCurrentOrderDriverLocation.fromJson(
              (l$getCurrentOrderDriverLocation as Map<String, dynamic>)),
    );
  }

  final Query$GetCurrentOrder$rider? rider;

  final Enum$VersionStatus requireUpdate;

  final Query$GetCurrentOrder$getCurrentOrderDriverLocation?
      getCurrentOrderDriverLocation;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rider = rider;
    _resultData['rider'] = l$rider?.toJson();
    final l$requireUpdate = requireUpdate;
    _resultData['requireUpdate'] = toJson$Enum$VersionStatus(l$requireUpdate);
    final l$getCurrentOrderDriverLocation = getCurrentOrderDriverLocation;
    _resultData['getCurrentOrderDriverLocation'] =
        l$getCurrentOrderDriverLocation?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rider = rider;
    final l$requireUpdate = requireUpdate;
    final l$getCurrentOrderDriverLocation = getCurrentOrderDriverLocation;
    return Object.hashAll([
      l$rider,
      l$requireUpdate,
      l$getCurrentOrderDriverLocation,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCurrentOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
      return false;
    }
    final l$requireUpdate = requireUpdate;
    final lOther$requireUpdate = other.requireUpdate;
    if (l$requireUpdate != lOther$requireUpdate) {
      return false;
    }
    final l$getCurrentOrderDriverLocation = getCurrentOrderDriverLocation;
    final lOther$getCurrentOrderDriverLocation =
        other.getCurrentOrderDriverLocation;
    if (l$getCurrentOrderDriverLocation !=
        lOther$getCurrentOrderDriverLocation) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCurrentOrder on Query$GetCurrentOrder {
  CopyWith$Query$GetCurrentOrder<Query$GetCurrentOrder> get copyWith =>
      CopyWith$Query$GetCurrentOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCurrentOrder<TRes> {
  factory CopyWith$Query$GetCurrentOrder(
    Query$GetCurrentOrder instance,
    TRes Function(Query$GetCurrentOrder) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder;

  factory CopyWith$Query$GetCurrentOrder.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder;

  TRes call({
    Query$GetCurrentOrder$rider? rider,
    Enum$VersionStatus? requireUpdate,
    Query$GetCurrentOrder$getCurrentOrderDriverLocation?
        getCurrentOrderDriverLocation,
  });
  CopyWith$Query$GetCurrentOrder$rider<TRes> get rider;
  CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation<TRes>
      get getCurrentOrderDriverLocation;
}

class _CopyWithImpl$Query$GetCurrentOrder<TRes>
    implements CopyWith$Query$GetCurrentOrder<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder _instance;

  final TRes Function(Query$GetCurrentOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rider = _undefined,
    Object? requireUpdate = _undefined,
    Object? getCurrentOrderDriverLocation = _undefined,
  }) =>
      _then(Query$GetCurrentOrder(
        rider: rider == _undefined
            ? _instance.rider
            : (rider as Query$GetCurrentOrder$rider?),
        requireUpdate: requireUpdate == _undefined || requireUpdate == null
            ? _instance.requireUpdate
            : (requireUpdate as Enum$VersionStatus),
        getCurrentOrderDriverLocation:
            getCurrentOrderDriverLocation == _undefined
                ? _instance.getCurrentOrderDriverLocation
                : (getCurrentOrderDriverLocation
                    as Query$GetCurrentOrder$getCurrentOrderDriverLocation?),
      ));
  CopyWith$Query$GetCurrentOrder$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Query$GetCurrentOrder$rider.stub(_then(_instance))
        : CopyWith$Query$GetCurrentOrder$rider(
            local$rider, (e) => call(rider: e));
  }

  CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation<TRes>
      get getCurrentOrderDriverLocation {
    final local$getCurrentOrderDriverLocation =
        _instance.getCurrentOrderDriverLocation;
    return local$getCurrentOrderDriverLocation == null
        ? CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation.stub(
            _then(_instance))
        : CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation(
            local$getCurrentOrderDriverLocation,
            (e) => call(getCurrentOrderDriverLocation: e));
  }
}

class _CopyWithStubImpl$Query$GetCurrentOrder<TRes>
    implements CopyWith$Query$GetCurrentOrder<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder(this._res);

  TRes _res;

  call({
    Query$GetCurrentOrder$rider? rider,
    Enum$VersionStatus? requireUpdate,
    Query$GetCurrentOrder$getCurrentOrderDriverLocation?
        getCurrentOrderDriverLocation,
  }) =>
      _res;
  CopyWith$Query$GetCurrentOrder$rider<TRes> get rider =>
      CopyWith$Query$GetCurrentOrder$rider.stub(_res);
  CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation<TRes>
      get getCurrentOrderDriverLocation =>
          CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation.stub(
              _res);
}

const documentNodeQueryGetCurrentOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCurrentOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'versionCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'rider'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: StringValueNode(
              value: '1',
              isBlock: false,
            ),
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
          ),
          FieldNode(
            name: NameNode(value: 'mobileNumber'),
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
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
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
                        name: NameNode(value: 'in'),
                        value: ListValueNode(values: [
                          EnumValueNode(name: NameNode(value: 'Requested')),
                          EnumValueNode(name: NameNode(value: 'Found')),
                          EnumValueNode(name: NameNode(value: 'NotFound')),
                          EnumValueNode(name: NameNode(value: 'NoCloseFound')),
                          EnumValueNode(
                              name: NameNode(value: 'DriverAccepted')),
                          EnumValueNode(name: NameNode(value: 'Arrived')),
                          EnumValueNode(name: NameNode(value: 'Started')),
                          EnumValueNode(
                              name: NameNode(value: 'WaitingForReview')),
                          EnumValueNode(
                              name: NameNode(value: 'WaitingForPostPay')),
                          EnumValueNode(
                              name: NameNode(value: 'WaitingForPrePay')),
                        ]),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CurrentOrder'),
                directives: [],
              ),
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
          ),
          FieldNode(
            name: NameNode(value: 'ordersAggregate'),
            alias: NameNode(value: 'bookedOrders'),
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
                name: NameNode(value: 'count'),
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
                  )
                ]),
              )
            ]),
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'requireUpdate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'versionCode'),
            value: VariableNode(name: NameNode(value: 'versionCode')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'getCurrentOrderDriverLocation'),
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
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Query$GetCurrentOrder _parserFn$Query$GetCurrentOrder(
        Map<String, dynamic> data) =>
    Query$GetCurrentOrder.fromJson(data);
typedef OnQueryComplete$Query$GetCurrentOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCurrentOrder?,
);

class Options$Query$GetCurrentOrder
    extends graphql.QueryOptions<Query$GetCurrentOrder> {
  Options$Query$GetCurrentOrder({
    String? operationName,
    required Variables$Query$GetCurrentOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCurrentOrder? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCurrentOrder? onComplete,
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
                    data == null ? null : _parserFn$Query$GetCurrentOrder(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCurrentOrder,
          parserFn: _parserFn$Query$GetCurrentOrder,
        );

  final OnQueryComplete$Query$GetCurrentOrder? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCurrentOrder
    extends graphql.WatchQueryOptions<Query$GetCurrentOrder> {
  WatchOptions$Query$GetCurrentOrder({
    String? operationName,
    required Variables$Query$GetCurrentOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCurrentOrder? typedOptimisticResult,
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
          document: documentNodeQueryGetCurrentOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCurrentOrder,
        );
}

class FetchMoreOptions$Query$GetCurrentOrder extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCurrentOrder({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetCurrentOrder variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetCurrentOrder,
        );
}

extension ClientExtension$Query$GetCurrentOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCurrentOrder>> query$GetCurrentOrder(
          Options$Query$GetCurrentOrder options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetCurrentOrder> watchQuery$GetCurrentOrder(
          WatchOptions$Query$GetCurrentOrder options) =>
      this.watchQuery(options);
  void writeQuery$GetCurrentOrder({
    required Query$GetCurrentOrder data,
    required Variables$Query$GetCurrentOrder variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCurrentOrder),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCurrentOrder? readQuery$GetCurrentOrder({
    required Variables$Query$GetCurrentOrder variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetCurrentOrder),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCurrentOrder.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCurrentOrder> useQuery$GetCurrentOrder(
        Options$Query$GetCurrentOrder options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetCurrentOrder> useWatchQuery$GetCurrentOrder(
        WatchOptions$Query$GetCurrentOrder options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetCurrentOrder$Widget
    extends graphql_flutter.Query<Query$GetCurrentOrder> {
  Query$GetCurrentOrder$Widget({
    widgets.Key? key,
    required Options$Query$GetCurrentOrder options,
    required graphql_flutter.QueryBuilder<Query$GetCurrentOrder> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetCurrentOrder$rider {
  Query$GetCurrentOrder$rider({
    required this.id,
    required this.mobileNumber,
    this.firstName,
    this.lastName,
    this.gender,
    this.email,
    this.media,
    required this.orders,
    required this.bookedOrders,
  });

  factory Query$GetCurrentOrder$rider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mobileNumber = json['mobileNumber'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$gender = json['gender'];
    final l$email = json['email'];
    final l$media = json['media'];
    final l$orders = json['orders'];
    final l$bookedOrders = json['bookedOrders'];
    return Query$GetCurrentOrder$rider(
      id: (l$id as String),
      mobileNumber: (l$mobileNumber as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      gender:
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String)),
      email: (l$email as String?),
      media: l$media == null
          ? null
          : Query$GetCurrentOrder$rider$media.fromJson(
              (l$media as Map<String, dynamic>)),
      orders: (l$orders as List<dynamic>)
          .map((e) => Query$GetCurrentOrder$rider$orders.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      bookedOrders: (l$bookedOrders as List<dynamic>)
          .map((e) => Query$GetCurrentOrder$rider$bookedOrders.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final String mobileNumber;

  final String? firstName;

  final String? lastName;

  final Enum$Gender? gender;

  final String? email;

  final Query$GetCurrentOrder$rider$media? media;

  final List<Query$GetCurrentOrder$rider$orders> orders;

  final List<Query$GetCurrentOrder$rider$bookedOrders> bookedOrders;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$gender = gender;
    _resultData['gender'] =
        l$gender == null ? null : toJson$Enum$Gender(l$gender);
    final l$email = email;
    _resultData['email'] = l$email;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$orders = orders;
    _resultData['orders'] = l$orders.map((e) => e.toJson()).toList();
    final l$bookedOrders = bookedOrders;
    _resultData['bookedOrders'] =
        l$bookedOrders.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mobileNumber = mobileNumber;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$gender = gender;
    final l$email = email;
    final l$media = media;
    final l$orders = orders;
    final l$bookedOrders = bookedOrders;
    return Object.hashAll([
      l$id,
      l$mobileNumber,
      l$firstName,
      l$lastName,
      l$gender,
      l$email,
      l$media,
      Object.hashAll(l$orders.map((v) => v)),
      Object.hashAll(l$bookedOrders.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCurrentOrder$rider) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders.length != lOther$orders.length) {
      return false;
    }
    for (int i = 0; i < l$orders.length; i++) {
      final l$orders$entry = l$orders[i];
      final lOther$orders$entry = lOther$orders[i];
      if (l$orders$entry != lOther$orders$entry) {
        return false;
      }
    }
    final l$bookedOrders = bookedOrders;
    final lOther$bookedOrders = other.bookedOrders;
    if (l$bookedOrders.length != lOther$bookedOrders.length) {
      return false;
    }
    for (int i = 0; i < l$bookedOrders.length; i++) {
      final l$bookedOrders$entry = l$bookedOrders[i];
      final lOther$bookedOrders$entry = lOther$bookedOrders[i];
      if (l$bookedOrders$entry != lOther$bookedOrders$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCurrentOrder$rider
    on Query$GetCurrentOrder$rider {
  CopyWith$Query$GetCurrentOrder$rider<Query$GetCurrentOrder$rider>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider(
    Query$GetCurrentOrder$rider instance,
    TRes Function(Query$GetCurrentOrder$rider) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider;

  factory CopyWith$Query$GetCurrentOrder$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider;

  TRes call({
    String? id,
    String? mobileNumber,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
    Query$GetCurrentOrder$rider$media? media,
    List<Query$GetCurrentOrder$rider$orders>? orders,
    List<Query$GetCurrentOrder$rider$bookedOrders>? bookedOrders,
  });
  CopyWith$Query$GetCurrentOrder$rider$media<TRes> get media;
  TRes orders(
      Iterable<Query$GetCurrentOrder$rider$orders> Function(
              Iterable<
                  CopyWith$Query$GetCurrentOrder$rider$orders<
                      Query$GetCurrentOrder$rider$orders>>)
          _fn);
  TRes bookedOrders(
      Iterable<Query$GetCurrentOrder$rider$bookedOrders> Function(
              Iterable<
                  CopyWith$Query$GetCurrentOrder$rider$bookedOrders<
                      Query$GetCurrentOrder$rider$bookedOrders>>)
          _fn);
}

class _CopyWithImpl$Query$GetCurrentOrder$rider<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider _instance;

  final TRes Function(Query$GetCurrentOrder$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mobileNumber = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? gender = _undefined,
    Object? email = _undefined,
    Object? media = _undefined,
    Object? orders = _undefined,
    Object? bookedOrders = _undefined,
  }) =>
      _then(Query$GetCurrentOrder$rider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        gender:
            gender == _undefined ? _instance.gender : (gender as Enum$Gender?),
        email: email == _undefined ? _instance.email : (email as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetCurrentOrder$rider$media?),
        orders: orders == _undefined || orders == null
            ? _instance.orders
            : (orders as List<Query$GetCurrentOrder$rider$orders>),
        bookedOrders: bookedOrders == _undefined || bookedOrders == null
            ? _instance.bookedOrders
            : (bookedOrders as List<Query$GetCurrentOrder$rider$bookedOrders>),
      ));
  CopyWith$Query$GetCurrentOrder$rider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetCurrentOrder$rider$media.stub(_then(_instance))
        : CopyWith$Query$GetCurrentOrder$rider$media(
            local$media, (e) => call(media: e));
  }

  TRes orders(
          Iterable<Query$GetCurrentOrder$rider$orders> Function(
                  Iterable<
                      CopyWith$Query$GetCurrentOrder$rider$orders<
                          Query$GetCurrentOrder$rider$orders>>)
              _fn) =>
      call(
          orders: _fn(_instance.orders
              .map((e) => CopyWith$Query$GetCurrentOrder$rider$orders(
                    e,
                    (i) => i,
                  ))).toList());
  TRes bookedOrders(
          Iterable<Query$GetCurrentOrder$rider$bookedOrders> Function(
                  Iterable<
                      CopyWith$Query$GetCurrentOrder$rider$bookedOrders<
                          Query$GetCurrentOrder$rider$bookedOrders>>)
              _fn) =>
      call(
          bookedOrders: _fn(_instance.bookedOrders
              .map((e) => CopyWith$Query$GetCurrentOrder$rider$bookedOrders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider(this._res);

  TRes _res;

  call({
    String? id,
    String? mobileNumber,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
    Query$GetCurrentOrder$rider$media? media,
    List<Query$GetCurrentOrder$rider$orders>? orders,
    List<Query$GetCurrentOrder$rider$bookedOrders>? bookedOrders,
  }) =>
      _res;
  CopyWith$Query$GetCurrentOrder$rider$media<TRes> get media =>
      CopyWith$Query$GetCurrentOrder$rider$media.stub(_res);
  orders(_fn) => _res;
  bookedOrders(_fn) => _res;
}

class Query$GetCurrentOrder$rider$media {
  Query$GetCurrentOrder$rider$media({required this.address});

  factory Query$GetCurrentOrder$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetCurrentOrder$rider$media(address: (l$address as String));
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
    if (!(other is Query$GetCurrentOrder$rider$media) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$media
    on Query$GetCurrentOrder$rider$media {
  CopyWith$Query$GetCurrentOrder$rider$media<Query$GetCurrentOrder$rider$media>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$media<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$media(
    Query$GetCurrentOrder$rider$media instance,
    TRes Function(Query$GetCurrentOrder$rider$media) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$media;

  factory CopyWith$Query$GetCurrentOrder$rider$media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$media<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$media<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$media(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$media _instance;

  final TRes Function(Query$GetCurrentOrder$rider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetCurrentOrder$rider$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$media<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$media<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$GetCurrentOrder$rider$orders implements Fragment$CurrentOrder {
  Query$GetCurrentOrder$rider$orders({
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

  factory Query$GetCurrentOrder$rider$orders.fromJson(
      Map<String, dynamic> json) {
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
    return Query$GetCurrentOrder$rider$orders(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      points: (l$points as List<dynamic>)
          .map((e) => Query$GetCurrentOrder$rider$orders$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      driver: l$driver == null
          ? null
          : Query$GetCurrentOrder$rider$orders$driver.fromJson(
              (l$driver as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Query$GetCurrentOrder$rider$orders$service.fromJson(
              (l$service as Map<String, dynamic>)),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Query$GetCurrentOrder$rider$orders$directions.fromJson(
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
          .map((e) => Query$GetCurrentOrder$rider$orders$conversations.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final List<Query$GetCurrentOrder$rider$orders$points> points;

  final Query$GetCurrentOrder$rider$orders$driver? driver;

  final Query$GetCurrentOrder$rider$orders$service? service;

  final List<Query$GetCurrentOrder$rider$orders$directions>? directions;

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

  final List<Query$GetCurrentOrder$rider$orders$conversations> conversations;

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
    if (!(other is Query$GetCurrentOrder$rider$orders) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders
    on Query$GetCurrentOrder$rider$orders {
  CopyWith$Query$GetCurrentOrder$rider$orders<
          Query$GetCurrentOrder$rider$orders>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$orders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders(
    Query$GetCurrentOrder$rider$orders instance,
    TRes Function(Query$GetCurrentOrder$rider$orders) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders;

  factory CopyWith$Query$GetCurrentOrder$rider$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    List<Query$GetCurrentOrder$rider$orders$points>? points,
    Query$GetCurrentOrder$rider$orders$driver? driver,
    Query$GetCurrentOrder$rider$orders$service? service,
    List<Query$GetCurrentOrder$rider$orders$directions>? directions,
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
    List<Query$GetCurrentOrder$rider$orders$conversations>? conversations,
  });
  TRes points(
      Iterable<Query$GetCurrentOrder$rider$orders$points> Function(
              Iterable<
                  CopyWith$Query$GetCurrentOrder$rider$orders$points<
                      Query$GetCurrentOrder$rider$orders$points>>)
          _fn);
  CopyWith$Query$GetCurrentOrder$rider$orders$driver<TRes> get driver;
  CopyWith$Query$GetCurrentOrder$rider$orders$service<TRes> get service;
  TRes directions(
      Iterable<Query$GetCurrentOrder$rider$orders$directions>? Function(
              Iterable<
                  CopyWith$Query$GetCurrentOrder$rider$orders$directions<
                      Query$GetCurrentOrder$rider$orders$directions>>?)
          _fn);
  TRes conversations(
      Iterable<Query$GetCurrentOrder$rider$orders$conversations> Function(
              Iterable<
                  CopyWith$Query$GetCurrentOrder$rider$orders$conversations<
                      Query$GetCurrentOrder$rider$orders$conversations>>)
          _fn);
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders) _then;

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
      _then(Query$GetCurrentOrder$rider$orders(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Query$GetCurrentOrder$rider$orders$points>),
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Query$GetCurrentOrder$rider$orders$driver?),
        service: service == _undefined
            ? _instance.service
            : (service as Query$GetCurrentOrder$rider$orders$service?),
        directions: directions == _undefined
            ? _instance.directions
            : (directions
                as List<Query$GetCurrentOrder$rider$orders$directions>?),
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
            : (conversations
                as List<Query$GetCurrentOrder$rider$orders$conversations>),
      ));
  TRes points(
          Iterable<Query$GetCurrentOrder$rider$orders$points> Function(
                  Iterable<
                      CopyWith$Query$GetCurrentOrder$rider$orders$points<
                          Query$GetCurrentOrder$rider$orders$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points
              .map((e) => CopyWith$Query$GetCurrentOrder$rider$orders$points(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$GetCurrentOrder$rider$orders$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Query$GetCurrentOrder$rider$orders$driver.stub(
            _then(_instance))
        : CopyWith$Query$GetCurrentOrder$rider$orders$driver(
            local$driver, (e) => call(driver: e));
  }

  CopyWith$Query$GetCurrentOrder$rider$orders$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$GetCurrentOrder$rider$orders$service.stub(
            _then(_instance))
        : CopyWith$Query$GetCurrentOrder$rider$orders$service(
            local$service, (e) => call(service: e));
  }

  TRes directions(
          Iterable<Query$GetCurrentOrder$rider$orders$directions>? Function(
                  Iterable<
                      CopyWith$Query$GetCurrentOrder$rider$orders$directions<
                          Query$GetCurrentOrder$rider$orders$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map(
              (e) => CopyWith$Query$GetCurrentOrder$rider$orders$directions(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes conversations(
          Iterable<Query$GetCurrentOrder$rider$orders$conversations> Function(
                  Iterable<
                      CopyWith$Query$GetCurrentOrder$rider$orders$conversations<
                          Query$GetCurrentOrder$rider$orders$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations.map(
              (e) => CopyWith$Query$GetCurrentOrder$rider$orders$conversations(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    List<Query$GetCurrentOrder$rider$orders$points>? points,
    Query$GetCurrentOrder$rider$orders$driver? driver,
    Query$GetCurrentOrder$rider$orders$service? service,
    List<Query$GetCurrentOrder$rider$orders$directions>? directions,
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
    List<Query$GetCurrentOrder$rider$orders$conversations>? conversations,
  }) =>
      _res;
  points(_fn) => _res;
  CopyWith$Query$GetCurrentOrder$rider$orders$driver<TRes> get driver =>
      CopyWith$Query$GetCurrentOrder$rider$orders$driver.stub(_res);
  CopyWith$Query$GetCurrentOrder$rider$orders$service<TRes> get service =>
      CopyWith$Query$GetCurrentOrder$rider$orders$service.stub(_res);
  directions(_fn) => _res;
  conversations(_fn) => _res;
}

class Query$GetCurrentOrder$rider$orders$points implements Fragment$Point {
  Query$GetCurrentOrder$rider$orders$points({
    required this.lat,
    required this.lng,
  });

  factory Query$GetCurrentOrder$rider$orders$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$GetCurrentOrder$rider$orders$points(
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
    if (!(other is Query$GetCurrentOrder$rider$orders$points) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders$points
    on Query$GetCurrentOrder$rider$orders$points {
  CopyWith$Query$GetCurrentOrder$rider$orders$points<
          Query$GetCurrentOrder$rider$orders$points>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$orders$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders$points<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders$points(
    Query$GetCurrentOrder$rider$orders$points instance,
    TRes Function(Query$GetCurrentOrder$rider$orders$points) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders$points;

  factory CopyWith$Query$GetCurrentOrder$rider$orders$points.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$points;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders$points<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$points<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders$points(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders$points _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$GetCurrentOrder$rider$orders$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$points<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$points<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Query$GetCurrentOrder$rider$orders$driver
    implements Fragment$CurrentOrder$driver {
  Query$GetCurrentOrder$rider$orders$driver({
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

  factory Query$GetCurrentOrder$rider$orders$driver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    final l$mobileNumber = json['mobileNumber'];
    final l$carPlate = json['carPlate'];
    final l$car = json['car'];
    final l$carColor = json['carColor'];
    final l$rating = json['rating'];
    return Query$GetCurrentOrder$rider$orders$driver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Query$GetCurrentOrder$rider$orders$driver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      mobileNumber: (l$mobileNumber as String),
      carPlate: (l$carPlate as String?),
      car: l$car == null
          ? null
          : Query$GetCurrentOrder$rider$orders$driver$car.fromJson(
              (l$car as Map<String, dynamic>)),
      carColor: l$carColor == null
          ? null
          : Query$GetCurrentOrder$rider$orders$driver$carColor.fromJson(
              (l$carColor as Map<String, dynamic>)),
      rating: (l$rating as int?),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Query$GetCurrentOrder$rider$orders$driver$media? media;

  final String mobileNumber;

  final String? carPlate;

  final Query$GetCurrentOrder$rider$orders$driver$car? car;

  final Query$GetCurrentOrder$rider$orders$driver$carColor? carColor;

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
    if (!(other is Query$GetCurrentOrder$rider$orders$driver) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders$driver
    on Query$GetCurrentOrder$rider$orders$driver {
  CopyWith$Query$GetCurrentOrder$rider$orders$driver<
          Query$GetCurrentOrder$rider$orders$driver>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$orders$driver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders$driver<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders$driver(
    Query$GetCurrentOrder$rider$orders$driver instance,
    TRes Function(Query$GetCurrentOrder$rider$orders$driver) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver;

  factory CopyWith$Query$GetCurrentOrder$rider$orders$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Query$GetCurrentOrder$rider$orders$driver$media? media,
    String? mobileNumber,
    String? carPlate,
    Query$GetCurrentOrder$rider$orders$driver$car? car,
    Query$GetCurrentOrder$rider$orders$driver$carColor? carColor,
    int? rating,
  });
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$media<TRes> get media;
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$car<TRes> get car;
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor<TRes>
      get carColor;
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$driver<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders$driver _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders$driver) _then;

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
      _then(Query$GetCurrentOrder$rider$orders$driver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetCurrentOrder$rider$orders$driver$media?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        car: car == _undefined
            ? _instance.car
            : (car as Query$GetCurrentOrder$rider$orders$driver$car?),
        carColor: carColor == _undefined
            ? _instance.carColor
            : (carColor as Query$GetCurrentOrder$rider$orders$driver$carColor?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
      ));
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetCurrentOrder$rider$orders$driver$media.stub(
            _then(_instance))
        : CopyWith$Query$GetCurrentOrder$rider$orders$driver$media(
            local$media, (e) => call(media: e));
  }

  CopyWith$Query$GetCurrentOrder$rider$orders$driver$car<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Query$GetCurrentOrder$rider$orders$driver$car.stub(
            _then(_instance))
        : CopyWith$Query$GetCurrentOrder$rider$orders$driver$car(
            local$car, (e) => call(car: e));
  }

  CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor<TRes>
      get carColor {
    final local$carColor = _instance.carColor;
    return local$carColor == null
        ? CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor.stub(
            _then(_instance))
        : CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor(
            local$carColor, (e) => call(carColor: e));
  }
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$driver<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Query$GetCurrentOrder$rider$orders$driver$media? media,
    String? mobileNumber,
    String? carPlate,
    Query$GetCurrentOrder$rider$orders$driver$car? car,
    Query$GetCurrentOrder$rider$orders$driver$carColor? carColor,
    int? rating,
  }) =>
      _res;
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$media<TRes> get media =>
      CopyWith$Query$GetCurrentOrder$rider$orders$driver$media.stub(_res);
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$car<TRes> get car =>
      CopyWith$Query$GetCurrentOrder$rider$orders$driver$car.stub(_res);
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor<TRes>
      get carColor =>
          CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor.stub(
              _res);
}

class Query$GetCurrentOrder$rider$orders$driver$media
    implements Fragment$CurrentOrder$driver$media {
  Query$GetCurrentOrder$rider$orders$driver$media({required this.address});

  factory Query$GetCurrentOrder$rider$orders$driver$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetCurrentOrder$rider$orders$driver$media(
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
    if (!(other is Query$GetCurrentOrder$rider$orders$driver$media) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders$driver$media
    on Query$GetCurrentOrder$rider$orders$driver$media {
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$media<
          Query$GetCurrentOrder$rider$orders$driver$media>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$orders$driver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders$driver$media<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders$driver$media(
    Query$GetCurrentOrder$rider$orders$driver$media instance,
    TRes Function(Query$GetCurrentOrder$rider$orders$driver$media) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver$media;

  factory CopyWith$Query$GetCurrentOrder$rider$orders$driver$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver$media<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$driver$media<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver$media(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders$driver$media _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders$driver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetCurrentOrder$rider$orders$driver$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver$media<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$driver$media<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$GetCurrentOrder$rider$orders$driver$car
    implements Fragment$CurrentOrder$driver$car {
  Query$GetCurrentOrder$rider$orders$driver$car({required this.name});

  factory Query$GetCurrentOrder$rider$orders$driver$car.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$GetCurrentOrder$rider$orders$driver$car(
        name: (l$name as String));
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
    if (!(other is Query$GetCurrentOrder$rider$orders$driver$car) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders$driver$car
    on Query$GetCurrentOrder$rider$orders$driver$car {
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$car<
          Query$GetCurrentOrder$rider$orders$driver$car>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$orders$driver$car(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders$driver$car<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders$driver$car(
    Query$GetCurrentOrder$rider$orders$driver$car instance,
    TRes Function(Query$GetCurrentOrder$rider$orders$driver$car) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver$car;

  factory CopyWith$Query$GetCurrentOrder$rider$orders$driver$car.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver$car;

  TRes call({String? name});
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver$car<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$driver$car<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver$car(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders$driver$car _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders$driver$car) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Query$GetCurrentOrder$rider$orders$driver$car(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver$car<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$driver$car<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver$car(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GetCurrentOrder$rider$orders$driver$carColor
    implements Fragment$CurrentOrder$driver$carColor {
  Query$GetCurrentOrder$rider$orders$driver$carColor({required this.name});

  factory Query$GetCurrentOrder$rider$orders$driver$carColor.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$GetCurrentOrder$rider$orders$driver$carColor(
        name: (l$name as String));
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
    if (!(other is Query$GetCurrentOrder$rider$orders$driver$carColor) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders$driver$carColor
    on Query$GetCurrentOrder$rider$orders$driver$carColor {
  CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor<
          Query$GetCurrentOrder$rider$orders$driver$carColor>
      get copyWith =>
          CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor<
    TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor(
    Query$GetCurrentOrder$rider$orders$driver$carColor instance,
    TRes Function(Query$GetCurrentOrder$rider$orders$driver$carColor) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver$carColor;

  factory CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver$carColor;

  TRes call({String? name});
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver$carColor<TRes>
    implements
        CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders$driver$carColor(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders$driver$carColor _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders$driver$carColor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Query$GetCurrentOrder$rider$orders$driver$carColor(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver$carColor<TRes>
    implements
        CopyWith$Query$GetCurrentOrder$rider$orders$driver$carColor<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$driver$carColor(
      this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GetCurrentOrder$rider$orders$service
    implements Fragment$CurrentOrder$service {
  Query$GetCurrentOrder$rider$orders$service({
    required this.media,
    required this.name,
    required this.prepayPercent,
    required this.cancellationTotalFee,
  });

  factory Query$GetCurrentOrder$rider$orders$service.fromJson(
      Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$name = json['name'];
    final l$prepayPercent = json['prepayPercent'];
    final l$cancellationTotalFee = json['cancellationTotalFee'];
    return Query$GetCurrentOrder$rider$orders$service(
      media: Query$GetCurrentOrder$rider$orders$service$media.fromJson(
          (l$media as Map<String, dynamic>)),
      name: (l$name as String),
      prepayPercent: (l$prepayPercent as int),
      cancellationTotalFee: (l$cancellationTotalFee as num).toDouble(),
    );
  }

  final Query$GetCurrentOrder$rider$orders$service$media media;

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
    if (!(other is Query$GetCurrentOrder$rider$orders$service) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders$service
    on Query$GetCurrentOrder$rider$orders$service {
  CopyWith$Query$GetCurrentOrder$rider$orders$service<
          Query$GetCurrentOrder$rider$orders$service>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$orders$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders$service<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders$service(
    Query$GetCurrentOrder$rider$orders$service instance,
    TRes Function(Query$GetCurrentOrder$rider$orders$service) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders$service;

  factory CopyWith$Query$GetCurrentOrder$rider$orders$service.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$service;

  TRes call({
    Query$GetCurrentOrder$rider$orders$service$media? media,
    String? name,
    int? prepayPercent,
    double? cancellationTotalFee,
  });
  CopyWith$Query$GetCurrentOrder$rider$orders$service$media<TRes> get media;
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders$service<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$service<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders$service(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders$service _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? name = _undefined,
    Object? prepayPercent = _undefined,
    Object? cancellationTotalFee = _undefined,
  }) =>
      _then(Query$GetCurrentOrder$rider$orders$service(
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Query$GetCurrentOrder$rider$orders$service$media),
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
  CopyWith$Query$GetCurrentOrder$rider$orders$service$media<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetCurrentOrder$rider$orders$service$media(
        local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$service<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$service<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$service(this._res);

  TRes _res;

  call({
    Query$GetCurrentOrder$rider$orders$service$media? media,
    String? name,
    int? prepayPercent,
    double? cancellationTotalFee,
  }) =>
      _res;
  CopyWith$Query$GetCurrentOrder$rider$orders$service$media<TRes> get media =>
      CopyWith$Query$GetCurrentOrder$rider$orders$service$media.stub(_res);
}

class Query$GetCurrentOrder$rider$orders$service$media
    implements Fragment$CurrentOrder$service$media {
  Query$GetCurrentOrder$rider$orders$service$media({required this.address});

  factory Query$GetCurrentOrder$rider$orders$service$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetCurrentOrder$rider$orders$service$media(
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
    if (!(other is Query$GetCurrentOrder$rider$orders$service$media) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders$service$media
    on Query$GetCurrentOrder$rider$orders$service$media {
  CopyWith$Query$GetCurrentOrder$rider$orders$service$media<
          Query$GetCurrentOrder$rider$orders$service$media>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$orders$service$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders$service$media<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders$service$media(
    Query$GetCurrentOrder$rider$orders$service$media instance,
    TRes Function(Query$GetCurrentOrder$rider$orders$service$media) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders$service$media;

  factory CopyWith$Query$GetCurrentOrder$rider$orders$service$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$service$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders$service$media<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$service$media<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders$service$media(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders$service$media _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders$service$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetCurrentOrder$rider$orders$service$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$service$media<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$service$media<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$service$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$GetCurrentOrder$rider$orders$directions
    implements Fragment$CurrentOrder$directions, Fragment$Point {
  Query$GetCurrentOrder$rider$orders$directions({
    required this.lat,
    required this.lng,
  });

  factory Query$GetCurrentOrder$rider$orders$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$GetCurrentOrder$rider$orders$directions(
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
    if (!(other is Query$GetCurrentOrder$rider$orders$directions) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders$directions
    on Query$GetCurrentOrder$rider$orders$directions {
  CopyWith$Query$GetCurrentOrder$rider$orders$directions<
          Query$GetCurrentOrder$rider$orders$directions>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$orders$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders$directions<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders$directions(
    Query$GetCurrentOrder$rider$orders$directions instance,
    TRes Function(Query$GetCurrentOrder$rider$orders$directions) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders$directions;

  factory CopyWith$Query$GetCurrentOrder$rider$orders$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$directions;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders$directions<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$directions<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders$directions(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders$directions _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$GetCurrentOrder$rider$orders$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$directions<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$directions<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Query$GetCurrentOrder$rider$orders$conversations
    implements Fragment$CurrentOrder$conversations {
  Query$GetCurrentOrder$rider$orders$conversations({required this.sentAt});

  factory Query$GetCurrentOrder$rider$orders$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$sentAt = json['sentAt'];
    return Query$GetCurrentOrder$rider$orders$conversations(
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
    if (!(other is Query$GetCurrentOrder$rider$orders$conversations) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$orders$conversations
    on Query$GetCurrentOrder$rider$orders$conversations {
  CopyWith$Query$GetCurrentOrder$rider$orders$conversations<
          Query$GetCurrentOrder$rider$orders$conversations>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$orders$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$orders$conversations<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$orders$conversations(
    Query$GetCurrentOrder$rider$orders$conversations instance,
    TRes Function(Query$GetCurrentOrder$rider$orders$conversations) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$orders$conversations;

  factory CopyWith$Query$GetCurrentOrder$rider$orders$conversations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$conversations;

  TRes call({DateTime? sentAt});
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$orders$conversations<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$conversations<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$orders$conversations(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$orders$conversations _instance;

  final TRes Function(Query$GetCurrentOrder$rider$orders$conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sentAt = _undefined}) =>
      _then(Query$GetCurrentOrder$rider$orders$conversations(
          sentAt: sentAt == _undefined || sentAt == null
              ? _instance.sentAt
              : (sentAt as DateTime)));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$conversations<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$orders$conversations<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$orders$conversations(this._res);

  TRes _res;

  call({DateTime? sentAt}) => _res;
}

class Query$GetCurrentOrder$rider$bookedOrders {
  Query$GetCurrentOrder$rider$bookedOrders({this.count});

  factory Query$GetCurrentOrder$rider$bookedOrders.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    return Query$GetCurrentOrder$rider$bookedOrders(
        count: l$count == null
            ? null
            : Query$GetCurrentOrder$rider$bookedOrders$count.fromJson(
                (l$count as Map<String, dynamic>)));
  }

  final Query$GetCurrentOrder$rider$bookedOrders$count? count;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([l$count]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCurrentOrder$rider$bookedOrders) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCurrentOrder$rider$bookedOrders
    on Query$GetCurrentOrder$rider$bookedOrders {
  CopyWith$Query$GetCurrentOrder$rider$bookedOrders<
          Query$GetCurrentOrder$rider$bookedOrders>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$bookedOrders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$bookedOrders<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$bookedOrders(
    Query$GetCurrentOrder$rider$bookedOrders instance,
    TRes Function(Query$GetCurrentOrder$rider$bookedOrders) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$bookedOrders;

  factory CopyWith$Query$GetCurrentOrder$rider$bookedOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$bookedOrders;

  TRes call({Query$GetCurrentOrder$rider$bookedOrders$count? count});
  CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count<TRes> get count;
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$bookedOrders<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$bookedOrders<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$bookedOrders(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$bookedOrders _instance;

  final TRes Function(Query$GetCurrentOrder$rider$bookedOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) =>
      _then(Query$GetCurrentOrder$rider$bookedOrders(
          count: count == _undefined
              ? _instance.count
              : (count as Query$GetCurrentOrder$rider$bookedOrders$count?)));
  CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count.stub(
            _then(_instance))
        : CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count(
            local$count, (e) => call(count: e));
  }
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$bookedOrders<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$bookedOrders<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$bookedOrders(this._res);

  TRes _res;

  call({Query$GetCurrentOrder$rider$bookedOrders$count? count}) => _res;
  CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count<TRes> get count =>
      CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count.stub(_res);
}

class Query$GetCurrentOrder$rider$bookedOrders$count {
  Query$GetCurrentOrder$rider$bookedOrders$count({this.id});

  factory Query$GetCurrentOrder$rider$bookedOrders$count.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Query$GetCurrentOrder$rider$bookedOrders$count(id: (l$id as int?));
  }

  final int? id;

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
    if (!(other is Query$GetCurrentOrder$rider$bookedOrders$count) ||
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

extension UtilityExtension$Query$GetCurrentOrder$rider$bookedOrders$count
    on Query$GetCurrentOrder$rider$bookedOrders$count {
  CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count<
          Query$GetCurrentOrder$rider$bookedOrders$count>
      get copyWith => CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count<TRes> {
  factory CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count(
    Query$GetCurrentOrder$rider$bookedOrders$count instance,
    TRes Function(Query$GetCurrentOrder$rider$bookedOrders$count) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$rider$bookedOrders$count;

  factory CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$rider$bookedOrders$count;

  TRes call({int? id});
}

class _CopyWithImpl$Query$GetCurrentOrder$rider$bookedOrders$count<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$rider$bookedOrders$count(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$rider$bookedOrders$count _instance;

  final TRes Function(Query$GetCurrentOrder$rider$bookedOrders$count) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Query$GetCurrentOrder$rider$bookedOrders$count(
          id: id == _undefined ? _instance.id : (id as int?)));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$rider$bookedOrders$count<TRes>
    implements CopyWith$Query$GetCurrentOrder$rider$bookedOrders$count<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$rider$bookedOrders$count(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$GetCurrentOrder$getCurrentOrderDriverLocation
    implements Fragment$Point {
  Query$GetCurrentOrder$getCurrentOrderDriverLocation({
    required this.lat,
    required this.lng,
  });

  factory Query$GetCurrentOrder$getCurrentOrderDriverLocation.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$GetCurrentOrder$getCurrentOrderDriverLocation(
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
    if (!(other is Query$GetCurrentOrder$getCurrentOrderDriverLocation) ||
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

extension UtilityExtension$Query$GetCurrentOrder$getCurrentOrderDriverLocation
    on Query$GetCurrentOrder$getCurrentOrderDriverLocation {
  CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation<
          Query$GetCurrentOrder$getCurrentOrderDriverLocation>
      get copyWith =>
          CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation<
    TRes> {
  factory CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation(
    Query$GetCurrentOrder$getCurrentOrderDriverLocation instance,
    TRes Function(Query$GetCurrentOrder$getCurrentOrderDriverLocation) then,
  ) = _CopyWithImpl$Query$GetCurrentOrder$getCurrentOrderDriverLocation;

  factory CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCurrentOrder$getCurrentOrderDriverLocation;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$GetCurrentOrder$getCurrentOrderDriverLocation<TRes>
    implements
        CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation<TRes> {
  _CopyWithImpl$Query$GetCurrentOrder$getCurrentOrderDriverLocation(
    this._instance,
    this._then,
  );

  final Query$GetCurrentOrder$getCurrentOrderDriverLocation _instance;

  final TRes Function(Query$GetCurrentOrder$getCurrentOrderDriverLocation)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$GetCurrentOrder$getCurrentOrderDriverLocation(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$GetCurrentOrder$getCurrentOrderDriverLocation<
        TRes>
    implements
        CopyWith$Query$GetCurrentOrder$getCurrentOrderDriverLocation<TRes> {
  _CopyWithStubImpl$Query$GetCurrentOrder$getCurrentOrderDriverLocation(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Variables$Mutation$CreateOrder {
  factory Variables$Mutation$CreateOrder({
    required Input$CreateOrderInput input,
    required String notificationPlayerId,
  }) =>
      Variables$Mutation$CreateOrder._({
        r'input': input,
        r'notificationPlayerId': notificationPlayerId,
      });

  Variables$Mutation$CreateOrder._(this._$data);

  factory Variables$Mutation$CreateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CreateOrderInput.fromJson((l$input as Map<String, dynamic>));
    final l$notificationPlayerId = data['notificationPlayerId'];
    result$data['notificationPlayerId'] = (l$notificationPlayerId as String);
    return Variables$Mutation$CreateOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrderInput get input =>
      (_$data['input'] as Input$CreateOrderInput);
  String get notificationPlayerId => (_$data['notificationPlayerId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    final l$notificationPlayerId = notificationPlayerId;
    result$data['notificationPlayerId'] = l$notificationPlayerId;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOrder<Variables$Mutation$CreateOrder>
      get copyWith => CopyWith$Variables$Mutation$CreateOrder(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOrder) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    final l$notificationPlayerId = notificationPlayerId;
    final lOther$notificationPlayerId = other.notificationPlayerId;
    if (l$notificationPlayerId != lOther$notificationPlayerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$notificationPlayerId = notificationPlayerId;
    return Object.hashAll([
      l$input,
      l$notificationPlayerId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOrder<TRes> {
  factory CopyWith$Variables$Mutation$CreateOrder(
    Variables$Mutation$CreateOrder instance,
    TRes Function(Variables$Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOrder;

  factory CopyWith$Variables$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOrder;

  TRes call({
    Input$CreateOrderInput? input,
    String? notificationPlayerId,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOrder _instance;

  final TRes Function(Variables$Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? notificationPlayerId = _undefined,
  }) =>
      _then(Variables$Mutation$CreateOrder._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateOrderInput),
        if (notificationPlayerId != _undefined && notificationPlayerId != null)
          'notificationPlayerId': (notificationPlayerId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    Input$CreateOrderInput? input,
    String? notificationPlayerId,
  }) =>
      _res;
}

class Mutation$CreateOrder {
  Mutation$CreateOrder({
    required this.createOrder,
    required this.updateOneRider,
  });

  factory Mutation$CreateOrder.fromJson(Map<String, dynamic> json) {
    final l$createOrder = json['createOrder'];
    final l$updateOneRider = json['updateOneRider'];
    return Mutation$CreateOrder(
      createOrder: Fragment$CurrentOrder.fromJson(
          (l$createOrder as Map<String, dynamic>)),
      updateOneRider: Mutation$CreateOrder$updateOneRider.fromJson(
          (l$updateOneRider as Map<String, dynamic>)),
    );
  }

  final Fragment$CurrentOrder createOrder;

  final Mutation$CreateOrder$updateOneRider updateOneRider;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOrder = createOrder;
    _resultData['createOrder'] = l$createOrder.toJson();
    final l$updateOneRider = updateOneRider;
    _resultData['updateOneRider'] = l$updateOneRider.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOrder = createOrder;
    final l$updateOneRider = updateOneRider;
    return Object.hashAll([
      l$createOrder,
      l$updateOneRider,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOrder = createOrder;
    final lOther$createOrder = other.createOrder;
    if (l$createOrder != lOther$createOrder) {
      return false;
    }
    final l$updateOneRider = updateOneRider;
    final lOther$updateOneRider = other.updateOneRider;
    if (l$updateOneRider != lOther$updateOneRider) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOrder on Mutation$CreateOrder {
  CopyWith$Mutation$CreateOrder<Mutation$CreateOrder> get copyWith =>
      CopyWith$Mutation$CreateOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOrder<TRes> {
  factory CopyWith$Mutation$CreateOrder(
    Mutation$CreateOrder instance,
    TRes Function(Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Mutation$CreateOrder;

  factory CopyWith$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder;

  TRes call({
    Fragment$CurrentOrder? createOrder,
    Mutation$CreateOrder$updateOneRider? updateOneRider,
  });
  CopyWith$Fragment$CurrentOrder<TRes> get createOrder;
  CopyWith$Mutation$CreateOrder$updateOneRider<TRes> get updateOneRider;
}

class _CopyWithImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder _instance;

  final TRes Function(Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOrder = _undefined,
    Object? updateOneRider = _undefined,
  }) =>
      _then(Mutation$CreateOrder(
        createOrder: createOrder == _undefined || createOrder == null
            ? _instance.createOrder
            : (createOrder as Fragment$CurrentOrder),
        updateOneRider: updateOneRider == _undefined || updateOneRider == null
            ? _instance.updateOneRider
            : (updateOneRider as Mutation$CreateOrder$updateOneRider),
      ));
  CopyWith$Fragment$CurrentOrder<TRes> get createOrder {
    final local$createOrder = _instance.createOrder;
    return CopyWith$Fragment$CurrentOrder(
        local$createOrder, (e) => call(createOrder: e));
  }

  CopyWith$Mutation$CreateOrder$updateOneRider<TRes> get updateOneRider {
    final local$updateOneRider = _instance.updateOneRider;
    return CopyWith$Mutation$CreateOrder$updateOneRider(
        local$updateOneRider, (e) => call(updateOneRider: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder? createOrder,
    Mutation$CreateOrder$updateOneRider? updateOneRider,
  }) =>
      _res;
  CopyWith$Fragment$CurrentOrder<TRes> get createOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
  CopyWith$Mutation$CreateOrder$updateOneRider<TRes> get updateOneRider =>
      CopyWith$Mutation$CreateOrder$updateOneRider.stub(_res);
}

const documentNodeMutationCreateOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateOrderInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notificationPlayerId')),
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
        name: NameNode(value: 'createOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'updateOneRider'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(
                        name: NameNode(value: 'notificationPlayerId')),
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
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$CreateOrder _parserFn$Mutation$CreateOrder(
        Map<String, dynamic> data) =>
    Mutation$CreateOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateOrder?,
);

class Options$Mutation$CreateOrder
    extends graphql.MutationOptions<Mutation$CreateOrder> {
  Options$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrder,
          parserFn: _parserFn$Mutation$CreateOrder,
        );

  final OnMutationCompleted$Mutation$CreateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOrder
    extends graphql.WatchQueryOptions<Mutation$CreateOrder> {
  WatchOptions$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
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
          document: documentNodeMutationCreateOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOrder,
        );
}

extension ClientExtension$Mutation$CreateOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOrder>> mutate$CreateOrder(
          Options$Mutation$CreateOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOrder> watchMutation$CreateOrder(
          WatchOptions$Mutation$CreateOrder options) =>
      this.watchMutation(options);
}

class Mutation$CreateOrder$HookResult {
  Mutation$CreateOrder$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateOrder runMutation;

  final graphql.QueryResult<Mutation$CreateOrder> result;
}

Mutation$CreateOrder$HookResult useMutation$CreateOrder(
    [WidgetOptions$Mutation$CreateOrder? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateOrder());
  return Mutation$CreateOrder$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateOrder> useWatchMutation$CreateOrder(
        WatchOptions$Mutation$CreateOrder options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateOrder
    extends graphql.MutationOptions<Mutation$CreateOrder> {
  WidgetOptions$Mutation$CreateOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrder,
          parserFn: _parserFn$Mutation$CreateOrder,
        );

  final OnMutationCompleted$Mutation$CreateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateOrder
    = graphql.MultiSourceResult<Mutation$CreateOrder> Function(
  Variables$Mutation$CreateOrder, {
  Object? optimisticResult,
  Mutation$CreateOrder? typedOptimisticResult,
});
typedef Builder$Mutation$CreateOrder = widgets.Widget Function(
  RunMutation$Mutation$CreateOrder,
  graphql.QueryResult<Mutation$CreateOrder>?,
);

class Mutation$CreateOrder$Widget
    extends graphql_flutter.Mutation<Mutation$CreateOrder> {
  Mutation$CreateOrder$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateOrder? options,
    required Builder$Mutation$CreateOrder builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateOrder(),
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

class Mutation$CreateOrder$updateOneRider {
  Mutation$CreateOrder$updateOneRider({required this.id});

  factory Mutation$CreateOrder$updateOneRider.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$CreateOrder$updateOneRider(id: (l$id as String));
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
    if (!(other is Mutation$CreateOrder$updateOneRider) ||
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

extension UtilityExtension$Mutation$CreateOrder$updateOneRider
    on Mutation$CreateOrder$updateOneRider {
  CopyWith$Mutation$CreateOrder$updateOneRider<
          Mutation$CreateOrder$updateOneRider>
      get copyWith => CopyWith$Mutation$CreateOrder$updateOneRider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$updateOneRider<TRes> {
  factory CopyWith$Mutation$CreateOrder$updateOneRider(
    Mutation$CreateOrder$updateOneRider instance,
    TRes Function(Mutation$CreateOrder$updateOneRider) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$updateOneRider;

  factory CopyWith$Mutation$CreateOrder$updateOneRider.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$updateOneRider;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$CreateOrder$updateOneRider<TRes>
    implements CopyWith$Mutation$CreateOrder$updateOneRider<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$updateOneRider(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$updateOneRider _instance;

  final TRes Function(Mutation$CreateOrder$updateOneRider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$CreateOrder$updateOneRider(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$CreateOrder$updateOneRider<TRes>
    implements CopyWith$Mutation$CreateOrder$updateOneRider<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$updateOneRider(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$CancelOrder {
  Mutation$CancelOrder({required this.cancelOrder});

  factory Mutation$CancelOrder.fromJson(Map<String, dynamic> json) {
    final l$cancelOrder = json['cancelOrder'];
    return Mutation$CancelOrder(
        cancelOrder: Fragment$CurrentOrder.fromJson(
            (l$cancelOrder as Map<String, dynamic>)));
  }

  final Fragment$CurrentOrder cancelOrder;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cancelOrder = cancelOrder;
    _resultData['cancelOrder'] = l$cancelOrder.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cancelOrder = cancelOrder;
    return Object.hashAll([l$cancelOrder]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CancelOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cancelOrder = cancelOrder;
    final lOther$cancelOrder = other.cancelOrder;
    if (l$cancelOrder != lOther$cancelOrder) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CancelOrder on Mutation$CancelOrder {
  CopyWith$Mutation$CancelOrder<Mutation$CancelOrder> get copyWith =>
      CopyWith$Mutation$CancelOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CancelOrder<TRes> {
  factory CopyWith$Mutation$CancelOrder(
    Mutation$CancelOrder instance,
    TRes Function(Mutation$CancelOrder) then,
  ) = _CopyWithImpl$Mutation$CancelOrder;

  factory CopyWith$Mutation$CancelOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CancelOrder;

  TRes call({Fragment$CurrentOrder? cancelOrder});
  CopyWith$Fragment$CurrentOrder<TRes> get cancelOrder;
}

class _CopyWithImpl$Mutation$CancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder<TRes> {
  _CopyWithImpl$Mutation$CancelOrder(
    this._instance,
    this._then,
  );

  final Mutation$CancelOrder _instance;

  final TRes Function(Mutation$CancelOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? cancelOrder = _undefined}) => _then(Mutation$CancelOrder(
      cancelOrder: cancelOrder == _undefined || cancelOrder == null
          ? _instance.cancelOrder
          : (cancelOrder as Fragment$CurrentOrder)));
  CopyWith$Fragment$CurrentOrder<TRes> get cancelOrder {
    final local$cancelOrder = _instance.cancelOrder;
    return CopyWith$Fragment$CurrentOrder(
        local$cancelOrder, (e) => call(cancelOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$CancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder<TRes> {
  _CopyWithStubImpl$Mutation$CancelOrder(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? cancelOrder}) => _res;
  CopyWith$Fragment$CurrentOrder<TRes> get cancelOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationCancelOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CancelOrder'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'cancelOrder'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$CancelOrder _parserFn$Mutation$CancelOrder(
        Map<String, dynamic> data) =>
    Mutation$CancelOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$CancelOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CancelOrder?,
);

class Options$Mutation$CancelOrder
    extends graphql.MutationOptions<Mutation$CancelOrder> {
  Options$Mutation$CancelOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CancelOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CancelOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$CancelOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCancelOrder,
          parserFn: _parserFn$Mutation$CancelOrder,
        );

  final OnMutationCompleted$Mutation$CancelOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CancelOrder
    extends graphql.WatchQueryOptions<Mutation$CancelOrder> {
  WatchOptions$Mutation$CancelOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelOrder? typedOptimisticResult,
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
          document: documentNodeMutationCancelOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CancelOrder,
        );
}

extension ClientExtension$Mutation$CancelOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CancelOrder>> mutate$CancelOrder(
          [Options$Mutation$CancelOrder? options]) async =>
      await this.mutate(options ?? Options$Mutation$CancelOrder());
  graphql.ObservableQuery<Mutation$CancelOrder> watchMutation$CancelOrder(
          [WatchOptions$Mutation$CancelOrder? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$CancelOrder());
}

class Mutation$CancelOrder$HookResult {
  Mutation$CancelOrder$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CancelOrder runMutation;

  final graphql.QueryResult<Mutation$CancelOrder> result;
}

Mutation$CancelOrder$HookResult useMutation$CancelOrder(
    [WidgetOptions$Mutation$CancelOrder? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CancelOrder());
  return Mutation$CancelOrder$HookResult(
    ({optimisticResult, typedOptimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CancelOrder> useWatchMutation$CancelOrder(
        [WatchOptions$Mutation$CancelOrder? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$CancelOrder());

class WidgetOptions$Mutation$CancelOrder
    extends graphql.MutationOptions<Mutation$CancelOrder> {
  WidgetOptions$Mutation$CancelOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CancelOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CancelOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$CancelOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCancelOrder,
          parserFn: _parserFn$Mutation$CancelOrder,
        );

  final OnMutationCompleted$Mutation$CancelOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CancelOrder
    = graphql.MultiSourceResult<Mutation$CancelOrder> Function({
  Object? optimisticResult,
  Mutation$CancelOrder? typedOptimisticResult,
});
typedef Builder$Mutation$CancelOrder = widgets.Widget Function(
  RunMutation$Mutation$CancelOrder,
  graphql.QueryResult<Mutation$CancelOrder>?,
);

class Mutation$CancelOrder$Widget
    extends graphql_flutter.Mutation<Mutation$CancelOrder> {
  Mutation$CancelOrder$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CancelOrder? options,
    required Builder$Mutation$CancelOrder builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CancelOrder(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$updateOrder {
  factory Variables$Mutation$updateOrder({
    required String id,
    required Input$UpdateOrderInput update,
  }) =>
      Variables$Mutation$updateOrder._({
        r'id': id,
        r'update': update,
      });

  Variables$Mutation$updateOrder._(this._$data);

  factory Variables$Mutation$updateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$update = data['update'];
    result$data['update'] =
        Input$UpdateOrderInput.fromJson((l$update as Map<String, dynamic>));
    return Variables$Mutation$updateOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Input$UpdateOrderInput get update =>
      (_$data['update'] as Input$UpdateOrderInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$update = update;
    result$data['update'] = l$update.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateOrder<Variables$Mutation$updateOrder>
      get copyWith => CopyWith$Variables$Mutation$updateOrder(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateOrder) ||
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

abstract class CopyWith$Variables$Mutation$updateOrder<TRes> {
  factory CopyWith$Variables$Mutation$updateOrder(
    Variables$Mutation$updateOrder instance,
    TRes Function(Variables$Mutation$updateOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$updateOrder;

  factory CopyWith$Variables$Mutation$updateOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateOrder;

  TRes call({
    String? id,
    Input$UpdateOrderInput? update,
  });
}

class _CopyWithImpl$Variables$Mutation$updateOrder<TRes>
    implements CopyWith$Variables$Mutation$updateOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$updateOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateOrder _instance;

  final TRes Function(Variables$Mutation$updateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Variables$Mutation$updateOrder._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (update != _undefined && update != null)
          'update': (update as Input$UpdateOrderInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateOrder<TRes>
    implements CopyWith$Variables$Mutation$updateOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateOrder(this._res);

  TRes _res;

  call({
    String? id,
    Input$UpdateOrderInput? update,
  }) =>
      _res;
}

class Mutation$updateOrder {
  Mutation$updateOrder({required this.updateOneOrder});

  factory Mutation$updateOrder.fromJson(Map<String, dynamic> json) {
    final l$updateOneOrder = json['updateOneOrder'];
    return Mutation$updateOrder(
        updateOneOrder: Fragment$CurrentOrder.fromJson(
            (l$updateOneOrder as Map<String, dynamic>)));
  }

  final Fragment$CurrentOrder updateOneOrder;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneOrder = updateOneOrder;
    _resultData['updateOneOrder'] = l$updateOneOrder.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneOrder = updateOneOrder;
    return Object.hashAll([l$updateOneOrder]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateOrder) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$updateOrder on Mutation$updateOrder {
  CopyWith$Mutation$updateOrder<Mutation$updateOrder> get copyWith =>
      CopyWith$Mutation$updateOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateOrder<TRes> {
  factory CopyWith$Mutation$updateOrder(
    Mutation$updateOrder instance,
    TRes Function(Mutation$updateOrder) then,
  ) = _CopyWithImpl$Mutation$updateOrder;

  factory CopyWith$Mutation$updateOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateOrder;

  TRes call({Fragment$CurrentOrder? updateOneOrder});
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder;
}

class _CopyWithImpl$Mutation$updateOrder<TRes>
    implements CopyWith$Mutation$updateOrder<TRes> {
  _CopyWithImpl$Mutation$updateOrder(
    this._instance,
    this._then,
  );

  final Mutation$updateOrder _instance;

  final TRes Function(Mutation$updateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneOrder = _undefined}) =>
      _then(Mutation$updateOrder(
          updateOneOrder: updateOneOrder == _undefined || updateOneOrder == null
              ? _instance.updateOneOrder
              : (updateOneOrder as Fragment$CurrentOrder)));
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder {
    final local$updateOneOrder = _instance.updateOneOrder;
    return CopyWith$Fragment$CurrentOrder(
        local$updateOneOrder, (e) => call(updateOneOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$updateOrder<TRes>
    implements CopyWith$Mutation$updateOrder<TRes> {
  _CopyWithStubImpl$Mutation$updateOrder(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? updateOneOrder}) => _res;
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationupdateOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateOrder'),
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
          name: NameNode(value: 'UpdateOrderInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneOrder'),
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
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$updateOrder _parserFn$Mutation$updateOrder(
        Map<String, dynamic> data) =>
    Mutation$updateOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$updateOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$updateOrder?,
);

class Options$Mutation$updateOrder
    extends graphql.MutationOptions<Mutation$updateOrder> {
  Options$Mutation$updateOrder({
    String? operationName,
    required Variables$Mutation$updateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$updateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateOrder,
          parserFn: _parserFn$Mutation$updateOrder,
        );

  final OnMutationCompleted$Mutation$updateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateOrder
    extends graphql.WatchQueryOptions<Mutation$updateOrder> {
  WatchOptions$Mutation$updateOrder({
    String? operationName,
    required Variables$Mutation$updateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateOrder? typedOptimisticResult,
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
          document: documentNodeMutationupdateOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateOrder,
        );
}

extension ClientExtension$Mutation$updateOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateOrder>> mutate$updateOrder(
          Options$Mutation$updateOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$updateOrder> watchMutation$updateOrder(
          WatchOptions$Mutation$updateOrder options) =>
      this.watchMutation(options);
}

class Mutation$updateOrder$HookResult {
  Mutation$updateOrder$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$updateOrder runMutation;

  final graphql.QueryResult<Mutation$updateOrder> result;
}

Mutation$updateOrder$HookResult useMutation$updateOrder(
    [WidgetOptions$Mutation$updateOrder? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$updateOrder());
  return Mutation$updateOrder$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$updateOrder> useWatchMutation$updateOrder(
        WatchOptions$Mutation$updateOrder options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$updateOrder
    extends graphql.MutationOptions<Mutation$updateOrder> {
  WidgetOptions$Mutation$updateOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$updateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateOrder,
          parserFn: _parserFn$Mutation$updateOrder,
        );

  final OnMutationCompleted$Mutation$updateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$updateOrder
    = graphql.MultiSourceResult<Mutation$updateOrder> Function(
  Variables$Mutation$updateOrder, {
  Object? optimisticResult,
  Mutation$updateOrder? typedOptimisticResult,
});
typedef Builder$Mutation$updateOrder = widgets.Widget Function(
  RunMutation$Mutation$updateOrder,
  graphql.QueryResult<Mutation$updateOrder>?,
);

class Mutation$updateOrder$Widget
    extends graphql_flutter.Mutation<Mutation$updateOrder> {
  Mutation$updateOrder$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$updateOrder? options,
    required Builder$Mutation$updateOrder builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$updateOrder(),
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

class Subscription$UpdatedOrder {
  Subscription$UpdatedOrder({required this.orderUpdated});

  factory Subscription$UpdatedOrder.fromJson(Map<String, dynamic> json) {
    final l$orderUpdated = json['orderUpdated'];
    return Subscription$UpdatedOrder(
        orderUpdated: Subscription$UpdatedOrder$orderUpdated.fromJson(
            (l$orderUpdated as Map<String, dynamic>)));
  }

  final Subscription$UpdatedOrder$orderUpdated orderUpdated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderUpdated = orderUpdated;
    _resultData['orderUpdated'] = l$orderUpdated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderUpdated = orderUpdated;
    return Object.hashAll([l$orderUpdated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$UpdatedOrder) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderUpdated = orderUpdated;
    final lOther$orderUpdated = other.orderUpdated;
    if (l$orderUpdated != lOther$orderUpdated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$UpdatedOrder
    on Subscription$UpdatedOrder {
  CopyWith$Subscription$UpdatedOrder<Subscription$UpdatedOrder> get copyWith =>
      CopyWith$Subscription$UpdatedOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$UpdatedOrder<TRes> {
  factory CopyWith$Subscription$UpdatedOrder(
    Subscription$UpdatedOrder instance,
    TRes Function(Subscription$UpdatedOrder) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder;

  factory CopyWith$Subscription$UpdatedOrder.stub(TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder;

  TRes call({Subscription$UpdatedOrder$orderUpdated? orderUpdated});
  CopyWith$Subscription$UpdatedOrder$orderUpdated<TRes> get orderUpdated;
}

class _CopyWithImpl$Subscription$UpdatedOrder<TRes>
    implements CopyWith$Subscription$UpdatedOrder<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder _instance;

  final TRes Function(Subscription$UpdatedOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderUpdated = _undefined}) => _then(
      Subscription$UpdatedOrder(
          orderUpdated: orderUpdated == _undefined || orderUpdated == null
              ? _instance.orderUpdated
              : (orderUpdated as Subscription$UpdatedOrder$orderUpdated)));
  CopyWith$Subscription$UpdatedOrder$orderUpdated<TRes> get orderUpdated {
    final local$orderUpdated = _instance.orderUpdated;
    return CopyWith$Subscription$UpdatedOrder$orderUpdated(
        local$orderUpdated, (e) => call(orderUpdated: e));
  }
}

class _CopyWithStubImpl$Subscription$UpdatedOrder<TRes>
    implements CopyWith$Subscription$UpdatedOrder<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder(this._res);

  TRes _res;

  call({Subscription$UpdatedOrder$orderUpdated? orderUpdated}) => _res;
  CopyWith$Subscription$UpdatedOrder$orderUpdated<TRes> get orderUpdated =>
      CopyWith$Subscription$UpdatedOrder$orderUpdated.stub(_res);
}

const documentNodeSubscriptionUpdatedOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'UpdatedOrder'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderUpdated'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          ),
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
            name: NameNode(value: 'durationBest'),
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
        ]),
      )
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Subscription$UpdatedOrder _parserFn$Subscription$UpdatedOrder(
        Map<String, dynamic> data) =>
    Subscription$UpdatedOrder.fromJson(data);

class Options$Subscription$UpdatedOrder
    extends graphql.SubscriptionOptions<Subscription$UpdatedOrder> {
  Options$Subscription$UpdatedOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$UpdatedOrder? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionUpdatedOrder,
          parserFn: _parserFn$Subscription$UpdatedOrder,
        );
}

class WatchOptions$Subscription$UpdatedOrder
    extends graphql.WatchQueryOptions<Subscription$UpdatedOrder> {
  WatchOptions$Subscription$UpdatedOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$UpdatedOrder? typedOptimisticResult,
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
          document: documentNodeSubscriptionUpdatedOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$UpdatedOrder,
        );
}

class FetchMoreOptions$Subscription$UpdatedOrder
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$UpdatedOrder(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionUpdatedOrder,
        );
}

extension ClientExtension$Subscription$UpdatedOrder on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$UpdatedOrder>> subscribe$UpdatedOrder(
          [Options$Subscription$UpdatedOrder? options]) =>
      this.subscribe(options ?? Options$Subscription$UpdatedOrder());
  graphql.ObservableQuery<Subscription$UpdatedOrder>
      watchSubscription$UpdatedOrder(
              [WatchOptions$Subscription$UpdatedOrder? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$UpdatedOrder());
}

graphql.QueryResult<Subscription$UpdatedOrder> useSubscription$UpdatedOrder(
        Options$Subscription$UpdatedOrder options) =>
    graphql_flutter.useSubscription(options);

class Subscription$UpdatedOrder$Widget
    extends graphql_flutter.Subscription<Subscription$UpdatedOrder> {
  Subscription$UpdatedOrder$Widget({
    widgets.Key? key,
    Options$Subscription$UpdatedOrder? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$UpdatedOrder>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$UpdatedOrder>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$UpdatedOrder(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$UpdatedOrder$orderUpdated implements Fragment$CurrentOrder {
  Subscription$UpdatedOrder$orderUpdated({
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

  factory Subscription$UpdatedOrder$orderUpdated.fromJson(
      Map<String, dynamic> json) {
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
    return Subscription$UpdatedOrder$orderUpdated(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      points: (l$points as List<dynamic>)
          .map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      driver: l$driver == null
          ? null
          : Subscription$UpdatedOrder$orderUpdated$driver.fromJson(
              (l$driver as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Subscription$UpdatedOrder$orderUpdated$service.fromJson(
              (l$service as Map<String, dynamic>)),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) =>
              Subscription$UpdatedOrder$orderUpdated$directions.fromJson(
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
          .map((e) =>
              Subscription$UpdatedOrder$orderUpdated$conversations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final List<Fragment$Point> points;

  final Subscription$UpdatedOrder$orderUpdated$driver? driver;

  final Subscription$UpdatedOrder$orderUpdated$service? service;

  final List<Subscription$UpdatedOrder$orderUpdated$directions>? directions;

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

  final List<Subscription$UpdatedOrder$orderUpdated$conversations>
      conversations;

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
    if (!(other is Subscription$UpdatedOrder$orderUpdated) ||
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

extension UtilityExtension$Subscription$UpdatedOrder$orderUpdated
    on Subscription$UpdatedOrder$orderUpdated {
  CopyWith$Subscription$UpdatedOrder$orderUpdated<
          Subscription$UpdatedOrder$orderUpdated>
      get copyWith => CopyWith$Subscription$UpdatedOrder$orderUpdated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UpdatedOrder$orderUpdated<TRes> {
  factory CopyWith$Subscription$UpdatedOrder$orderUpdated(
    Subscription$UpdatedOrder$orderUpdated instance,
    TRes Function(Subscription$UpdatedOrder$orderUpdated) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated;

  factory CopyWith$Subscription$UpdatedOrder$orderUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    List<Fragment$Point>? points,
    Subscription$UpdatedOrder$orderUpdated$driver? driver,
    Subscription$UpdatedOrder$orderUpdated$service? service,
    List<Subscription$UpdatedOrder$orderUpdated$directions>? directions,
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
    List<Subscription$UpdatedOrder$orderUpdated$conversations>? conversations,
  });
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver<TRes> get driver;
  CopyWith$Subscription$UpdatedOrder$orderUpdated$service<TRes> get service;
  TRes directions(
      Iterable<Subscription$UpdatedOrder$orderUpdated$directions>? Function(
              Iterable<
                  CopyWith$Subscription$UpdatedOrder$orderUpdated$directions<
                      Subscription$UpdatedOrder$orderUpdated$directions>>?)
          _fn);
  TRes conversations(
      Iterable<Subscription$UpdatedOrder$orderUpdated$conversations> Function(
              Iterable<
                  CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations<
                      Subscription$UpdatedOrder$orderUpdated$conversations>>)
          _fn);
}

class _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated<TRes>
    implements CopyWith$Subscription$UpdatedOrder$orderUpdated<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder$orderUpdated _instance;

  final TRes Function(Subscription$UpdatedOrder$orderUpdated) _then;

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
      _then(Subscription$UpdatedOrder$orderUpdated(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Fragment$Point>),
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Subscription$UpdatedOrder$orderUpdated$driver?),
        service: service == _undefined
            ? _instance.service
            : (service as Subscription$UpdatedOrder$orderUpdated$service?),
        directions: directions == _undefined
            ? _instance.directions
            : (directions
                as List<Subscription$UpdatedOrder$orderUpdated$directions>?),
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
            : (conversations
                as List<Subscription$UpdatedOrder$orderUpdated$conversations>),
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
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Subscription$UpdatedOrder$orderUpdated$driver.stub(
            _then(_instance))
        : CopyWith$Subscription$UpdatedOrder$orderUpdated$driver(
            local$driver, (e) => call(driver: e));
  }

  CopyWith$Subscription$UpdatedOrder$orderUpdated$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Subscription$UpdatedOrder$orderUpdated$service.stub(
            _then(_instance))
        : CopyWith$Subscription$UpdatedOrder$orderUpdated$service(
            local$service, (e) => call(service: e));
  }

  TRes directions(
          Iterable<Subscription$UpdatedOrder$orderUpdated$directions>? Function(
                  Iterable<
                      CopyWith$Subscription$UpdatedOrder$orderUpdated$directions<
                          Subscription$UpdatedOrder$orderUpdated$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map(
              (e) => CopyWith$Subscription$UpdatedOrder$orderUpdated$directions(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes conversations(
          Iterable<Subscription$UpdatedOrder$orderUpdated$conversations> Function(
                  Iterable<
                      CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations<
                          Subscription$UpdatedOrder$orderUpdated$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations.map((e) =>
              CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated<TRes>
    implements CopyWith$Subscription$UpdatedOrder$orderUpdated<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    List<Fragment$Point>? points,
    Subscription$UpdatedOrder$orderUpdated$driver? driver,
    Subscription$UpdatedOrder$orderUpdated$service? service,
    List<Subscription$UpdatedOrder$orderUpdated$directions>? directions,
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
    List<Subscription$UpdatedOrder$orderUpdated$conversations>? conversations,
  }) =>
      _res;
  points(_fn) => _res;
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver<TRes> get driver =>
      CopyWith$Subscription$UpdatedOrder$orderUpdated$driver.stub(_res);
  CopyWith$Subscription$UpdatedOrder$orderUpdated$service<TRes> get service =>
      CopyWith$Subscription$UpdatedOrder$orderUpdated$service.stub(_res);
  directions(_fn) => _res;
  conversations(_fn) => _res;
}

class Subscription$UpdatedOrder$orderUpdated$driver
    implements Fragment$CurrentOrder$driver {
  Subscription$UpdatedOrder$orderUpdated$driver({
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

  factory Subscription$UpdatedOrder$orderUpdated$driver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    final l$mobileNumber = json['mobileNumber'];
    final l$carPlate = json['carPlate'];
    final l$car = json['car'];
    final l$carColor = json['carColor'];
    final l$rating = json['rating'];
    return Subscription$UpdatedOrder$orderUpdated$driver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Subscription$UpdatedOrder$orderUpdated$driver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      mobileNumber: (l$mobileNumber as String),
      carPlate: (l$carPlate as String?),
      car: l$car == null
          ? null
          : Subscription$UpdatedOrder$orderUpdated$driver$car.fromJson(
              (l$car as Map<String, dynamic>)),
      carColor: l$carColor == null
          ? null
          : Subscription$UpdatedOrder$orderUpdated$driver$carColor.fromJson(
              (l$carColor as Map<String, dynamic>)),
      rating: (l$rating as int?),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Subscription$UpdatedOrder$orderUpdated$driver$media? media;

  final String mobileNumber;

  final String? carPlate;

  final Subscription$UpdatedOrder$orderUpdated$driver$car? car;

  final Subscription$UpdatedOrder$orderUpdated$driver$carColor? carColor;

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
    if (!(other is Subscription$UpdatedOrder$orderUpdated$driver) ||
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

extension UtilityExtension$Subscription$UpdatedOrder$orderUpdated$driver
    on Subscription$UpdatedOrder$orderUpdated$driver {
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver<
          Subscription$UpdatedOrder$orderUpdated$driver>
      get copyWith => CopyWith$Subscription$UpdatedOrder$orderUpdated$driver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UpdatedOrder$orderUpdated$driver<TRes> {
  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$driver(
    Subscription$UpdatedOrder$orderUpdated$driver instance,
    TRes Function(Subscription$UpdatedOrder$orderUpdated$driver) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver;

  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$driver.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Subscription$UpdatedOrder$orderUpdated$driver$media? media,
    String? mobileNumber,
    String? carPlate,
    Subscription$UpdatedOrder$orderUpdated$driver$car? car,
    Subscription$UpdatedOrder$orderUpdated$driver$carColor? carColor,
    int? rating,
  });
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media<TRes> get media;
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car<TRes> get car;
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor<TRes>
      get carColor;
}

class _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver<TRes>
    implements CopyWith$Subscription$UpdatedOrder$orderUpdated$driver<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder$orderUpdated$driver _instance;

  final TRes Function(Subscription$UpdatedOrder$orderUpdated$driver) _then;

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
      _then(Subscription$UpdatedOrder$orderUpdated$driver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Subscription$UpdatedOrder$orderUpdated$driver$media?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        car: car == _undefined
            ? _instance.car
            : (car as Subscription$UpdatedOrder$orderUpdated$driver$car?),
        carColor: carColor == _undefined
            ? _instance.carColor
            : (carColor
                as Subscription$UpdatedOrder$orderUpdated$driver$carColor?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
      ));
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media.stub(
            _then(_instance))
        : CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media(
            local$media, (e) => call(media: e));
  }

  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car.stub(
            _then(_instance))
        : CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car(
            local$car, (e) => call(car: e));
  }

  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor<TRes>
      get carColor {
    final local$carColor = _instance.carColor;
    return local$carColor == null
        ? CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor.stub(
            _then(_instance))
        : CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor(
            local$carColor, (e) => call(carColor: e));
  }
}

class _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver<TRes>
    implements CopyWith$Subscription$UpdatedOrder$orderUpdated$driver<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Subscription$UpdatedOrder$orderUpdated$driver$media? media,
    String? mobileNumber,
    String? carPlate,
    Subscription$UpdatedOrder$orderUpdated$driver$car? car,
    Subscription$UpdatedOrder$orderUpdated$driver$carColor? carColor,
    int? rating,
  }) =>
      _res;
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media<TRes>
      get media =>
          CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media.stub(
              _res);
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car<TRes> get car =>
      CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car.stub(_res);
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor<TRes>
      get carColor =>
          CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor.stub(
              _res);
}

class Subscription$UpdatedOrder$orderUpdated$driver$media
    implements Fragment$CurrentOrder$driver$media {
  Subscription$UpdatedOrder$orderUpdated$driver$media({required this.address});

  factory Subscription$UpdatedOrder$orderUpdated$driver$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Subscription$UpdatedOrder$orderUpdated$driver$media(
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
    if (!(other is Subscription$UpdatedOrder$orderUpdated$driver$media) ||
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

extension UtilityExtension$Subscription$UpdatedOrder$orderUpdated$driver$media
    on Subscription$UpdatedOrder$orderUpdated$driver$media {
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media<
          Subscription$UpdatedOrder$orderUpdated$driver$media>
      get copyWith =>
          CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media<
    TRes> {
  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media(
    Subscription$UpdatedOrder$orderUpdated$driver$media instance,
    TRes Function(Subscription$UpdatedOrder$orderUpdated$driver$media) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver$media;

  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver$media;

  TRes call({String? address});
}

class _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver$media<TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver$media(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder$orderUpdated$driver$media _instance;

  final TRes Function(Subscription$UpdatedOrder$orderUpdated$driver$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Subscription$UpdatedOrder$orderUpdated$driver$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver$media<
        TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$media<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver$media(
      this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Subscription$UpdatedOrder$orderUpdated$driver$car
    implements Fragment$CurrentOrder$driver$car {
  Subscription$UpdatedOrder$orderUpdated$driver$car({required this.name});

  factory Subscription$UpdatedOrder$orderUpdated$driver$car.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Subscription$UpdatedOrder$orderUpdated$driver$car(
        name: (l$name as String));
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
    if (!(other is Subscription$UpdatedOrder$orderUpdated$driver$car) ||
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

extension UtilityExtension$Subscription$UpdatedOrder$orderUpdated$driver$car
    on Subscription$UpdatedOrder$orderUpdated$driver$car {
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car<
          Subscription$UpdatedOrder$orderUpdated$driver$car>
      get copyWith =>
          CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car<
    TRes> {
  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car(
    Subscription$UpdatedOrder$orderUpdated$driver$car instance,
    TRes Function(Subscription$UpdatedOrder$orderUpdated$driver$car) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver$car;

  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver$car;

  TRes call({String? name});
}

class _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver$car<TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver$car(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder$orderUpdated$driver$car _instance;

  final TRes Function(Subscription$UpdatedOrder$orderUpdated$driver$car) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Subscription$UpdatedOrder$orderUpdated$driver$car(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver$car<TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$car<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver$car(
      this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Subscription$UpdatedOrder$orderUpdated$driver$carColor
    implements Fragment$CurrentOrder$driver$carColor {
  Subscription$UpdatedOrder$orderUpdated$driver$carColor({required this.name});

  factory Subscription$UpdatedOrder$orderUpdated$driver$carColor.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Subscription$UpdatedOrder$orderUpdated$driver$carColor(
        name: (l$name as String));
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
    if (!(other is Subscription$UpdatedOrder$orderUpdated$driver$carColor) ||
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

extension UtilityExtension$Subscription$UpdatedOrder$orderUpdated$driver$carColor
    on Subscription$UpdatedOrder$orderUpdated$driver$carColor {
  CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor<
          Subscription$UpdatedOrder$orderUpdated$driver$carColor>
      get copyWith =>
          CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor<
    TRes> {
  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor(
    Subscription$UpdatedOrder$orderUpdated$driver$carColor instance,
    TRes Function(Subscription$UpdatedOrder$orderUpdated$driver$carColor) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver$carColor;

  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver$carColor;

  TRes call({String? name});
}

class _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver$carColor<TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$driver$carColor(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder$orderUpdated$driver$carColor _instance;

  final TRes Function(Subscription$UpdatedOrder$orderUpdated$driver$carColor)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Subscription$UpdatedOrder$orderUpdated$driver$carColor(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver$carColor<
        TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$driver$carColor<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$driver$carColor(
      this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Subscription$UpdatedOrder$orderUpdated$service
    implements Fragment$CurrentOrder$service {
  Subscription$UpdatedOrder$orderUpdated$service({
    required this.media,
    required this.name,
    required this.prepayPercent,
    required this.cancellationTotalFee,
  });

  factory Subscription$UpdatedOrder$orderUpdated$service.fromJson(
      Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$name = json['name'];
    final l$prepayPercent = json['prepayPercent'];
    final l$cancellationTotalFee = json['cancellationTotalFee'];
    return Subscription$UpdatedOrder$orderUpdated$service(
      media: Subscription$UpdatedOrder$orderUpdated$service$media.fromJson(
          (l$media as Map<String, dynamic>)),
      name: (l$name as String),
      prepayPercent: (l$prepayPercent as int),
      cancellationTotalFee: (l$cancellationTotalFee as num).toDouble(),
    );
  }

  final Subscription$UpdatedOrder$orderUpdated$service$media media;

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
    if (!(other is Subscription$UpdatedOrder$orderUpdated$service) ||
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

extension UtilityExtension$Subscription$UpdatedOrder$orderUpdated$service
    on Subscription$UpdatedOrder$orderUpdated$service {
  CopyWith$Subscription$UpdatedOrder$orderUpdated$service<
          Subscription$UpdatedOrder$orderUpdated$service>
      get copyWith => CopyWith$Subscription$UpdatedOrder$orderUpdated$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UpdatedOrder$orderUpdated$service<TRes> {
  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$service(
    Subscription$UpdatedOrder$orderUpdated$service instance,
    TRes Function(Subscription$UpdatedOrder$orderUpdated$service) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$service;

  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$service.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$service;

  TRes call({
    Subscription$UpdatedOrder$orderUpdated$service$media? media,
    String? name,
    int? prepayPercent,
    double? cancellationTotalFee,
  });
  CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media<TRes> get media;
}

class _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$service<TRes>
    implements CopyWith$Subscription$UpdatedOrder$orderUpdated$service<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$service(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder$orderUpdated$service _instance;

  final TRes Function(Subscription$UpdatedOrder$orderUpdated$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? name = _undefined,
    Object? prepayPercent = _undefined,
    Object? cancellationTotalFee = _undefined,
  }) =>
      _then(Subscription$UpdatedOrder$orderUpdated$service(
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Subscription$UpdatedOrder$orderUpdated$service$media),
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
  CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media<TRes>
      get media {
    final local$media = _instance.media;
    return CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media(
        local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$service<TRes>
    implements CopyWith$Subscription$UpdatedOrder$orderUpdated$service<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$service(this._res);

  TRes _res;

  call({
    Subscription$UpdatedOrder$orderUpdated$service$media? media,
    String? name,
    int? prepayPercent,
    double? cancellationTotalFee,
  }) =>
      _res;
  CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media<TRes>
      get media =>
          CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media.stub(
              _res);
}

class Subscription$UpdatedOrder$orderUpdated$service$media
    implements Fragment$CurrentOrder$service$media {
  Subscription$UpdatedOrder$orderUpdated$service$media({required this.address});

  factory Subscription$UpdatedOrder$orderUpdated$service$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Subscription$UpdatedOrder$orderUpdated$service$media(
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
    if (!(other is Subscription$UpdatedOrder$orderUpdated$service$media) ||
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

extension UtilityExtension$Subscription$UpdatedOrder$orderUpdated$service$media
    on Subscription$UpdatedOrder$orderUpdated$service$media {
  CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media<
          Subscription$UpdatedOrder$orderUpdated$service$media>
      get copyWith =>
          CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media<
    TRes> {
  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media(
    Subscription$UpdatedOrder$orderUpdated$service$media instance,
    TRes Function(Subscription$UpdatedOrder$orderUpdated$service$media) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$service$media;

  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$service$media;

  TRes call({String? address});
}

class _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$service$media<TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$service$media(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder$orderUpdated$service$media _instance;

  final TRes Function(Subscription$UpdatedOrder$orderUpdated$service$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Subscription$UpdatedOrder$orderUpdated$service$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$service$media<
        TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$service$media<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$service$media(
      this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Subscription$UpdatedOrder$orderUpdated$directions
    implements Fragment$CurrentOrder$directions, Fragment$Point {
  Subscription$UpdatedOrder$orderUpdated$directions({
    required this.lat,
    required this.lng,
  });

  factory Subscription$UpdatedOrder$orderUpdated$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Subscription$UpdatedOrder$orderUpdated$directions(
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
    if (!(other is Subscription$UpdatedOrder$orderUpdated$directions) ||
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

extension UtilityExtension$Subscription$UpdatedOrder$orderUpdated$directions
    on Subscription$UpdatedOrder$orderUpdated$directions {
  CopyWith$Subscription$UpdatedOrder$orderUpdated$directions<
          Subscription$UpdatedOrder$orderUpdated$directions>
      get copyWith =>
          CopyWith$Subscription$UpdatedOrder$orderUpdated$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UpdatedOrder$orderUpdated$directions<
    TRes> {
  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$directions(
    Subscription$UpdatedOrder$orderUpdated$directions instance,
    TRes Function(Subscription$UpdatedOrder$orderUpdated$directions) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$directions;

  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$directions;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$directions<TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$directions<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$directions(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder$orderUpdated$directions _instance;

  final TRes Function(Subscription$UpdatedOrder$orderUpdated$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Subscription$UpdatedOrder$orderUpdated$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$directions<TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$directions<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$directions(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Subscription$UpdatedOrder$orderUpdated$conversations
    implements Fragment$CurrentOrder$conversations {
  Subscription$UpdatedOrder$orderUpdated$conversations({required this.sentAt});

  factory Subscription$UpdatedOrder$orderUpdated$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$sentAt = json['sentAt'];
    return Subscription$UpdatedOrder$orderUpdated$conversations(
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
    if (!(other is Subscription$UpdatedOrder$orderUpdated$conversations) ||
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

extension UtilityExtension$Subscription$UpdatedOrder$orderUpdated$conversations
    on Subscription$UpdatedOrder$orderUpdated$conversations {
  CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations<
          Subscription$UpdatedOrder$orderUpdated$conversations>
      get copyWith =>
          CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations<
    TRes> {
  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations(
    Subscription$UpdatedOrder$orderUpdated$conversations instance,
    TRes Function(Subscription$UpdatedOrder$orderUpdated$conversations) then,
  ) = _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$conversations;

  factory CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$conversations;

  TRes call({DateTime? sentAt});
}

class _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$conversations<TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations<TRes> {
  _CopyWithImpl$Subscription$UpdatedOrder$orderUpdated$conversations(
    this._instance,
    this._then,
  );

  final Subscription$UpdatedOrder$orderUpdated$conversations _instance;

  final TRes Function(Subscription$UpdatedOrder$orderUpdated$conversations)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sentAt = _undefined}) =>
      _then(Subscription$UpdatedOrder$orderUpdated$conversations(
          sentAt: sentAt == _undefined || sentAt == null
              ? _instance.sentAt
              : (sentAt as DateTime)));
}

class _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$conversations<
        TRes>
    implements
        CopyWith$Subscription$UpdatedOrder$orderUpdated$conversations<TRes> {
  _CopyWithStubImpl$Subscription$UpdatedOrder$orderUpdated$conversations(
      this._res);

  TRes _res;

  call({DateTime? sentAt}) => _res;
}

class Variables$Subscription$DriverLocationUpdated {
  factory Variables$Subscription$DriverLocationUpdated(
          {required String driverId}) =>
      Variables$Subscription$DriverLocationUpdated._({
        r'driverId': driverId,
      });

  Variables$Subscription$DriverLocationUpdated._(this._$data);

  factory Variables$Subscription$DriverLocationUpdated.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$driverId = data['driverId'];
    result$data['driverId'] = (l$driverId as String);
    return Variables$Subscription$DriverLocationUpdated._(result$data);
  }

  Map<String, dynamic> _$data;

  String get driverId => (_$data['driverId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$driverId = driverId;
    result$data['driverId'] = l$driverId;
    return result$data;
  }

  CopyWith$Variables$Subscription$DriverLocationUpdated<
          Variables$Subscription$DriverLocationUpdated>
      get copyWith => CopyWith$Variables$Subscription$DriverLocationUpdated(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$DriverLocationUpdated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$driverId = driverId;
    return Object.hashAll([l$driverId]);
  }
}

abstract class CopyWith$Variables$Subscription$DriverLocationUpdated<TRes> {
  factory CopyWith$Variables$Subscription$DriverLocationUpdated(
    Variables$Subscription$DriverLocationUpdated instance,
    TRes Function(Variables$Subscription$DriverLocationUpdated) then,
  ) = _CopyWithImpl$Variables$Subscription$DriverLocationUpdated;

  factory CopyWith$Variables$Subscription$DriverLocationUpdated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$DriverLocationUpdated;

  TRes call({String? driverId});
}

class _CopyWithImpl$Variables$Subscription$DriverLocationUpdated<TRes>
    implements CopyWith$Variables$Subscription$DriverLocationUpdated<TRes> {
  _CopyWithImpl$Variables$Subscription$DriverLocationUpdated(
    this._instance,
    this._then,
  );

  final Variables$Subscription$DriverLocationUpdated _instance;

  final TRes Function(Variables$Subscription$DriverLocationUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? driverId = _undefined}) =>
      _then(Variables$Subscription$DriverLocationUpdated._({
        ..._instance._$data,
        if (driverId != _undefined && driverId != null)
          'driverId': (driverId as String),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$DriverLocationUpdated<TRes>
    implements CopyWith$Variables$Subscription$DriverLocationUpdated<TRes> {
  _CopyWithStubImpl$Variables$Subscription$DriverLocationUpdated(this._res);

  TRes _res;

  call({String? driverId}) => _res;
}

class Subscription$DriverLocationUpdated {
  Subscription$DriverLocationUpdated({required this.driverLocationUpdated});

  factory Subscription$DriverLocationUpdated.fromJson(
      Map<String, dynamic> json) {
    final l$driverLocationUpdated = json['driverLocationUpdated'];
    return Subscription$DriverLocationUpdated(
        driverLocationUpdated: Fragment$Point.fromJson(
            (l$driverLocationUpdated as Map<String, dynamic>)));
  }

  final Fragment$Point driverLocationUpdated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driverLocationUpdated = driverLocationUpdated;
    _resultData['driverLocationUpdated'] = l$driverLocationUpdated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driverLocationUpdated = driverLocationUpdated;
    return Object.hashAll([l$driverLocationUpdated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$DriverLocationUpdated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$driverLocationUpdated = driverLocationUpdated;
    final lOther$driverLocationUpdated = other.driverLocationUpdated;
    if (l$driverLocationUpdated != lOther$driverLocationUpdated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$DriverLocationUpdated
    on Subscription$DriverLocationUpdated {
  CopyWith$Subscription$DriverLocationUpdated<
          Subscription$DriverLocationUpdated>
      get copyWith => CopyWith$Subscription$DriverLocationUpdated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$DriverLocationUpdated<TRes> {
  factory CopyWith$Subscription$DriverLocationUpdated(
    Subscription$DriverLocationUpdated instance,
    TRes Function(Subscription$DriverLocationUpdated) then,
  ) = _CopyWithImpl$Subscription$DriverLocationUpdated;

  factory CopyWith$Subscription$DriverLocationUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$DriverLocationUpdated;

  TRes call({Fragment$Point? driverLocationUpdated});
  CopyWith$Fragment$Point<TRes> get driverLocationUpdated;
}

class _CopyWithImpl$Subscription$DriverLocationUpdated<TRes>
    implements CopyWith$Subscription$DriverLocationUpdated<TRes> {
  _CopyWithImpl$Subscription$DriverLocationUpdated(
    this._instance,
    this._then,
  );

  final Subscription$DriverLocationUpdated _instance;

  final TRes Function(Subscription$DriverLocationUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? driverLocationUpdated = _undefined}) =>
      _then(Subscription$DriverLocationUpdated(
          driverLocationUpdated: driverLocationUpdated == _undefined ||
                  driverLocationUpdated == null
              ? _instance.driverLocationUpdated
              : (driverLocationUpdated as Fragment$Point)));
  CopyWith$Fragment$Point<TRes> get driverLocationUpdated {
    final local$driverLocationUpdated = _instance.driverLocationUpdated;
    return CopyWith$Fragment$Point(
        local$driverLocationUpdated, (e) => call(driverLocationUpdated: e));
  }
}

class _CopyWithStubImpl$Subscription$DriverLocationUpdated<TRes>
    implements CopyWith$Subscription$DriverLocationUpdated<TRes> {
  _CopyWithStubImpl$Subscription$DriverLocationUpdated(this._res);

  TRes _res;

  call({Fragment$Point? driverLocationUpdated}) => _res;
  CopyWith$Fragment$Point<TRes> get driverLocationUpdated =>
      CopyWith$Fragment$Point.stub(_res);
}

const documentNodeSubscriptionDriverLocationUpdated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'DriverLocationUpdated'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'driverId')),
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
        name: NameNode(value: 'driverLocationUpdated'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'driverId'),
            value: VariableNode(name: NameNode(value: 'driverId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Point'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionPoint,
]);
Subscription$DriverLocationUpdated _parserFn$Subscription$DriverLocationUpdated(
        Map<String, dynamic> data) =>
    Subscription$DriverLocationUpdated.fromJson(data);

class Options$Subscription$DriverLocationUpdated
    extends graphql.SubscriptionOptions<Subscription$DriverLocationUpdated> {
  Options$Subscription$DriverLocationUpdated({
    String? operationName,
    required Variables$Subscription$DriverLocationUpdated variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$DriverLocationUpdated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionDriverLocationUpdated,
          parserFn: _parserFn$Subscription$DriverLocationUpdated,
        );
}

class WatchOptions$Subscription$DriverLocationUpdated
    extends graphql.WatchQueryOptions<Subscription$DriverLocationUpdated> {
  WatchOptions$Subscription$DriverLocationUpdated({
    String? operationName,
    required Variables$Subscription$DriverLocationUpdated variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$DriverLocationUpdated? typedOptimisticResult,
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
          document: documentNodeSubscriptionDriverLocationUpdated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$DriverLocationUpdated,
        );
}

class FetchMoreOptions$Subscription$DriverLocationUpdated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$DriverLocationUpdated({
    required graphql.UpdateQuery updateQuery,
    required Variables$Subscription$DriverLocationUpdated variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeSubscriptionDriverLocationUpdated,
        );
}

extension ClientExtension$Subscription$DriverLocationUpdated
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$DriverLocationUpdated>>
      subscribe$DriverLocationUpdated(
              Options$Subscription$DriverLocationUpdated options) =>
          this.subscribe(options);
  graphql.ObservableQuery<Subscription$DriverLocationUpdated>
      watchSubscription$DriverLocationUpdated(
              WatchOptions$Subscription$DriverLocationUpdated options) =>
          this.watchQuery(options);
}

graphql.QueryResult<Subscription$DriverLocationUpdated>
    useSubscription$DriverLocationUpdated(
            Options$Subscription$DriverLocationUpdated options) =>
        graphql_flutter.useSubscription(options);

class Subscription$DriverLocationUpdated$Widget
    extends graphql_flutter.Subscription<Subscription$DriverLocationUpdated> {
  Subscription$DriverLocationUpdated$Widget({
    widgets.Key? key,
    required Options$Subscription$DriverLocationUpdated options,
    required graphql_flutter
        .SubscriptionBuilder<Subscription$DriverLocationUpdated>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$DriverLocationUpdated>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options,
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Variables$Mutation$SubmitFeedback {
  factory Variables$Mutation$SubmitFeedback({
    required int score,
    required String description,
    required String orderId,
    required List<String> parameterIds,
  }) =>
      Variables$Mutation$SubmitFeedback._({
        r'score': score,
        r'description': description,
        r'orderId': orderId,
        r'parameterIds': parameterIds,
      });

  Variables$Mutation$SubmitFeedback._(this._$data);

  factory Variables$Mutation$SubmitFeedback.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$score = data['score'];
    result$data['score'] = (l$score as int);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    final l$parameterIds = data['parameterIds'];
    result$data['parameterIds'] =
        (l$parameterIds as List<dynamic>).map((e) => (e as String)).toList();
    return Variables$Mutation$SubmitFeedback._(result$data);
  }

  Map<String, dynamic> _$data;

  int get score => (_$data['score'] as int);
  String get description => (_$data['description'] as String);
  String get orderId => (_$data['orderId'] as String);
  List<String> get parameterIds => (_$data['parameterIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$score = score;
    result$data['score'] = l$score;
    final l$description = description;
    result$data['description'] = l$description;
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    final l$parameterIds = parameterIds;
    result$data['parameterIds'] = l$parameterIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitFeedback<Variables$Mutation$SubmitFeedback>
      get copyWith => CopyWith$Variables$Mutation$SubmitFeedback(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SubmitFeedback) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$parameterIds = parameterIds;
    final lOther$parameterIds = other.parameterIds;
    if (l$parameterIds.length != lOther$parameterIds.length) {
      return false;
    }
    for (int i = 0; i < l$parameterIds.length; i++) {
      final l$parameterIds$entry = l$parameterIds[i];
      final lOther$parameterIds$entry = lOther$parameterIds[i];
      if (l$parameterIds$entry != lOther$parameterIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$score = score;
    final l$description = description;
    final l$orderId = orderId;
    final l$parameterIds = parameterIds;
    return Object.hashAll([
      l$score,
      l$description,
      l$orderId,
      Object.hashAll(l$parameterIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitFeedback<TRes> {
  factory CopyWith$Variables$Mutation$SubmitFeedback(
    Variables$Mutation$SubmitFeedback instance,
    TRes Function(Variables$Mutation$SubmitFeedback) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitFeedback;

  factory CopyWith$Variables$Mutation$SubmitFeedback.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitFeedback;

  TRes call({
    int? score,
    String? description,
    String? orderId,
    List<String>? parameterIds,
  });
}

class _CopyWithImpl$Variables$Mutation$SubmitFeedback<TRes>
    implements CopyWith$Variables$Mutation$SubmitFeedback<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitFeedback(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitFeedback _instance;

  final TRes Function(Variables$Mutation$SubmitFeedback) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? score = _undefined,
    Object? description = _undefined,
    Object? orderId = _undefined,
    Object? parameterIds = _undefined,
  }) =>
      _then(Variables$Mutation$SubmitFeedback._({
        ..._instance._$data,
        if (score != _undefined && score != null) 'score': (score as int),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
        if (parameterIds != _undefined && parameterIds != null)
          'parameterIds': (parameterIds as List<String>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitFeedback<TRes>
    implements CopyWith$Variables$Mutation$SubmitFeedback<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitFeedback(this._res);

  TRes _res;

  call({
    int? score,
    String? description,
    String? orderId,
    List<String>? parameterIds,
  }) =>
      _res;
}

class Mutation$SubmitFeedback {
  Mutation$SubmitFeedback({required this.submitReview});

  factory Mutation$SubmitFeedback.fromJson(Map<String, dynamic> json) {
    final l$submitReview = json['submitReview'];
    return Mutation$SubmitFeedback(
        submitReview: Fragment$CurrentOrder.fromJson(
            (l$submitReview as Map<String, dynamic>)));
  }

  final Fragment$CurrentOrder submitReview;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$submitReview = submitReview;
    _resultData['submitReview'] = l$submitReview.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$submitReview = submitReview;
    return Object.hashAll([l$submitReview]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitFeedback) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$submitReview = submitReview;
    final lOther$submitReview = other.submitReview;
    if (l$submitReview != lOther$submitReview) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SubmitFeedback on Mutation$SubmitFeedback {
  CopyWith$Mutation$SubmitFeedback<Mutation$SubmitFeedback> get copyWith =>
      CopyWith$Mutation$SubmitFeedback(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SubmitFeedback<TRes> {
  factory CopyWith$Mutation$SubmitFeedback(
    Mutation$SubmitFeedback instance,
    TRes Function(Mutation$SubmitFeedback) then,
  ) = _CopyWithImpl$Mutation$SubmitFeedback;

  factory CopyWith$Mutation$SubmitFeedback.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitFeedback;

  TRes call({Fragment$CurrentOrder? submitReview});
  CopyWith$Fragment$CurrentOrder<TRes> get submitReview;
}

class _CopyWithImpl$Mutation$SubmitFeedback<TRes>
    implements CopyWith$Mutation$SubmitFeedback<TRes> {
  _CopyWithImpl$Mutation$SubmitFeedback(
    this._instance,
    this._then,
  );

  final Mutation$SubmitFeedback _instance;

  final TRes Function(Mutation$SubmitFeedback) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? submitReview = _undefined}) =>
      _then(Mutation$SubmitFeedback(
          submitReview: submitReview == _undefined || submitReview == null
              ? _instance.submitReview
              : (submitReview as Fragment$CurrentOrder)));
  CopyWith$Fragment$CurrentOrder<TRes> get submitReview {
    final local$submitReview = _instance.submitReview;
    return CopyWith$Fragment$CurrentOrder(
        local$submitReview, (e) => call(submitReview: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitFeedback<TRes>
    implements CopyWith$Mutation$SubmitFeedback<TRes> {
  _CopyWithStubImpl$Mutation$SubmitFeedback(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? submitReview}) => _res;
  CopyWith$Fragment$CurrentOrder<TRes> get submitReview =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationSubmitFeedback = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitFeedback'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'score')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'description')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
        variable: VariableNode(name: NameNode(value: 'parameterIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ID'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'submitReview'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'review'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'score'),
                value: VariableNode(name: NameNode(value: 'score')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'description'),
                value: VariableNode(name: NameNode(value: 'description')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'requestId'),
                value: VariableNode(name: NameNode(value: 'orderId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'parameterIds'),
                value: VariableNode(name: NameNode(value: 'parameterIds')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$SubmitFeedback _parserFn$Mutation$SubmitFeedback(
        Map<String, dynamic> data) =>
    Mutation$SubmitFeedback.fromJson(data);
typedef OnMutationCompleted$Mutation$SubmitFeedback = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SubmitFeedback?,
);

class Options$Mutation$SubmitFeedback
    extends graphql.MutationOptions<Mutation$SubmitFeedback> {
  Options$Mutation$SubmitFeedback({
    String? operationName,
    required Variables$Mutation$SubmitFeedback variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitFeedback? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitFeedback? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitFeedback>? update,
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
                        : _parserFn$Mutation$SubmitFeedback(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitFeedback,
          parserFn: _parserFn$Mutation$SubmitFeedback,
        );

  final OnMutationCompleted$Mutation$SubmitFeedback? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SubmitFeedback
    extends graphql.WatchQueryOptions<Mutation$SubmitFeedback> {
  WatchOptions$Mutation$SubmitFeedback({
    String? operationName,
    required Variables$Mutation$SubmitFeedback variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitFeedback? typedOptimisticResult,
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
          document: documentNodeMutationSubmitFeedback,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SubmitFeedback,
        );
}

extension ClientExtension$Mutation$SubmitFeedback on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SubmitFeedback>> mutate$SubmitFeedback(
          Options$Mutation$SubmitFeedback options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SubmitFeedback> watchMutation$SubmitFeedback(
          WatchOptions$Mutation$SubmitFeedback options) =>
      this.watchMutation(options);
}

class Mutation$SubmitFeedback$HookResult {
  Mutation$SubmitFeedback$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SubmitFeedback runMutation;

  final graphql.QueryResult<Mutation$SubmitFeedback> result;
}

Mutation$SubmitFeedback$HookResult useMutation$SubmitFeedback(
    [WidgetOptions$Mutation$SubmitFeedback? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SubmitFeedback());
  return Mutation$SubmitFeedback$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SubmitFeedback>
    useWatchMutation$SubmitFeedback(
            WatchOptions$Mutation$SubmitFeedback options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SubmitFeedback
    extends graphql.MutationOptions<Mutation$SubmitFeedback> {
  WidgetOptions$Mutation$SubmitFeedback({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitFeedback? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitFeedback? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitFeedback>? update,
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
                        : _parserFn$Mutation$SubmitFeedback(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitFeedback,
          parserFn: _parserFn$Mutation$SubmitFeedback,
        );

  final OnMutationCompleted$Mutation$SubmitFeedback? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SubmitFeedback
    = graphql.MultiSourceResult<Mutation$SubmitFeedback> Function(
  Variables$Mutation$SubmitFeedback, {
  Object? optimisticResult,
  Mutation$SubmitFeedback? typedOptimisticResult,
});
typedef Builder$Mutation$SubmitFeedback = widgets.Widget Function(
  RunMutation$Mutation$SubmitFeedback,
  graphql.QueryResult<Mutation$SubmitFeedback>?,
);

class Mutation$SubmitFeedback$Widget
    extends graphql_flutter.Mutation<Mutation$SubmitFeedback> {
  Mutation$SubmitFeedback$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SubmitFeedback? options,
    required Builder$Mutation$SubmitFeedback builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SubmitFeedback(),
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

class Variables$Query$GetDriversLocation {
  factory Variables$Query$GetDriversLocation({Input$PointInput? point}) =>
      Variables$Query$GetDriversLocation._({
        if (point != null) r'point': point,
      });

  Variables$Query$GetDriversLocation._(this._$data);

  factory Variables$Query$GetDriversLocation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('point')) {
      final l$point = data['point'];
      result$data['point'] = l$point == null
          ? null
          : Input$PointInput.fromJson((l$point as Map<String, dynamic>));
    }
    return Variables$Query$GetDriversLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PointInput? get point => (_$data['point'] as Input$PointInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('point')) {
      final l$point = point;
      result$data['point'] = l$point?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetDriversLocation<
          Variables$Query$GetDriversLocation>
      get copyWith => CopyWith$Variables$Query$GetDriversLocation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetDriversLocation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (_$data.containsKey('point') != other._$data.containsKey('point')) {
      return false;
    }
    if (l$point != lOther$point) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$point = point;
    return Object.hashAll([_$data.containsKey('point') ? l$point : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetDriversLocation<TRes> {
  factory CopyWith$Variables$Query$GetDriversLocation(
    Variables$Query$GetDriversLocation instance,
    TRes Function(Variables$Query$GetDriversLocation) then,
  ) = _CopyWithImpl$Variables$Query$GetDriversLocation;

  factory CopyWith$Variables$Query$GetDriversLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDriversLocation;

  TRes call({Input$PointInput? point});
}

class _CopyWithImpl$Variables$Query$GetDriversLocation<TRes>
    implements CopyWith$Variables$Query$GetDriversLocation<TRes> {
  _CopyWithImpl$Variables$Query$GetDriversLocation(
    this._instance,
    this._then,
  );

  final Variables$Query$GetDriversLocation _instance;

  final TRes Function(Variables$Query$GetDriversLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? point = _undefined}) =>
      _then(Variables$Query$GetDriversLocation._({
        ..._instance._$data,
        if (point != _undefined) 'point': (point as Input$PointInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetDriversLocation<TRes>
    implements CopyWith$Variables$Query$GetDriversLocation<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDriversLocation(this._res);

  TRes _res;

  call({Input$PointInput? point}) => _res;
}

class Query$GetDriversLocation {
  Query$GetDriversLocation({required this.getDriversLocation});

  factory Query$GetDriversLocation.fromJson(Map<String, dynamic> json) {
    final l$getDriversLocation = json['getDriversLocation'];
    return Query$GetDriversLocation(
        getDriversLocation: (l$getDriversLocation as List<dynamic>)
            .map((e) => Query$GetDriversLocation$getDriversLocation.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$GetDriversLocation$getDriversLocation> getDriversLocation;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getDriversLocation = getDriversLocation;
    _resultData['getDriversLocation'] =
        l$getDriversLocation.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getDriversLocation = getDriversLocation;
    return Object.hashAll([Object.hashAll(l$getDriversLocation.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDriversLocation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getDriversLocation = getDriversLocation;
    final lOther$getDriversLocation = other.getDriversLocation;
    if (l$getDriversLocation.length != lOther$getDriversLocation.length) {
      return false;
    }
    for (int i = 0; i < l$getDriversLocation.length; i++) {
      final l$getDriversLocation$entry = l$getDriversLocation[i];
      final lOther$getDriversLocation$entry = lOther$getDriversLocation[i];
      if (l$getDriversLocation$entry != lOther$getDriversLocation$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDriversLocation
    on Query$GetDriversLocation {
  CopyWith$Query$GetDriversLocation<Query$GetDriversLocation> get copyWith =>
      CopyWith$Query$GetDriversLocation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDriversLocation<TRes> {
  factory CopyWith$Query$GetDriversLocation(
    Query$GetDriversLocation instance,
    TRes Function(Query$GetDriversLocation) then,
  ) = _CopyWithImpl$Query$GetDriversLocation;

  factory CopyWith$Query$GetDriversLocation.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDriversLocation;

  TRes call(
      {List<Query$GetDriversLocation$getDriversLocation>? getDriversLocation});
  TRes getDriversLocation(
      Iterable<Query$GetDriversLocation$getDriversLocation> Function(
              Iterable<
                  CopyWith$Query$GetDriversLocation$getDriversLocation<
                      Query$GetDriversLocation$getDriversLocation>>)
          _fn);
}

class _CopyWithImpl$Query$GetDriversLocation<TRes>
    implements CopyWith$Query$GetDriversLocation<TRes> {
  _CopyWithImpl$Query$GetDriversLocation(
    this._instance,
    this._then,
  );

  final Query$GetDriversLocation _instance;

  final TRes Function(Query$GetDriversLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getDriversLocation = _undefined}) =>
      _then(Query$GetDriversLocation(
          getDriversLocation:
              getDriversLocation == _undefined || getDriversLocation == null
                  ? _instance.getDriversLocation
                  : (getDriversLocation
                      as List<Query$GetDriversLocation$getDriversLocation>)));
  TRes getDriversLocation(
          Iterable<Query$GetDriversLocation$getDriversLocation> Function(
                  Iterable<
                      CopyWith$Query$GetDriversLocation$getDriversLocation<
                          Query$GetDriversLocation$getDriversLocation>>)
              _fn) =>
      call(
          getDriversLocation: _fn(_instance.getDriversLocation
              .map((e) => CopyWith$Query$GetDriversLocation$getDriversLocation(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetDriversLocation<TRes>
    implements CopyWith$Query$GetDriversLocation<TRes> {
  _CopyWithStubImpl$Query$GetDriversLocation(this._res);

  TRes _res;

  call(
          {List<Query$GetDriversLocation$getDriversLocation>?
              getDriversLocation}) =>
      _res;
  getDriversLocation(_fn) => _res;
}

const documentNodeQueryGetDriversLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDriversLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'point')),
        type: NamedTypeNode(
          name: NameNode(value: 'PointInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getDriversLocation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'center'),
            value: VariableNode(name: NameNode(value: 'point')),
          )
        ],
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
          FragmentSpreadNode(
            name: NameNode(value: 'Point'),
            directives: [],
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionPoint,
]);
Query$GetDriversLocation _parserFn$Query$GetDriversLocation(
        Map<String, dynamic> data) =>
    Query$GetDriversLocation.fromJson(data);
typedef OnQueryComplete$Query$GetDriversLocation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetDriversLocation?,
);

class Options$Query$GetDriversLocation
    extends graphql.QueryOptions<Query$GetDriversLocation> {
  Options$Query$GetDriversLocation({
    String? operationName,
    Variables$Query$GetDriversLocation? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetDriversLocation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetDriversLocation? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                        : _parserFn$Query$GetDriversLocation(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetDriversLocation,
          parserFn: _parserFn$Query$GetDriversLocation,
        );

  final OnQueryComplete$Query$GetDriversLocation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetDriversLocation
    extends graphql.WatchQueryOptions<Query$GetDriversLocation> {
  WatchOptions$Query$GetDriversLocation({
    String? operationName,
    Variables$Query$GetDriversLocation? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetDriversLocation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetDriversLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetDriversLocation,
        );
}

class FetchMoreOptions$Query$GetDriversLocation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetDriversLocation({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetDriversLocation? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetDriversLocation,
        );
}

extension ClientExtension$Query$GetDriversLocation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetDriversLocation>>
      query$GetDriversLocation(
              [Options$Query$GetDriversLocation? options]) async =>
          await this.query(options ?? Options$Query$GetDriversLocation());
  graphql.ObservableQuery<Query$GetDriversLocation>
      watchQuery$GetDriversLocation(
              [WatchOptions$Query$GetDriversLocation? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetDriversLocation());
  void writeQuery$GetDriversLocation({
    required Query$GetDriversLocation data,
    Variables$Query$GetDriversLocation? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetDriversLocation),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetDriversLocation? readQuery$GetDriversLocation({
    Variables$Query$GetDriversLocation? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetDriversLocation),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetDriversLocation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetDriversLocation>
    useQuery$GetDriversLocation([Options$Query$GetDriversLocation? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetDriversLocation());
graphql.ObservableQuery<Query$GetDriversLocation>
    useWatchQuery$GetDriversLocation(
            [WatchOptions$Query$GetDriversLocation? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetDriversLocation());

class Query$GetDriversLocation$Widget
    extends graphql_flutter.Query<Query$GetDriversLocation> {
  Query$GetDriversLocation$Widget({
    widgets.Key? key,
    Options$Query$GetDriversLocation? options,
    required graphql_flutter.QueryBuilder<Query$GetDriversLocation> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetDriversLocation(),
          builder: builder,
        );
}

class Query$GetDriversLocation$getDriversLocation implements Fragment$Point {
  Query$GetDriversLocation$getDriversLocation({
    required this.lat,
    required this.lng,
  });

  factory Query$GetDriversLocation$getDriversLocation.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$GetDriversLocation$getDriversLocation(
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
    if (!(other is Query$GetDriversLocation$getDriversLocation) ||
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

extension UtilityExtension$Query$GetDriversLocation$getDriversLocation
    on Query$GetDriversLocation$getDriversLocation {
  CopyWith$Query$GetDriversLocation$getDriversLocation<
          Query$GetDriversLocation$getDriversLocation>
      get copyWith => CopyWith$Query$GetDriversLocation$getDriversLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDriversLocation$getDriversLocation<TRes> {
  factory CopyWith$Query$GetDriversLocation$getDriversLocation(
    Query$GetDriversLocation$getDriversLocation instance,
    TRes Function(Query$GetDriversLocation$getDriversLocation) then,
  ) = _CopyWithImpl$Query$GetDriversLocation$getDriversLocation;

  factory CopyWith$Query$GetDriversLocation$getDriversLocation.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDriversLocation$getDriversLocation;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$GetDriversLocation$getDriversLocation<TRes>
    implements CopyWith$Query$GetDriversLocation$getDriversLocation<TRes> {
  _CopyWithImpl$Query$GetDriversLocation$getDriversLocation(
    this._instance,
    this._then,
  );

  final Query$GetDriversLocation$getDriversLocation _instance;

  final TRes Function(Query$GetDriversLocation$getDriversLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$GetDriversLocation$getDriversLocation(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$GetDriversLocation$getDriversLocation<TRes>
    implements CopyWith$Query$GetDriversLocation$getDriversLocation<TRes> {
  _CopyWithStubImpl$Query$GetDriversLocation$getDriversLocation(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Query$GetReviewParameters {
  Query$GetReviewParameters({required this.feedbackParameters});

  factory Query$GetReviewParameters.fromJson(Map<String, dynamic> json) {
    final l$feedbackParameters = json['feedbackParameters'];
    return Query$GetReviewParameters(
        feedbackParameters: (l$feedbackParameters as List<dynamic>)
            .map((e) => Query$GetReviewParameters$feedbackParameters.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$GetReviewParameters$feedbackParameters> feedbackParameters;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$feedbackParameters = feedbackParameters;
    _resultData['feedbackParameters'] =
        l$feedbackParameters.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$feedbackParameters = feedbackParameters;
    return Object.hashAll([Object.hashAll(l$feedbackParameters.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviewParameters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$feedbackParameters = feedbackParameters;
    final lOther$feedbackParameters = other.feedbackParameters;
    if (l$feedbackParameters.length != lOther$feedbackParameters.length) {
      return false;
    }
    for (int i = 0; i < l$feedbackParameters.length; i++) {
      final l$feedbackParameters$entry = l$feedbackParameters[i];
      final lOther$feedbackParameters$entry = lOther$feedbackParameters[i];
      if (l$feedbackParameters$entry != lOther$feedbackParameters$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetReviewParameters
    on Query$GetReviewParameters {
  CopyWith$Query$GetReviewParameters<Query$GetReviewParameters> get copyWith =>
      CopyWith$Query$GetReviewParameters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetReviewParameters<TRes> {
  factory CopyWith$Query$GetReviewParameters(
    Query$GetReviewParameters instance,
    TRes Function(Query$GetReviewParameters) then,
  ) = _CopyWithImpl$Query$GetReviewParameters;

  factory CopyWith$Query$GetReviewParameters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviewParameters;

  TRes call(
      {List<Query$GetReviewParameters$feedbackParameters>? feedbackParameters});
  TRes feedbackParameters(
      Iterable<Query$GetReviewParameters$feedbackParameters> Function(
              Iterable<
                  CopyWith$Query$GetReviewParameters$feedbackParameters<
                      Query$GetReviewParameters$feedbackParameters>>)
          _fn);
}

class _CopyWithImpl$Query$GetReviewParameters<TRes>
    implements CopyWith$Query$GetReviewParameters<TRes> {
  _CopyWithImpl$Query$GetReviewParameters(
    this._instance,
    this._then,
  );

  final Query$GetReviewParameters _instance;

  final TRes Function(Query$GetReviewParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? feedbackParameters = _undefined}) =>
      _then(Query$GetReviewParameters(
          feedbackParameters:
              feedbackParameters == _undefined || feedbackParameters == null
                  ? _instance.feedbackParameters
                  : (feedbackParameters
                      as List<Query$GetReviewParameters$feedbackParameters>)));
  TRes feedbackParameters(
          Iterable<Query$GetReviewParameters$feedbackParameters> Function(
                  Iterable<
                      CopyWith$Query$GetReviewParameters$feedbackParameters<
                          Query$GetReviewParameters$feedbackParameters>>)
              _fn) =>
      call(
          feedbackParameters: _fn(_instance.feedbackParameters
              .map((e) => CopyWith$Query$GetReviewParameters$feedbackParameters(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetReviewParameters<TRes>
    implements CopyWith$Query$GetReviewParameters<TRes> {
  _CopyWithStubImpl$Query$GetReviewParameters(this._res);

  TRes _res;

  call(
          {List<Query$GetReviewParameters$feedbackParameters>?
              feedbackParameters}) =>
      _res;
  feedbackParameters(_fn) => _res;
}

const documentNodeQueryGetReviewParameters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetReviewParameters'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'feedbackParameters'),
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
            name: NameNode(value: 'isGood'),
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
Query$GetReviewParameters _parserFn$Query$GetReviewParameters(
        Map<String, dynamic> data) =>
    Query$GetReviewParameters.fromJson(data);
typedef OnQueryComplete$Query$GetReviewParameters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetReviewParameters?,
);

class Options$Query$GetReviewParameters
    extends graphql.QueryOptions<Query$GetReviewParameters> {
  Options$Query$GetReviewParameters({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetReviewParameters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetReviewParameters? onComplete,
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
                        : _parserFn$Query$GetReviewParameters(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetReviewParameters,
          parserFn: _parserFn$Query$GetReviewParameters,
        );

  final OnQueryComplete$Query$GetReviewParameters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetReviewParameters
    extends graphql.WatchQueryOptions<Query$GetReviewParameters> {
  WatchOptions$Query$GetReviewParameters({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetReviewParameters? typedOptimisticResult,
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
          document: documentNodeQueryGetReviewParameters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetReviewParameters,
        );
}

class FetchMoreOptions$Query$GetReviewParameters
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetReviewParameters(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetReviewParameters,
        );
}

extension ClientExtension$Query$GetReviewParameters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetReviewParameters>>
      query$GetReviewParameters(
              [Options$Query$GetReviewParameters? options]) async =>
          await this.query(options ?? Options$Query$GetReviewParameters());
  graphql.ObservableQuery<Query$GetReviewParameters>
      watchQuery$GetReviewParameters(
              [WatchOptions$Query$GetReviewParameters? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetReviewParameters());
  void writeQuery$GetReviewParameters({
    required Query$GetReviewParameters data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetReviewParameters)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetReviewParameters? readQuery$GetReviewParameters(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetReviewParameters)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetReviewParameters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetReviewParameters>
    useQuery$GetReviewParameters(
            [Options$Query$GetReviewParameters? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetReviewParameters());
graphql.ObservableQuery<Query$GetReviewParameters>
    useWatchQuery$GetReviewParameters(
            [WatchOptions$Query$GetReviewParameters? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetReviewParameters());

class Query$GetReviewParameters$Widget
    extends graphql_flutter.Query<Query$GetReviewParameters> {
  Query$GetReviewParameters$Widget({
    widgets.Key? key,
    Options$Query$GetReviewParameters? options,
    required graphql_flutter.QueryBuilder<Query$GetReviewParameters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetReviewParameters(),
          builder: builder,
        );
}

class Query$GetReviewParameters$feedbackParameters {
  Query$GetReviewParameters$feedbackParameters({
    required this.id,
    required this.title,
    required this.isGood,
  });

  factory Query$GetReviewParameters$feedbackParameters.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$isGood = json['isGood'];
    return Query$GetReviewParameters$feedbackParameters(
      id: (l$id as String),
      title: (l$title as String),
      isGood: (l$isGood as bool),
    );
  }

  final String id;

  final String title;

  final bool isGood;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$isGood = isGood;
    _resultData['isGood'] = l$isGood;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$isGood = isGood;
    return Object.hashAll([
      l$id,
      l$title,
      l$isGood,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviewParameters$feedbackParameters) ||
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
    final l$isGood = isGood;
    final lOther$isGood = other.isGood;
    if (l$isGood != lOther$isGood) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetReviewParameters$feedbackParameters
    on Query$GetReviewParameters$feedbackParameters {
  CopyWith$Query$GetReviewParameters$feedbackParameters<
          Query$GetReviewParameters$feedbackParameters>
      get copyWith => CopyWith$Query$GetReviewParameters$feedbackParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetReviewParameters$feedbackParameters<TRes> {
  factory CopyWith$Query$GetReviewParameters$feedbackParameters(
    Query$GetReviewParameters$feedbackParameters instance,
    TRes Function(Query$GetReviewParameters$feedbackParameters) then,
  ) = _CopyWithImpl$Query$GetReviewParameters$feedbackParameters;

  factory CopyWith$Query$GetReviewParameters$feedbackParameters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviewParameters$feedbackParameters;

  TRes call({
    String? id,
    String? title,
    bool? isGood,
  });
}

class _CopyWithImpl$Query$GetReviewParameters$feedbackParameters<TRes>
    implements CopyWith$Query$GetReviewParameters$feedbackParameters<TRes> {
  _CopyWithImpl$Query$GetReviewParameters$feedbackParameters(
    this._instance,
    this._then,
  );

  final Query$GetReviewParameters$feedbackParameters _instance;

  final TRes Function(Query$GetReviewParameters$feedbackParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? isGood = _undefined,
  }) =>
      _then(Query$GetReviewParameters$feedbackParameters(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        isGood: isGood == _undefined || isGood == null
            ? _instance.isGood
            : (isGood as bool),
      ));
}

class _CopyWithStubImpl$Query$GetReviewParameters$feedbackParameters<TRes>
    implements CopyWith$Query$GetReviewParameters$feedbackParameters<TRes> {
  _CopyWithStubImpl$Query$GetReviewParameters$feedbackParameters(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    bool? isGood,
  }) =>
      _res;
}

class Variables$Query$GetFare {
  factory Variables$Query$GetFare({
    required List<Input$PointInput> points,
    String? couponCode,
    List<String>? selectedOptionIds,
  }) =>
      Variables$Query$GetFare._({
        r'points': points,
        if (couponCode != null) r'couponCode': couponCode,
        if (selectedOptionIds != null) r'selectedOptionIds': selectedOptionIds,
      });

  Variables$Query$GetFare._(this._$data);

  factory Variables$Query$GetFare.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$points = data['points'];
    result$data['points'] = (l$points as List<dynamic>)
        .map((e) => Input$PointInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('couponCode')) {
      final l$couponCode = data['couponCode'];
      result$data['couponCode'] = (l$couponCode as String?);
    }
    if (data.containsKey('selectedOptionIds')) {
      final l$selectedOptionIds = data['selectedOptionIds'];
      result$data['selectedOptionIds'] = (l$selectedOptionIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Variables$Query$GetFare._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PointInput> get points =>
      (_$data['points'] as List<Input$PointInput>);
  String? get couponCode => (_$data['couponCode'] as String?);
  List<String>? get selectedOptionIds =>
      (_$data['selectedOptionIds'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$points = points;
    result$data['points'] = l$points.map((e) => e.toJson()).toList();
    if (_$data.containsKey('couponCode')) {
      final l$couponCode = couponCode;
      result$data['couponCode'] = l$couponCode;
    }
    if (_$data.containsKey('selectedOptionIds')) {
      final l$selectedOptionIds = selectedOptionIds;
      result$data['selectedOptionIds'] =
          l$selectedOptionIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetFare<Variables$Query$GetFare> get copyWith =>
      CopyWith$Variables$Query$GetFare(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetFare) ||
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
    final l$couponCode = couponCode;
    final lOther$couponCode = other.couponCode;
    if (_$data.containsKey('couponCode') !=
        other._$data.containsKey('couponCode')) {
      return false;
    }
    if (l$couponCode != lOther$couponCode) {
      return false;
    }
    final l$selectedOptionIds = selectedOptionIds;
    final lOther$selectedOptionIds = other.selectedOptionIds;
    if (_$data.containsKey('selectedOptionIds') !=
        other._$data.containsKey('selectedOptionIds')) {
      return false;
    }
    if (l$selectedOptionIds != null && lOther$selectedOptionIds != null) {
      if (l$selectedOptionIds.length != lOther$selectedOptionIds.length) {
        return false;
      }
      for (int i = 0; i < l$selectedOptionIds.length; i++) {
        final l$selectedOptionIds$entry = l$selectedOptionIds[i];
        final lOther$selectedOptionIds$entry = lOther$selectedOptionIds[i];
        if (l$selectedOptionIds$entry != lOther$selectedOptionIds$entry) {
          return false;
        }
      }
    } else if (l$selectedOptionIds != lOther$selectedOptionIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$points = points;
    final l$couponCode = couponCode;
    final l$selectedOptionIds = selectedOptionIds;
    return Object.hashAll([
      Object.hashAll(l$points.map((v) => v)),
      _$data.containsKey('couponCode') ? l$couponCode : const {},
      _$data.containsKey('selectedOptionIds')
          ? l$selectedOptionIds == null
              ? null
              : Object.hashAll(l$selectedOptionIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetFare<TRes> {
  factory CopyWith$Variables$Query$GetFare(
    Variables$Query$GetFare instance,
    TRes Function(Variables$Query$GetFare) then,
  ) = _CopyWithImpl$Variables$Query$GetFare;

  factory CopyWith$Variables$Query$GetFare.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFare;

  TRes call({
    List<Input$PointInput>? points,
    String? couponCode,
    List<String>? selectedOptionIds,
  });
}

class _CopyWithImpl$Variables$Query$GetFare<TRes>
    implements CopyWith$Variables$Query$GetFare<TRes> {
  _CopyWithImpl$Variables$Query$GetFare(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFare _instance;

  final TRes Function(Variables$Query$GetFare) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? points = _undefined,
    Object? couponCode = _undefined,
    Object? selectedOptionIds = _undefined,
  }) =>
      _then(Variables$Query$GetFare._({
        ..._instance._$data,
        if (points != _undefined && points != null)
          'points': (points as List<Input$PointInput>),
        if (couponCode != _undefined) 'couponCode': (couponCode as String?),
        if (selectedOptionIds != _undefined)
          'selectedOptionIds': (selectedOptionIds as List<String>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFare<TRes>
    implements CopyWith$Variables$Query$GetFare<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFare(this._res);

  TRes _res;

  call({
    List<Input$PointInput>? points,
    String? couponCode,
    List<String>? selectedOptionIds,
  }) =>
      _res;
}

class Query$GetFare {
  Query$GetFare({required this.getFare});

  factory Query$GetFare.fromJson(Map<String, dynamic> json) {
    final l$getFare = json['getFare'];
    return Query$GetFare(
        getFare: Query$GetFare$getFare.fromJson(
            (l$getFare as Map<String, dynamic>)));
  }

  final Query$GetFare$getFare getFare;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getFare = getFare;
    _resultData['getFare'] = l$getFare.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getFare = getFare;
    return Object.hashAll([l$getFare]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFare) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getFare = getFare;
    final lOther$getFare = other.getFare;
    if (l$getFare != lOther$getFare) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFare on Query$GetFare {
  CopyWith$Query$GetFare<Query$GetFare> get copyWith => CopyWith$Query$GetFare(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFare<TRes> {
  factory CopyWith$Query$GetFare(
    Query$GetFare instance,
    TRes Function(Query$GetFare) then,
  ) = _CopyWithImpl$Query$GetFare;

  factory CopyWith$Query$GetFare.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFare;

  TRes call({Query$GetFare$getFare? getFare});
  CopyWith$Query$GetFare$getFare<TRes> get getFare;
}

class _CopyWithImpl$Query$GetFare<TRes>
    implements CopyWith$Query$GetFare<TRes> {
  _CopyWithImpl$Query$GetFare(
    this._instance,
    this._then,
  );

  final Query$GetFare _instance;

  final TRes Function(Query$GetFare) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getFare = _undefined}) => _then(Query$GetFare(
      getFare: getFare == _undefined || getFare == null
          ? _instance.getFare
          : (getFare as Query$GetFare$getFare)));
  CopyWith$Query$GetFare$getFare<TRes> get getFare {
    final local$getFare = _instance.getFare;
    return CopyWith$Query$GetFare$getFare(
        local$getFare, (e) => call(getFare: e));
  }
}

class _CopyWithStubImpl$Query$GetFare<TRes>
    implements CopyWith$Query$GetFare<TRes> {
  _CopyWithStubImpl$Query$GetFare(this._res);

  TRes _res;

  call({Query$GetFare$getFare? getFare}) => _res;
  CopyWith$Query$GetFare$getFare<TRes> get getFare =>
      CopyWith$Query$GetFare$getFare.stub(_res);
}

const documentNodeQueryGetFare = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFare'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'points')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PointInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'couponCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'selectedOptionIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getFare'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'points'),
                value: VariableNode(name: NameNode(value: 'points')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'couponCode'),
                value: VariableNode(name: NameNode(value: 'couponCode')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'selectedOptionIds'),
                value: VariableNode(name: NameNode(value: 'selectedOptionIds')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'distance'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
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
            name: NameNode(value: 'services'),
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'services'),
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
                    name: NameNode(value: 'name'),
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
                    name: NameNode(value: 'personCapacity'),
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
                    name: NameNode(value: 'twoWayAvailable'),
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
                    name: NameNode(value: 'options'),
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
                        name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'additionalFee'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'icon'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'cost'),
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
                ]),
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'error'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionPoint,
]);
Query$GetFare _parserFn$Query$GetFare(Map<String, dynamic> data) =>
    Query$GetFare.fromJson(data);
typedef OnQueryComplete$Query$GetFare = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetFare?,
);

class Options$Query$GetFare extends graphql.QueryOptions<Query$GetFare> {
  Options$Query$GetFare({
    String? operationName,
    required Variables$Query$GetFare variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetFare? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetFare? onComplete,
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
                    data == null ? null : _parserFn$Query$GetFare(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetFare,
          parserFn: _parserFn$Query$GetFare,
        );

  final OnQueryComplete$Query$GetFare? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetFare
    extends graphql.WatchQueryOptions<Query$GetFare> {
  WatchOptions$Query$GetFare({
    String? operationName,
    required Variables$Query$GetFare variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetFare? typedOptimisticResult,
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
          document: documentNodeQueryGetFare,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetFare,
        );
}

class FetchMoreOptions$Query$GetFare extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetFare({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetFare variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetFare,
        );
}

extension ClientExtension$Query$GetFare on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetFare>> query$GetFare(
          Options$Query$GetFare options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetFare> watchQuery$GetFare(
          WatchOptions$Query$GetFare options) =>
      this.watchQuery(options);
  void writeQuery$GetFare({
    required Query$GetFare data,
    required Variables$Query$GetFare variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetFare),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetFare? readQuery$GetFare({
    required Variables$Query$GetFare variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetFare),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetFare.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetFare> useQuery$GetFare(
        Options$Query$GetFare options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetFare> useWatchQuery$GetFare(
        WatchOptions$Query$GetFare options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetFare$Widget extends graphql_flutter.Query<Query$GetFare> {
  Query$GetFare$Widget({
    widgets.Key? key,
    required Options$Query$GetFare options,
    required graphql_flutter.QueryBuilder<Query$GetFare> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetFare$getFare {
  Query$GetFare$getFare({
    required this.distance,
    required this.duration,
    required this.currency,
    required this.directions,
    required this.services,
    this.error,
  });

  factory Query$GetFare$getFare.fromJson(Map<String, dynamic> json) {
    final l$distance = json['distance'];
    final l$duration = json['duration'];
    final l$currency = json['currency'];
    final l$directions = json['directions'];
    final l$services = json['services'];
    final l$error = json['error'];
    return Query$GetFare$getFare(
      distance: (l$distance as num).toDouble(),
      duration: (l$duration as num).toDouble(),
      currency: (l$currency as String),
      directions: (l$directions as List<dynamic>)
          .map((e) => Query$GetFare$getFare$directions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      services: (l$services as List<dynamic>)
          .map((e) => Query$GetFare$getFare$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      error: l$error == null
          ? null
          : fromJson$Enum$CalculateFareError((l$error as String)),
    );
  }

  final double distance;

  final double duration;

  final String currency;

  final List<Query$GetFare$getFare$directions> directions;

  final List<Query$GetFare$getFare$services> services;

  final Enum$CalculateFareError? error;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$distance = distance;
    _resultData['distance'] = l$distance;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$directions = directions;
    _resultData['directions'] = l$directions.map((e) => e.toJson()).toList();
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    final l$error = error;
    _resultData['error'] =
        l$error == null ? null : toJson$Enum$CalculateFareError(l$error);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$distance = distance;
    final l$duration = duration;
    final l$currency = currency;
    final l$directions = directions;
    final l$services = services;
    final l$error = error;
    return Object.hashAll([
      l$distance,
      l$duration,
      l$currency,
      Object.hashAll(l$directions.map((v) => v)),
      Object.hashAll(l$services.map((v) => v)),
      l$error,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFare$getFare) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$directions = directions;
    final lOther$directions = other.directions;
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
    final l$services = services;
    final lOther$services = other.services;
    if (l$services.length != lOther$services.length) {
      return false;
    }
    for (int i = 0; i < l$services.length; i++) {
      final l$services$entry = l$services[i];
      final lOther$services$entry = lOther$services[i];
      if (l$services$entry != lOther$services$entry) {
        return false;
      }
    }
    final l$error = error;
    final lOther$error = other.error;
    if (l$error != lOther$error) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFare$getFare on Query$GetFare$getFare {
  CopyWith$Query$GetFare$getFare<Query$GetFare$getFare> get copyWith =>
      CopyWith$Query$GetFare$getFare(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFare$getFare<TRes> {
  factory CopyWith$Query$GetFare$getFare(
    Query$GetFare$getFare instance,
    TRes Function(Query$GetFare$getFare) then,
  ) = _CopyWithImpl$Query$GetFare$getFare;

  factory CopyWith$Query$GetFare$getFare.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFare$getFare;

  TRes call({
    double? distance,
    double? duration,
    String? currency,
    List<Query$GetFare$getFare$directions>? directions,
    List<Query$GetFare$getFare$services>? services,
    Enum$CalculateFareError? error,
  });
  TRes directions(
      Iterable<Query$GetFare$getFare$directions> Function(
              Iterable<
                  CopyWith$Query$GetFare$getFare$directions<
                      Query$GetFare$getFare$directions>>)
          _fn);
  TRes services(
      Iterable<Query$GetFare$getFare$services> Function(
              Iterable<
                  CopyWith$Query$GetFare$getFare$services<
                      Query$GetFare$getFare$services>>)
          _fn);
}

class _CopyWithImpl$Query$GetFare$getFare<TRes>
    implements CopyWith$Query$GetFare$getFare<TRes> {
  _CopyWithImpl$Query$GetFare$getFare(
    this._instance,
    this._then,
  );

  final Query$GetFare$getFare _instance;

  final TRes Function(Query$GetFare$getFare) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? distance = _undefined,
    Object? duration = _undefined,
    Object? currency = _undefined,
    Object? directions = _undefined,
    Object? services = _undefined,
    Object? error = _undefined,
  }) =>
      _then(Query$GetFare$getFare(
        distance: distance == _undefined || distance == null
            ? _instance.distance
            : (distance as double),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        directions: directions == _undefined || directions == null
            ? _instance.directions
            : (directions as List<Query$GetFare$getFare$directions>),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Query$GetFare$getFare$services>),
        error: error == _undefined
            ? _instance.error
            : (error as Enum$CalculateFareError?),
      ));
  TRes directions(
          Iterable<Query$GetFare$getFare$directions> Function(
                  Iterable<
                      CopyWith$Query$GetFare$getFare$directions<
                          Query$GetFare$getFare$directions>>)
              _fn) =>
      call(
          directions: _fn(_instance.directions
              .map((e) => CopyWith$Query$GetFare$getFare$directions(
                    e,
                    (i) => i,
                  ))).toList());
  TRes services(
          Iterable<Query$GetFare$getFare$services> Function(
                  Iterable<
                      CopyWith$Query$GetFare$getFare$services<
                          Query$GetFare$getFare$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith$Query$GetFare$getFare$services(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFare$getFare<TRes>
    implements CopyWith$Query$GetFare$getFare<TRes> {
  _CopyWithStubImpl$Query$GetFare$getFare(this._res);

  TRes _res;

  call({
    double? distance,
    double? duration,
    String? currency,
    List<Query$GetFare$getFare$directions>? directions,
    List<Query$GetFare$getFare$services>? services,
    Enum$CalculateFareError? error,
  }) =>
      _res;
  directions(_fn) => _res;
  services(_fn) => _res;
}

class Query$GetFare$getFare$directions implements Fragment$Point {
  Query$GetFare$getFare$directions({
    required this.lat,
    required this.lng,
  });

  factory Query$GetFare$getFare$directions.fromJson(Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    return Query$GetFare$getFare$directions(
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
    if (!(other is Query$GetFare$getFare$directions) ||
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

extension UtilityExtension$Query$GetFare$getFare$directions
    on Query$GetFare$getFare$directions {
  CopyWith$Query$GetFare$getFare$directions<Query$GetFare$getFare$directions>
      get copyWith => CopyWith$Query$GetFare$getFare$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFare$getFare$directions<TRes> {
  factory CopyWith$Query$GetFare$getFare$directions(
    Query$GetFare$getFare$directions instance,
    TRes Function(Query$GetFare$getFare$directions) then,
  ) = _CopyWithImpl$Query$GetFare$getFare$directions;

  factory CopyWith$Query$GetFare$getFare$directions.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFare$getFare$directions;

  TRes call({
    double? lat,
    double? lng,
  });
}

class _CopyWithImpl$Query$GetFare$getFare$directions<TRes>
    implements CopyWith$Query$GetFare$getFare$directions<TRes> {
  _CopyWithImpl$Query$GetFare$getFare$directions(
    this._instance,
    this._then,
  );

  final Query$GetFare$getFare$directions _instance;

  final TRes Function(Query$GetFare$getFare$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
  }) =>
      _then(Query$GetFare$getFare$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
      ));
}

class _CopyWithStubImpl$Query$GetFare$getFare$directions<TRes>
    implements CopyWith$Query$GetFare$getFare$directions<TRes> {
  _CopyWithStubImpl$Query$GetFare$getFare$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
  }) =>
      _res;
}

class Query$GetFare$getFare$services {
  Query$GetFare$getFare$services({
    required this.id,
    required this.name,
    required this.services,
  });

  factory Query$GetFare$getFare$services.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$services = json['services'];
    return Query$GetFare$getFare$services(
      id: (l$id as String),
      name: (l$name as String),
      services: (l$services as List<dynamic>)
          .map((e) => Query$GetFare$getFare$services$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final String name;

  final List<Query$GetFare$getFare$services$services> services;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$services = services;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$services.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFare$getFare$services) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services.length != lOther$services.length) {
      return false;
    }
    for (int i = 0; i < l$services.length; i++) {
      final l$services$entry = l$services[i];
      final lOther$services$entry = lOther$services[i];
      if (l$services$entry != lOther$services$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFare$getFare$services
    on Query$GetFare$getFare$services {
  CopyWith$Query$GetFare$getFare$services<Query$GetFare$getFare$services>
      get copyWith => CopyWith$Query$GetFare$getFare$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFare$getFare$services<TRes> {
  factory CopyWith$Query$GetFare$getFare$services(
    Query$GetFare$getFare$services instance,
    TRes Function(Query$GetFare$getFare$services) then,
  ) = _CopyWithImpl$Query$GetFare$getFare$services;

  factory CopyWith$Query$GetFare$getFare$services.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFare$getFare$services;

  TRes call({
    String? id,
    String? name,
    List<Query$GetFare$getFare$services$services>? services,
  });
  TRes services(
      Iterable<Query$GetFare$getFare$services$services> Function(
              Iterable<
                  CopyWith$Query$GetFare$getFare$services$services<
                      Query$GetFare$getFare$services$services>>)
          _fn);
}

class _CopyWithImpl$Query$GetFare$getFare$services<TRes>
    implements CopyWith$Query$GetFare$getFare$services<TRes> {
  _CopyWithImpl$Query$GetFare$getFare$services(
    this._instance,
    this._then,
  );

  final Query$GetFare$getFare$services _instance;

  final TRes Function(Query$GetFare$getFare$services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? services = _undefined,
  }) =>
      _then(Query$GetFare$getFare$services(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Query$GetFare$getFare$services$services>),
      ));
  TRes services(
          Iterable<Query$GetFare$getFare$services$services> Function(
                  Iterable<
                      CopyWith$Query$GetFare$getFare$services$services<
                          Query$GetFare$getFare$services$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith$Query$GetFare$getFare$services$services(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFare$getFare$services<TRes>
    implements CopyWith$Query$GetFare$getFare$services<TRes> {
  _CopyWithStubImpl$Query$GetFare$getFare$services(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<Query$GetFare$getFare$services$services>? services,
  }) =>
      _res;
  services(_fn) => _res;
}

class Query$GetFare$getFare$services$services {
  Query$GetFare$getFare$services$services({
    required this.id,
    required this.name,
    this.description,
    this.personCapacity,
    required this.prepayPercent,
    required this.twoWayAvailable,
    required this.media,
    required this.options,
    required this.cost,
    this.costAfterCoupon,
  });

  factory Query$GetFare$getFare$services$services.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$personCapacity = json['personCapacity'];
    final l$prepayPercent = json['prepayPercent'];
    final l$twoWayAvailable = json['twoWayAvailable'];
    final l$media = json['media'];
    final l$options = json['options'];
    final l$cost = json['cost'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    return Query$GetFare$getFare$services$services(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      personCapacity: (l$personCapacity as int?),
      prepayPercent: (l$prepayPercent as int),
      twoWayAvailable: (l$twoWayAvailable as bool),
      media: Query$GetFare$getFare$services$services$media.fromJson(
          (l$media as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Query$GetFare$getFare$services$services$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      cost: (l$cost as num).toDouble(),
      costAfterCoupon: (l$costAfterCoupon as num?)?.toDouble(),
    );
  }

  final String id;

  final String name;

  final String? description;

  final int? personCapacity;

  final int prepayPercent;

  final bool twoWayAvailable;

  final Query$GetFare$getFare$services$services$media media;

  final List<Query$GetFare$getFare$services$services$options> options;

  final double cost;

  final double? costAfterCoupon;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$personCapacity = personCapacity;
    _resultData['personCapacity'] = l$personCapacity;
    final l$prepayPercent = prepayPercent;
    _resultData['prepayPercent'] = l$prepayPercent;
    final l$twoWayAvailable = twoWayAvailable;
    _resultData['twoWayAvailable'] = l$twoWayAvailable;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$cost = cost;
    _resultData['cost'] = l$cost;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$personCapacity = personCapacity;
    final l$prepayPercent = prepayPercent;
    final l$twoWayAvailable = twoWayAvailable;
    final l$media = media;
    final l$options = options;
    final l$cost = cost;
    final l$costAfterCoupon = costAfterCoupon;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$personCapacity,
      l$prepayPercent,
      l$twoWayAvailable,
      l$media,
      Object.hashAll(l$options.map((v) => v)),
      l$cost,
      l$costAfterCoupon,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFare$getFare$services$services) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$personCapacity = personCapacity;
    final lOther$personCapacity = other.personCapacity;
    if (l$personCapacity != lOther$personCapacity) {
      return false;
    }
    final l$prepayPercent = prepayPercent;
    final lOther$prepayPercent = other.prepayPercent;
    if (l$prepayPercent != lOther$prepayPercent) {
      return false;
    }
    final l$twoWayAvailable = twoWayAvailable;
    final lOther$twoWayAvailable = other.twoWayAvailable;
    if (l$twoWayAvailable != lOther$twoWayAvailable) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
        return false;
      }
    }
    final l$cost = cost;
    final lOther$cost = other.cost;
    if (l$cost != lOther$cost) {
      return false;
    }
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFare$getFare$services$services
    on Query$GetFare$getFare$services$services {
  CopyWith$Query$GetFare$getFare$services$services<
          Query$GetFare$getFare$services$services>
      get copyWith => CopyWith$Query$GetFare$getFare$services$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFare$getFare$services$services<TRes> {
  factory CopyWith$Query$GetFare$getFare$services$services(
    Query$GetFare$getFare$services$services instance,
    TRes Function(Query$GetFare$getFare$services$services) then,
  ) = _CopyWithImpl$Query$GetFare$getFare$services$services;

  factory CopyWith$Query$GetFare$getFare$services$services.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFare$getFare$services$services;

  TRes call({
    String? id,
    String? name,
    String? description,
    int? personCapacity,
    int? prepayPercent,
    bool? twoWayAvailable,
    Query$GetFare$getFare$services$services$media? media,
    List<Query$GetFare$getFare$services$services$options>? options,
    double? cost,
    double? costAfterCoupon,
  });
  CopyWith$Query$GetFare$getFare$services$services$media<TRes> get media;
  TRes options(
      Iterable<Query$GetFare$getFare$services$services$options> Function(
              Iterable<
                  CopyWith$Query$GetFare$getFare$services$services$options<
                      Query$GetFare$getFare$services$services$options>>)
          _fn);
}

class _CopyWithImpl$Query$GetFare$getFare$services$services<TRes>
    implements CopyWith$Query$GetFare$getFare$services$services<TRes> {
  _CopyWithImpl$Query$GetFare$getFare$services$services(
    this._instance,
    this._then,
  );

  final Query$GetFare$getFare$services$services _instance;

  final TRes Function(Query$GetFare$getFare$services$services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? personCapacity = _undefined,
    Object? prepayPercent = _undefined,
    Object? twoWayAvailable = _undefined,
    Object? media = _undefined,
    Object? options = _undefined,
    Object? cost = _undefined,
    Object? costAfterCoupon = _undefined,
  }) =>
      _then(Query$GetFare$getFare$services$services(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        personCapacity: personCapacity == _undefined
            ? _instance.personCapacity
            : (personCapacity as int?),
        prepayPercent: prepayPercent == _undefined || prepayPercent == null
            ? _instance.prepayPercent
            : (prepayPercent as int),
        twoWayAvailable:
            twoWayAvailable == _undefined || twoWayAvailable == null
                ? _instance.twoWayAvailable
                : (twoWayAvailable as bool),
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Query$GetFare$getFare$services$services$media),
        options: options == _undefined || options == null
            ? _instance.options
            : (options
                as List<Query$GetFare$getFare$services$services$options>),
        cost: cost == _undefined || cost == null
            ? _instance.cost
            : (cost as double),
        costAfterCoupon: costAfterCoupon == _undefined
            ? _instance.costAfterCoupon
            : (costAfterCoupon as double?),
      ));
  CopyWith$Query$GetFare$getFare$services$services$media<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetFare$getFare$services$services$media(
        local$media, (e) => call(media: e));
  }

  TRes options(
          Iterable<Query$GetFare$getFare$services$services$options> Function(
                  Iterable<
                      CopyWith$Query$GetFare$getFare$services$services$options<
                          Query$GetFare$getFare$services$services$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options.map(
              (e) => CopyWith$Query$GetFare$getFare$services$services$options(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFare$getFare$services$services<TRes>
    implements CopyWith$Query$GetFare$getFare$services$services<TRes> {
  _CopyWithStubImpl$Query$GetFare$getFare$services$services(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    int? personCapacity,
    int? prepayPercent,
    bool? twoWayAvailable,
    Query$GetFare$getFare$services$services$media? media,
    List<Query$GetFare$getFare$services$services$options>? options,
    double? cost,
    double? costAfterCoupon,
  }) =>
      _res;
  CopyWith$Query$GetFare$getFare$services$services$media<TRes> get media =>
      CopyWith$Query$GetFare$getFare$services$services$media.stub(_res);
  options(_fn) => _res;
}

class Query$GetFare$getFare$services$services$media {
  Query$GetFare$getFare$services$services$media({required this.address});

  factory Query$GetFare$getFare$services$services$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetFare$getFare$services$services$media(
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
    if (!(other is Query$GetFare$getFare$services$services$media) ||
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

extension UtilityExtension$Query$GetFare$getFare$services$services$media
    on Query$GetFare$getFare$services$services$media {
  CopyWith$Query$GetFare$getFare$services$services$media<
          Query$GetFare$getFare$services$services$media>
      get copyWith => CopyWith$Query$GetFare$getFare$services$services$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFare$getFare$services$services$media<TRes> {
  factory CopyWith$Query$GetFare$getFare$services$services$media(
    Query$GetFare$getFare$services$services$media instance,
    TRes Function(Query$GetFare$getFare$services$services$media) then,
  ) = _CopyWithImpl$Query$GetFare$getFare$services$services$media;

  factory CopyWith$Query$GetFare$getFare$services$services$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFare$getFare$services$services$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetFare$getFare$services$services$media<TRes>
    implements CopyWith$Query$GetFare$getFare$services$services$media<TRes> {
  _CopyWithImpl$Query$GetFare$getFare$services$services$media(
    this._instance,
    this._then,
  );

  final Query$GetFare$getFare$services$services$media _instance;

  final TRes Function(Query$GetFare$getFare$services$services$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Query$GetFare$getFare$services$services$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Query$GetFare$getFare$services$services$media<TRes>
    implements CopyWith$Query$GetFare$getFare$services$services$media<TRes> {
  _CopyWithStubImpl$Query$GetFare$getFare$services$services$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Query$GetFare$getFare$services$services$options {
  Query$GetFare$getFare$services$services$options({
    required this.id,
    required this.name,
    required this.type,
    this.additionalFee,
    required this.icon,
  });

  factory Query$GetFare$getFare$services$services$options.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$additionalFee = json['additionalFee'];
    final l$icon = json['icon'];
    return Query$GetFare$getFare$services$services$options(
      id: (l$id as String),
      name: (l$name as String),
      type: fromJson$Enum$ServiceOptionType((l$type as String)),
      additionalFee: (l$additionalFee as num?)?.toDouble(),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
    );
  }

  final String id;

  final String name;

  final Enum$ServiceOptionType type;

  final double? additionalFee;

  final Enum$ServiceOptionIcon icon;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ServiceOptionType(l$type);
    final l$additionalFee = additionalFee;
    _resultData['additionalFee'] = l$additionalFee;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$type = type;
    final l$additionalFee = additionalFee;
    final l$icon = icon;
    return Object.hashAll([
      l$id,
      l$name,
      l$type,
      l$additionalFee,
      l$icon,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFare$getFare$services$services$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$additionalFee = additionalFee;
    final lOther$additionalFee = other.additionalFee;
    if (l$additionalFee != lOther$additionalFee) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetFare$getFare$services$services$options
    on Query$GetFare$getFare$services$services$options {
  CopyWith$Query$GetFare$getFare$services$services$options<
          Query$GetFare$getFare$services$services$options>
      get copyWith => CopyWith$Query$GetFare$getFare$services$services$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFare$getFare$services$services$options<TRes> {
  factory CopyWith$Query$GetFare$getFare$services$services$options(
    Query$GetFare$getFare$services$services$options instance,
    TRes Function(Query$GetFare$getFare$services$services$options) then,
  ) = _CopyWithImpl$Query$GetFare$getFare$services$services$options;

  factory CopyWith$Query$GetFare$getFare$services$services$options.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFare$getFare$services$services$options;

  TRes call({
    String? id,
    String? name,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
  });
}

class _CopyWithImpl$Query$GetFare$getFare$services$services$options<TRes>
    implements CopyWith$Query$GetFare$getFare$services$services$options<TRes> {
  _CopyWithImpl$Query$GetFare$getFare$services$services$options(
    this._instance,
    this._then,
  );

  final Query$GetFare$getFare$services$services$options _instance;

  final TRes Function(Query$GetFare$getFare$services$services$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? additionalFee = _undefined,
    Object? icon = _undefined,
  }) =>
      _then(Query$GetFare$getFare$services$services$options(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ServiceOptionType),
        additionalFee: additionalFee == _undefined
            ? _instance.additionalFee
            : (additionalFee as double?),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
      ));
}

class _CopyWithStubImpl$Query$GetFare$getFare$services$services$options<TRes>
    implements CopyWith$Query$GetFare$getFare$services$services$options<TRes> {
  _CopyWithStubImpl$Query$GetFare$getFare$services$services$options(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
  }) =>
      _res;
}

class Variables$Mutation$ApplyCoupon {
  factory Variables$Mutation$ApplyCoupon({required String code}) =>
      Variables$Mutation$ApplyCoupon._({
        r'code': code,
      });

  Variables$Mutation$ApplyCoupon._(this._$data);

  factory Variables$Mutation$ApplyCoupon.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Mutation$ApplyCoupon._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Mutation$ApplyCoupon<Variables$Mutation$ApplyCoupon>
      get copyWith => CopyWith$Variables$Mutation$ApplyCoupon(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ApplyCoupon) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Mutation$ApplyCoupon<TRes> {
  factory CopyWith$Variables$Mutation$ApplyCoupon(
    Variables$Mutation$ApplyCoupon instance,
    TRes Function(Variables$Mutation$ApplyCoupon) then,
  ) = _CopyWithImpl$Variables$Mutation$ApplyCoupon;

  factory CopyWith$Variables$Mutation$ApplyCoupon.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ApplyCoupon;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Mutation$ApplyCoupon<TRes>
    implements CopyWith$Variables$Mutation$ApplyCoupon<TRes> {
  _CopyWithImpl$Variables$Mutation$ApplyCoupon(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ApplyCoupon _instance;

  final TRes Function(Variables$Mutation$ApplyCoupon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) =>
      _then(Variables$Mutation$ApplyCoupon._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ApplyCoupon<TRes>
    implements CopyWith$Variables$Mutation$ApplyCoupon<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ApplyCoupon(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Mutation$ApplyCoupon {
  Mutation$ApplyCoupon({required this.applyCoupon});

  factory Mutation$ApplyCoupon.fromJson(Map<String, dynamic> json) {
    final l$applyCoupon = json['applyCoupon'];
    return Mutation$ApplyCoupon(
        applyCoupon: Fragment$CurrentOrder.fromJson(
            (l$applyCoupon as Map<String, dynamic>)));
  }

  final Fragment$CurrentOrder applyCoupon;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$applyCoupon = applyCoupon;
    _resultData['applyCoupon'] = l$applyCoupon.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$applyCoupon = applyCoupon;
    return Object.hashAll([l$applyCoupon]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ApplyCoupon) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$applyCoupon = applyCoupon;
    final lOther$applyCoupon = other.applyCoupon;
    if (l$applyCoupon != lOther$applyCoupon) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ApplyCoupon on Mutation$ApplyCoupon {
  CopyWith$Mutation$ApplyCoupon<Mutation$ApplyCoupon> get copyWith =>
      CopyWith$Mutation$ApplyCoupon(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ApplyCoupon<TRes> {
  factory CopyWith$Mutation$ApplyCoupon(
    Mutation$ApplyCoupon instance,
    TRes Function(Mutation$ApplyCoupon) then,
  ) = _CopyWithImpl$Mutation$ApplyCoupon;

  factory CopyWith$Mutation$ApplyCoupon.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ApplyCoupon;

  TRes call({Fragment$CurrentOrder? applyCoupon});
  CopyWith$Fragment$CurrentOrder<TRes> get applyCoupon;
}

class _CopyWithImpl$Mutation$ApplyCoupon<TRes>
    implements CopyWith$Mutation$ApplyCoupon<TRes> {
  _CopyWithImpl$Mutation$ApplyCoupon(
    this._instance,
    this._then,
  );

  final Mutation$ApplyCoupon _instance;

  final TRes Function(Mutation$ApplyCoupon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? applyCoupon = _undefined}) => _then(Mutation$ApplyCoupon(
      applyCoupon: applyCoupon == _undefined || applyCoupon == null
          ? _instance.applyCoupon
          : (applyCoupon as Fragment$CurrentOrder)));
  CopyWith$Fragment$CurrentOrder<TRes> get applyCoupon {
    final local$applyCoupon = _instance.applyCoupon;
    return CopyWith$Fragment$CurrentOrder(
        local$applyCoupon, (e) => call(applyCoupon: e));
  }
}

class _CopyWithStubImpl$Mutation$ApplyCoupon<TRes>
    implements CopyWith$Mutation$ApplyCoupon<TRes> {
  _CopyWithStubImpl$Mutation$ApplyCoupon(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? applyCoupon}) => _res;
  CopyWith$Fragment$CurrentOrder<TRes> get applyCoupon =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationApplyCoupon = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ApplyCoupon'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'applyCoupon'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$ApplyCoupon _parserFn$Mutation$ApplyCoupon(
        Map<String, dynamic> data) =>
    Mutation$ApplyCoupon.fromJson(data);
typedef OnMutationCompleted$Mutation$ApplyCoupon = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ApplyCoupon?,
);

class Options$Mutation$ApplyCoupon
    extends graphql.MutationOptions<Mutation$ApplyCoupon> {
  Options$Mutation$ApplyCoupon({
    String? operationName,
    required Variables$Mutation$ApplyCoupon variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ApplyCoupon? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ApplyCoupon? onCompleted,
    graphql.OnMutationUpdate<Mutation$ApplyCoupon>? update,
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
                    data == null ? null : _parserFn$Mutation$ApplyCoupon(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationApplyCoupon,
          parserFn: _parserFn$Mutation$ApplyCoupon,
        );

  final OnMutationCompleted$Mutation$ApplyCoupon? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ApplyCoupon
    extends graphql.WatchQueryOptions<Mutation$ApplyCoupon> {
  WatchOptions$Mutation$ApplyCoupon({
    String? operationName,
    required Variables$Mutation$ApplyCoupon variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ApplyCoupon? typedOptimisticResult,
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
          document: documentNodeMutationApplyCoupon,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ApplyCoupon,
        );
}

extension ClientExtension$Mutation$ApplyCoupon on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ApplyCoupon>> mutate$ApplyCoupon(
          Options$Mutation$ApplyCoupon options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$ApplyCoupon> watchMutation$ApplyCoupon(
          WatchOptions$Mutation$ApplyCoupon options) =>
      this.watchMutation(options);
}

class Mutation$ApplyCoupon$HookResult {
  Mutation$ApplyCoupon$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ApplyCoupon runMutation;

  final graphql.QueryResult<Mutation$ApplyCoupon> result;
}

Mutation$ApplyCoupon$HookResult useMutation$ApplyCoupon(
    [WidgetOptions$Mutation$ApplyCoupon? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ApplyCoupon());
  return Mutation$ApplyCoupon$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ApplyCoupon> useWatchMutation$ApplyCoupon(
        WatchOptions$Mutation$ApplyCoupon options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ApplyCoupon
    extends graphql.MutationOptions<Mutation$ApplyCoupon> {
  WidgetOptions$Mutation$ApplyCoupon({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ApplyCoupon? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ApplyCoupon? onCompleted,
    graphql.OnMutationUpdate<Mutation$ApplyCoupon>? update,
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
                    data == null ? null : _parserFn$Mutation$ApplyCoupon(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationApplyCoupon,
          parserFn: _parserFn$Mutation$ApplyCoupon,
        );

  final OnMutationCompleted$Mutation$ApplyCoupon? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ApplyCoupon
    = graphql.MultiSourceResult<Mutation$ApplyCoupon> Function(
  Variables$Mutation$ApplyCoupon, {
  Object? optimisticResult,
  Mutation$ApplyCoupon? typedOptimisticResult,
});
typedef Builder$Mutation$ApplyCoupon = widgets.Widget Function(
  RunMutation$Mutation$ApplyCoupon,
  graphql.QueryResult<Mutation$ApplyCoupon>?,
);

class Mutation$ApplyCoupon$Widget
    extends graphql_flutter.Mutation<Mutation$ApplyCoupon> {
  Mutation$ApplyCoupon$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ApplyCoupon? options,
    required Builder$Mutation$ApplyCoupon builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ApplyCoupon(),
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

class Variables$Mutation$SendSOS {
  factory Variables$Mutation$SendSOS({
    required String orderId,
    Input$PointInput? location,
  }) =>
      Variables$Mutation$SendSOS._({
        r'orderId': orderId,
        if (location != null) r'location': location,
      });

  Variables$Mutation$SendSOS._(this._$data);

  factory Variables$Mutation$SendSOS.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = l$location == null
          ? null
          : Input$PointInput.fromJson((l$location as Map<String, dynamic>));
    }
    return Variables$Mutation$SendSOS._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);
  Input$PointInput? get location => (_$data['location'] as Input$PointInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SendSOS<Variables$Mutation$SendSOS>
      get copyWith => CopyWith$Variables$Mutation$SendSOS(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SendSOS) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    final l$location = location;
    return Object.hashAll([
      l$orderId,
      _$data.containsKey('location') ? l$location : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SendSOS<TRes> {
  factory CopyWith$Variables$Mutation$SendSOS(
    Variables$Mutation$SendSOS instance,
    TRes Function(Variables$Mutation$SendSOS) then,
  ) = _CopyWithImpl$Variables$Mutation$SendSOS;

  factory CopyWith$Variables$Mutation$SendSOS.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendSOS;

  TRes call({
    String? orderId,
    Input$PointInput? location,
  });
}

class _CopyWithImpl$Variables$Mutation$SendSOS<TRes>
    implements CopyWith$Variables$Mutation$SendSOS<TRes> {
  _CopyWithImpl$Variables$Mutation$SendSOS(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendSOS _instance;

  final TRes Function(Variables$Mutation$SendSOS) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderId = _undefined,
    Object? location = _undefined,
  }) =>
      _then(Variables$Mutation$SendSOS._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
        if (location != _undefined) 'location': (location as Input$PointInput?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendSOS<TRes>
    implements CopyWith$Variables$Mutation$SendSOS<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendSOS(this._res);

  TRes _res;

  call({
    String? orderId,
    Input$PointInput? location,
  }) =>
      _res;
}

class Mutation$SendSOS {
  Mutation$SendSOS({required this.sosSignal});

  factory Mutation$SendSOS.fromJson(Map<String, dynamic> json) {
    final l$sosSignal = json['sosSignal'];
    return Mutation$SendSOS(
        sosSignal: Mutation$SendSOS$sosSignal.fromJson(
            (l$sosSignal as Map<String, dynamic>)));
  }

  final Mutation$SendSOS$sosSignal sosSignal;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sosSignal = sosSignal;
    _resultData['sosSignal'] = l$sosSignal.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sosSignal = sosSignal;
    return Object.hashAll([l$sosSignal]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendSOS) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sosSignal = sosSignal;
    final lOther$sosSignal = other.sosSignal;
    if (l$sosSignal != lOther$sosSignal) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendSOS on Mutation$SendSOS {
  CopyWith$Mutation$SendSOS<Mutation$SendSOS> get copyWith =>
      CopyWith$Mutation$SendSOS(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendSOS<TRes> {
  factory CopyWith$Mutation$SendSOS(
    Mutation$SendSOS instance,
    TRes Function(Mutation$SendSOS) then,
  ) = _CopyWithImpl$Mutation$SendSOS;

  factory CopyWith$Mutation$SendSOS.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendSOS;

  TRes call({Mutation$SendSOS$sosSignal? sosSignal});
  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal;
}

class _CopyWithImpl$Mutation$SendSOS<TRes>
    implements CopyWith$Mutation$SendSOS<TRes> {
  _CopyWithImpl$Mutation$SendSOS(
    this._instance,
    this._then,
  );

  final Mutation$SendSOS _instance;

  final TRes Function(Mutation$SendSOS) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sosSignal = _undefined}) => _then(Mutation$SendSOS(
      sosSignal: sosSignal == _undefined || sosSignal == null
          ? _instance.sosSignal
          : (sosSignal as Mutation$SendSOS$sosSignal)));
  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal {
    final local$sosSignal = _instance.sosSignal;
    return CopyWith$Mutation$SendSOS$sosSignal(
        local$sosSignal, (e) => call(sosSignal: e));
  }
}

class _CopyWithStubImpl$Mutation$SendSOS<TRes>
    implements CopyWith$Mutation$SendSOS<TRes> {
  _CopyWithStubImpl$Mutation$SendSOS(this._res);

  TRes _res;

  call({Mutation$SendSOS$sosSignal? sosSignal}) => _res;
  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal =>
      CopyWith$Mutation$SendSOS$sosSignal.stub(_res);
}

const documentNodeMutationSendSOS = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendSOS'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'location')),
        type: NamedTypeNode(
          name: NameNode(value: 'PointInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sosSignal'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
            value: VariableNode(name: NameNode(value: 'orderId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'location'),
            value: VariableNode(name: NameNode(value: 'location')),
          ),
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
Mutation$SendSOS _parserFn$Mutation$SendSOS(Map<String, dynamic> data) =>
    Mutation$SendSOS.fromJson(data);
typedef OnMutationCompleted$Mutation$SendSOS = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendSOS?,
);

class Options$Mutation$SendSOS
    extends graphql.MutationOptions<Mutation$SendSOS> {
  Options$Mutation$SendSOS({
    String? operationName,
    required Variables$Mutation$SendSOS variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendSOS? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendSOS? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendSOS>? update,
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
                    data == null ? null : _parserFn$Mutation$SendSOS(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendSOS,
          parserFn: _parserFn$Mutation$SendSOS,
        );

  final OnMutationCompleted$Mutation$SendSOS? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendSOS
    extends graphql.WatchQueryOptions<Mutation$SendSOS> {
  WatchOptions$Mutation$SendSOS({
    String? operationName,
    required Variables$Mutation$SendSOS variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendSOS? typedOptimisticResult,
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
          document: documentNodeMutationSendSOS,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendSOS,
        );
}

extension ClientExtension$Mutation$SendSOS on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendSOS>> mutate$SendSOS(
          Options$Mutation$SendSOS options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendSOS> watchMutation$SendSOS(
          WatchOptions$Mutation$SendSOS options) =>
      this.watchMutation(options);
}

class Mutation$SendSOS$HookResult {
  Mutation$SendSOS$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SendSOS runMutation;

  final graphql.QueryResult<Mutation$SendSOS> result;
}

Mutation$SendSOS$HookResult useMutation$SendSOS(
    [WidgetOptions$Mutation$SendSOS? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$SendSOS());
  return Mutation$SendSOS$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SendSOS> useWatchMutation$SendSOS(
        WatchOptions$Mutation$SendSOS options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SendSOS
    extends graphql.MutationOptions<Mutation$SendSOS> {
  WidgetOptions$Mutation$SendSOS({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendSOS? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendSOS? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendSOS>? update,
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
                    data == null ? null : _parserFn$Mutation$SendSOS(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendSOS,
          parserFn: _parserFn$Mutation$SendSOS,
        );

  final OnMutationCompleted$Mutation$SendSOS? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SendSOS
    = graphql.MultiSourceResult<Mutation$SendSOS> Function(
  Variables$Mutation$SendSOS, {
  Object? optimisticResult,
  Mutation$SendSOS? typedOptimisticResult,
});
typedef Builder$Mutation$SendSOS = widgets.Widget Function(
  RunMutation$Mutation$SendSOS,
  graphql.QueryResult<Mutation$SendSOS>?,
);

class Mutation$SendSOS$Widget
    extends graphql_flutter.Mutation<Mutation$SendSOS> {
  Mutation$SendSOS$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SendSOS? options,
    required Builder$Mutation$SendSOS builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SendSOS(),
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

class Mutation$SendSOS$sosSignal {
  Mutation$SendSOS$sosSignal({required this.id});

  factory Mutation$SendSOS$sosSignal.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$SendSOS$sosSignal(id: (l$id as String));
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
    if (!(other is Mutation$SendSOS$sosSignal) ||
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

extension UtilityExtension$Mutation$SendSOS$sosSignal
    on Mutation$SendSOS$sosSignal {
  CopyWith$Mutation$SendSOS$sosSignal<Mutation$SendSOS$sosSignal>
      get copyWith => CopyWith$Mutation$SendSOS$sosSignal(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  factory CopyWith$Mutation$SendSOS$sosSignal(
    Mutation$SendSOS$sosSignal instance,
    TRes Function(Mutation$SendSOS$sosSignal) then,
  ) = _CopyWithImpl$Mutation$SendSOS$sosSignal;

  factory CopyWith$Mutation$SendSOS$sosSignal.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendSOS$sosSignal;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$SendSOS$sosSignal<TRes>
    implements CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  _CopyWithImpl$Mutation$SendSOS$sosSignal(
    this._instance,
    this._then,
  );

  final Mutation$SendSOS$sosSignal _instance;

  final TRes Function(Mutation$SendSOS$sosSignal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Mutation$SendSOS$sosSignal(
      id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$SendSOS$sosSignal<TRes>
    implements CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  _CopyWithStubImpl$Mutation$SendSOS$sosSignal(this._res);

  TRes _res;

  call({String? id}) => _res;
}
