import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetRider {
  Query$GetRider({this.rider});

  factory Query$GetRider.fromJson(Map<String, dynamic> json) {
    final l$rider = json['rider'];
    return Query$GetRider(
        rider: l$rider == null
            ? null
            : Query$GetRider$rider.fromJson((l$rider as Map<String, dynamic>)));
  }

  final Query$GetRider$rider? rider;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rider = rider;
    _resultData['rider'] = l$rider?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rider = rider;
    return Object.hashAll([l$rider]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetRider) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRider on Query$GetRider {
  CopyWith$Query$GetRider<Query$GetRider> get copyWith =>
      CopyWith$Query$GetRider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetRider<TRes> {
  factory CopyWith$Query$GetRider(
    Query$GetRider instance,
    TRes Function(Query$GetRider) then,
  ) = _CopyWithImpl$Query$GetRider;

  factory CopyWith$Query$GetRider.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRider;

  TRes call({Query$GetRider$rider? rider});
  CopyWith$Query$GetRider$rider<TRes> get rider;
}

class _CopyWithImpl$Query$GetRider<TRes>
    implements CopyWith$Query$GetRider<TRes> {
  _CopyWithImpl$Query$GetRider(
    this._instance,
    this._then,
  );

  final Query$GetRider _instance;

  final TRes Function(Query$GetRider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? rider = _undefined}) => _then(Query$GetRider(
      rider: rider == _undefined
          ? _instance.rider
          : (rider as Query$GetRider$rider?)));
  CopyWith$Query$GetRider$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Query$GetRider$rider.stub(_then(_instance))
        : CopyWith$Query$GetRider$rider(local$rider, (e) => call(rider: e));
  }
}

class _CopyWithStubImpl$Query$GetRider<TRes>
    implements CopyWith$Query$GetRider<TRes> {
  _CopyWithStubImpl$Query$GetRider(this._res);

  TRes _res;

  call({Query$GetRider$rider? rider}) => _res;
  CopyWith$Query$GetRider$rider<TRes> get rider =>
      CopyWith$Query$GetRider$rider.stub(_res);
}

const documentNodeQueryGetRider = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetRider'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'rider'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: IntValueNode(value: '1'),
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
        ]),
      )
    ]),
  ),
]);
Query$GetRider _parserFn$Query$GetRider(Map<String, dynamic> data) =>
    Query$GetRider.fromJson(data);
typedef OnQueryComplete$Query$GetRider = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetRider?,
);

class Options$Query$GetRider extends graphql.QueryOptions<Query$GetRider> {
  Options$Query$GetRider({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRider? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetRider? onComplete,
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
                    data == null ? null : _parserFn$Query$GetRider(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetRider,
          parserFn: _parserFn$Query$GetRider,
        );

  final OnQueryComplete$Query$GetRider? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetRider
    extends graphql.WatchQueryOptions<Query$GetRider> {
  WatchOptions$Query$GetRider({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRider? typedOptimisticResult,
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
          document: documentNodeQueryGetRider,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetRider,
        );
}

class FetchMoreOptions$Query$GetRider extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetRider({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetRider,
        );
}

extension ClientExtension$Query$GetRider on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetRider>> query$GetRider(
          [Options$Query$GetRider? options]) async =>
      await this.query(options ?? Options$Query$GetRider());
  graphql.ObservableQuery<Query$GetRider> watchQuery$GetRider(
          [WatchOptions$Query$GetRider? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetRider());
  void writeQuery$GetRider({
    required Query$GetRider data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetRider)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetRider? readQuery$GetRider({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetRider)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetRider.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetRider> useQuery$GetRider(
        [Options$Query$GetRider? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetRider());
graphql.ObservableQuery<Query$GetRider> useWatchQuery$GetRider(
        [WatchOptions$Query$GetRider? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetRider());

class Query$GetRider$Widget extends graphql_flutter.Query<Query$GetRider> {
  Query$GetRider$Widget({
    widgets.Key? key,
    Options$Query$GetRider? options,
    required graphql_flutter.QueryBuilder<Query$GetRider> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetRider(),
          builder: builder,
        );
}

class Query$GetRider$rider {
  Query$GetRider$rider({
    required this.id,
    required this.mobileNumber,
    this.firstName,
    this.lastName,
    this.gender,
    this.email,
    this.media,
  });

  factory Query$GetRider$rider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mobileNumber = json['mobileNumber'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$gender = json['gender'];
    final l$email = json['email'];
    final l$media = json['media'];
    return Query$GetRider$rider(
      id: (l$id as String),
      mobileNumber: (l$mobileNumber as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      gender:
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String)),
      email: (l$email as String?),
      media: l$media == null
          ? null
          : Query$GetRider$rider$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String id;

  final String mobileNumber;

  final String? firstName;

  final String? lastName;

  final Enum$Gender? gender;

  final String? email;

  final Query$GetRider$rider$media? media;

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
    return Object.hashAll([
      l$id,
      l$mobileNumber,
      l$firstName,
      l$lastName,
      l$gender,
      l$email,
      l$media,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetRider$rider) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Query$GetRider$rider on Query$GetRider$rider {
  CopyWith$Query$GetRider$rider<Query$GetRider$rider> get copyWith =>
      CopyWith$Query$GetRider$rider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetRider$rider<TRes> {
  factory CopyWith$Query$GetRider$rider(
    Query$GetRider$rider instance,
    TRes Function(Query$GetRider$rider) then,
  ) = _CopyWithImpl$Query$GetRider$rider;

  factory CopyWith$Query$GetRider$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRider$rider;

  TRes call({
    String? id,
    String? mobileNumber,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
    Query$GetRider$rider$media? media,
  });
  CopyWith$Query$GetRider$rider$media<TRes> get media;
}

class _CopyWithImpl$Query$GetRider$rider<TRes>
    implements CopyWith$Query$GetRider$rider<TRes> {
  _CopyWithImpl$Query$GetRider$rider(
    this._instance,
    this._then,
  );

  final Query$GetRider$rider _instance;

  final TRes Function(Query$GetRider$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mobileNumber = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? gender = _undefined,
    Object? email = _undefined,
    Object? media = _undefined,
  }) =>
      _then(Query$GetRider$rider(
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
            : (media as Query$GetRider$rider$media?),
      ));
  CopyWith$Query$GetRider$rider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetRider$rider$media.stub(_then(_instance))
        : CopyWith$Query$GetRider$rider$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetRider$rider<TRes>
    implements CopyWith$Query$GetRider$rider<TRes> {
  _CopyWithStubImpl$Query$GetRider$rider(this._res);

  TRes _res;

  call({
    String? id,
    String? mobileNumber,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
    Query$GetRider$rider$media? media,
  }) =>
      _res;
  CopyWith$Query$GetRider$rider$media<TRes> get media =>
      CopyWith$Query$GetRider$rider$media.stub(_res);
}

class Query$GetRider$rider$media {
  Query$GetRider$rider$media({required this.address});

  factory Query$GetRider$rider$media.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    return Query$GetRider$rider$media(address: (l$address as String));
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
    if (!(other is Query$GetRider$rider$media) ||
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

extension UtilityExtension$Query$GetRider$rider$media
    on Query$GetRider$rider$media {
  CopyWith$Query$GetRider$rider$media<Query$GetRider$rider$media>
      get copyWith => CopyWith$Query$GetRider$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRider$rider$media<TRes> {
  factory CopyWith$Query$GetRider$rider$media(
    Query$GetRider$rider$media instance,
    TRes Function(Query$GetRider$rider$media) then,
  ) = _CopyWithImpl$Query$GetRider$rider$media;

  factory CopyWith$Query$GetRider$rider$media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRider$rider$media;

  TRes call({String? address});
}

class _CopyWithImpl$Query$GetRider$rider$media<TRes>
    implements CopyWith$Query$GetRider$rider$media<TRes> {
  _CopyWithImpl$Query$GetRider$rider$media(
    this._instance,
    this._then,
  );

  final Query$GetRider$rider$media _instance;

  final TRes Function(Query$GetRider$rider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) => _then(Query$GetRider$rider$media(
      address: address == _undefined || address == null
          ? _instance.address
          : (address as String)));
}

class _CopyWithStubImpl$Query$GetRider$rider$media<TRes>
    implements CopyWith$Query$GetRider$rider$media<TRes> {
  _CopyWithStubImpl$Query$GetRider$rider$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Variables$Mutation$UpdateProfile {
  factory Variables$Mutation$UpdateProfile({
    required String firstName,
    required String lastName,
    Enum$Gender? gender,
    String? email,
  }) =>
      Variables$Mutation$UpdateProfile._({
        r'firstName': firstName,
        r'lastName': lastName,
        if (gender != null) r'gender': gender,
        if (email != null) r'email': email,
      });

  Variables$Mutation$UpdateProfile._(this._$data);

  factory Variables$Mutation$UpdateProfile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    return Variables$Mutation$UpdateProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstName => (_$data['firstName'] as String);
  String get lastName => (_$data['lastName'] as String);
  Enum$Gender? get gender => (_$data['gender'] as Enum$Gender?);
  String? get email => (_$data['email'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$Gender(l$gender);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProfile<Variables$Mutation$UpdateProfile>
      get copyWith => CopyWith$Variables$Mutation$UpdateProfile(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateProfile) ||
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$gender = gender;
    final l$email = email;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('email') ? l$email : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProfile(
    Variables$Mutation$UpdateProfile instance,
    TRes Function(Variables$Mutation$UpdateProfile) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProfile;

  factory CopyWith$Variables$Mutation$UpdateProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProfile;

  TRes call({
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateProfile<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProfile(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProfile _instance;

  final TRes Function(Variables$Mutation$UpdateProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? gender = _undefined,
    Object? email = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProfile._({
        ..._instance._$data,
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (gender != _undefined) 'gender': (gender as Enum$Gender?),
        if (email != _undefined) 'email': (email as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProfile<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProfile(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
  }) =>
      _res;
}

class Mutation$UpdateProfile {
  Mutation$UpdateProfile({required this.updateOneRider});

  factory Mutation$UpdateProfile.fromJson(Map<String, dynamic> json) {
    final l$updateOneRider = json['updateOneRider'];
    return Mutation$UpdateProfile(
        updateOneRider: Mutation$UpdateProfile$updateOneRider.fromJson(
            (l$updateOneRider as Map<String, dynamic>)));
  }

  final Mutation$UpdateProfile$updateOneRider updateOneRider;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneRider = updateOneRider;
    _resultData['updateOneRider'] = l$updateOneRider.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneRider = updateOneRider;
    return Object.hashAll([l$updateOneRider]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProfile) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateProfile on Mutation$UpdateProfile {
  CopyWith$Mutation$UpdateProfile<Mutation$UpdateProfile> get copyWith =>
      CopyWith$Mutation$UpdateProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateProfile<TRes> {
  factory CopyWith$Mutation$UpdateProfile(
    Mutation$UpdateProfile instance,
    TRes Function(Mutation$UpdateProfile) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile;

  factory CopyWith$Mutation$UpdateProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile;

  TRes call({Mutation$UpdateProfile$updateOneRider? updateOneRider});
  CopyWith$Mutation$UpdateProfile$updateOneRider<TRes> get updateOneRider;
}

class _CopyWithImpl$Mutation$UpdateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile _instance;

  final TRes Function(Mutation$UpdateProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneRider = _undefined}) =>
      _then(Mutation$UpdateProfile(
          updateOneRider: updateOneRider == _undefined || updateOneRider == null
              ? _instance.updateOneRider
              : (updateOneRider as Mutation$UpdateProfile$updateOneRider)));
  CopyWith$Mutation$UpdateProfile$updateOneRider<TRes> get updateOneRider {
    final local$updateOneRider = _instance.updateOneRider;
    return CopyWith$Mutation$UpdateProfile$updateOneRider(
        local$updateOneRider, (e) => call(updateOneRider: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile(this._res);

  TRes _res;

  call({Mutation$UpdateProfile$updateOneRider? updateOneRider}) => _res;
  CopyWith$Mutation$UpdateProfile$updateOneRider<TRes> get updateOneRider =>
      CopyWith$Mutation$UpdateProfile$updateOneRider.stub(_res);
}

const documentNodeMutationUpdateProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProfile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gender')),
        type: NamedTypeNode(
          name: NameNode(value: 'Gender'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
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
                    name: NameNode(value: 'firstName'),
                    value: VariableNode(name: NameNode(value: 'firstName')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'lastName'),
                    value: VariableNode(name: NameNode(value: 'lastName')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'gender'),
                    value: VariableNode(name: NameNode(value: 'gender')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'email'),
                    value: VariableNode(name: NameNode(value: 'email')),
                  ),
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
      )
    ]),
  ),
]);
Mutation$UpdateProfile _parserFn$Mutation$UpdateProfile(
        Map<String, dynamic> data) =>
    Mutation$UpdateProfile.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProfile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateProfile?,
);

class Options$Mutation$UpdateProfile
    extends graphql.MutationOptions<Mutation$UpdateProfile> {
  Options$Mutation$UpdateProfile({
    String? operationName,
    required Variables$Mutation$UpdateProfile variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfile? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfile>? update,
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
                        : _parserFn$Mutation$UpdateProfile(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfile,
          parserFn: _parserFn$Mutation$UpdateProfile,
        );

  final OnMutationCompleted$Mutation$UpdateProfile? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProfile
    extends graphql.WatchQueryOptions<Mutation$UpdateProfile> {
  WatchOptions$Mutation$UpdateProfile({
    String? operationName,
    required Variables$Mutation$UpdateProfile variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfile? typedOptimisticResult,
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
          document: documentNodeMutationUpdateProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProfile,
        );
}

extension ClientExtension$Mutation$UpdateProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProfile>> mutate$UpdateProfile(
          Options$Mutation$UpdateProfile options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateProfile> watchMutation$UpdateProfile(
          WatchOptions$Mutation$UpdateProfile options) =>
      this.watchMutation(options);
}

class Mutation$UpdateProfile$HookResult {
  Mutation$UpdateProfile$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateProfile runMutation;

  final graphql.QueryResult<Mutation$UpdateProfile> result;
}

Mutation$UpdateProfile$HookResult useMutation$UpdateProfile(
    [WidgetOptions$Mutation$UpdateProfile? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateProfile());
  return Mutation$UpdateProfile$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateProfile> useWatchMutation$UpdateProfile(
        WatchOptions$Mutation$UpdateProfile options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateProfile
    extends graphql.MutationOptions<Mutation$UpdateProfile> {
  WidgetOptions$Mutation$UpdateProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfile? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfile>? update,
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
                        : _parserFn$Mutation$UpdateProfile(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfile,
          parserFn: _parserFn$Mutation$UpdateProfile,
        );

  final OnMutationCompleted$Mutation$UpdateProfile? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateProfile
    = graphql.MultiSourceResult<Mutation$UpdateProfile> Function(
  Variables$Mutation$UpdateProfile, {
  Object? optimisticResult,
  Mutation$UpdateProfile? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateProfile = widgets.Widget Function(
  RunMutation$Mutation$UpdateProfile,
  graphql.QueryResult<Mutation$UpdateProfile>?,
);

class Mutation$UpdateProfile$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateProfile> {
  Mutation$UpdateProfile$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateProfile? options,
    required Builder$Mutation$UpdateProfile builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateProfile(),
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

class Mutation$UpdateProfile$updateOneRider {
  Mutation$UpdateProfile$updateOneRider({required this.id});

  factory Mutation$UpdateProfile$updateOneRider.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$UpdateProfile$updateOneRider(id: (l$id as String));
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
    if (!(other is Mutation$UpdateProfile$updateOneRider) ||
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

extension UtilityExtension$Mutation$UpdateProfile$updateOneRider
    on Mutation$UpdateProfile$updateOneRider {
  CopyWith$Mutation$UpdateProfile$updateOneRider<
          Mutation$UpdateProfile$updateOneRider>
      get copyWith => CopyWith$Mutation$UpdateProfile$updateOneRider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfile$updateOneRider<TRes> {
  factory CopyWith$Mutation$UpdateProfile$updateOneRider(
    Mutation$UpdateProfile$updateOneRider instance,
    TRes Function(Mutation$UpdateProfile$updateOneRider) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$updateOneRider;

  factory CopyWith$Mutation$UpdateProfile$updateOneRider.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$updateOneRider;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$UpdateProfile$updateOneRider<TRes>
    implements CopyWith$Mutation$UpdateProfile$updateOneRider<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$updateOneRider(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$updateOneRider _instance;

  final TRes Function(Mutation$UpdateProfile$updateOneRider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$UpdateProfile$updateOneRider(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$UpdateProfile$updateOneRider<TRes>
    implements CopyWith$Mutation$UpdateProfile$updateOneRider<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$updateOneRider(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteUser {
  Mutation$DeleteUser({required this.deleteUser});

  factory Mutation$DeleteUser.fromJson(Map<String, dynamic> json) {
    final l$deleteUser = json['deleteUser'];
    return Mutation$DeleteUser(
        deleteUser: Mutation$DeleteUser$deleteUser.fromJson(
            (l$deleteUser as Map<String, dynamic>)));
  }

  final Mutation$DeleteUser$deleteUser deleteUser;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteUser = deleteUser;
    _resultData['deleteUser'] = l$deleteUser.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteUser = deleteUser;
    return Object.hashAll([l$deleteUser]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteUser = deleteUser;
    final lOther$deleteUser = other.deleteUser;
    if (l$deleteUser != lOther$deleteUser) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteUser on Mutation$DeleteUser {
  CopyWith$Mutation$DeleteUser<Mutation$DeleteUser> get copyWith =>
      CopyWith$Mutation$DeleteUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteUser<TRes> {
  factory CopyWith$Mutation$DeleteUser(
    Mutation$DeleteUser instance,
    TRes Function(Mutation$DeleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteUser;

  factory CopyWith$Mutation$DeleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteUser;

  TRes call({Mutation$DeleteUser$deleteUser? deleteUser});
  CopyWith$Mutation$DeleteUser$deleteUser<TRes> get deleteUser;
}

class _CopyWithImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteUser _instance;

  final TRes Function(Mutation$DeleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteUser = _undefined}) => _then(Mutation$DeleteUser(
      deleteUser: deleteUser == _undefined || deleteUser == null
          ? _instance.deleteUser
          : (deleteUser as Mutation$DeleteUser$deleteUser)));
  CopyWith$Mutation$DeleteUser$deleteUser<TRes> get deleteUser {
    final local$deleteUser = _instance.deleteUser;
    return CopyWith$Mutation$DeleteUser$deleteUser(
        local$deleteUser, (e) => call(deleteUser: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteUser(this._res);

  TRes _res;

  call({Mutation$DeleteUser$deleteUser? deleteUser}) => _res;
  CopyWith$Mutation$DeleteUser$deleteUser<TRes> get deleteUser =>
      CopyWith$Mutation$DeleteUser$deleteUser.stub(_res);
}

const documentNodeMutationDeleteUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteUser'),
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
]);
Mutation$DeleteUser _parserFn$Mutation$DeleteUser(Map<String, dynamic> data) =>
    Mutation$DeleteUser.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteUser?,
);

class Options$Mutation$DeleteUser
    extends graphql.MutationOptions<Mutation$DeleteUser> {
  Options$Mutation$DeleteUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteUser>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteUser,
          parserFn: _parserFn$Mutation$DeleteUser,
        );

  final OnMutationCompleted$Mutation$DeleteUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteUser
    extends graphql.WatchQueryOptions<Mutation$DeleteUser> {
  WatchOptions$Mutation$DeleteUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
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
          document: documentNodeMutationDeleteUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteUser,
        );
}

extension ClientExtension$Mutation$DeleteUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteUser>> mutate$DeleteUser(
          [Options$Mutation$DeleteUser? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteUser());
  graphql.ObservableQuery<Mutation$DeleteUser> watchMutation$DeleteUser(
          [WatchOptions$Mutation$DeleteUser? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteUser());
}

class Mutation$DeleteUser$HookResult {
  Mutation$DeleteUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteUser runMutation;

  final graphql.QueryResult<Mutation$DeleteUser> result;
}

Mutation$DeleteUser$HookResult useMutation$DeleteUser(
    [WidgetOptions$Mutation$DeleteUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteUser());
  return Mutation$DeleteUser$HookResult(
    ({optimisticResult, typedOptimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteUser> useWatchMutation$DeleteUser(
        [WatchOptions$Mutation$DeleteUser? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$DeleteUser());

class WidgetOptions$Mutation$DeleteUser
    extends graphql.MutationOptions<Mutation$DeleteUser> {
  WidgetOptions$Mutation$DeleteUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteUser>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteUser,
          parserFn: _parserFn$Mutation$DeleteUser,
        );

  final OnMutationCompleted$Mutation$DeleteUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteUser
    = graphql.MultiSourceResult<Mutation$DeleteUser> Function({
  Object? optimisticResult,
  Mutation$DeleteUser? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteUser = widgets.Widget Function(
  RunMutation$Mutation$DeleteUser,
  graphql.QueryResult<Mutation$DeleteUser>?,
);

class Mutation$DeleteUser$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteUser> {
  Mutation$DeleteUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteUser? options,
    required Builder$Mutation$DeleteUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteUser(),
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

class Mutation$DeleteUser$deleteUser {
  Mutation$DeleteUser$deleteUser({required this.id});

  factory Mutation$DeleteUser$deleteUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$DeleteUser$deleteUser(id: (l$id as String));
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
    if (!(other is Mutation$DeleteUser$deleteUser) ||
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

extension UtilityExtension$Mutation$DeleteUser$deleteUser
    on Mutation$DeleteUser$deleteUser {
  CopyWith$Mutation$DeleteUser$deleteUser<Mutation$DeleteUser$deleteUser>
      get copyWith => CopyWith$Mutation$DeleteUser$deleteUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteUser$deleteUser<TRes> {
  factory CopyWith$Mutation$DeleteUser$deleteUser(
    Mutation$DeleteUser$deleteUser instance,
    TRes Function(Mutation$DeleteUser$deleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteUser$deleteUser;

  factory CopyWith$Mutation$DeleteUser$deleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteUser$deleteUser;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$DeleteUser$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser$deleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteUser$deleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteUser$deleteUser _instance;

  final TRes Function(Mutation$DeleteUser$deleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Mutation$DeleteUser$deleteUser(
      id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$DeleteUser$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser$deleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteUser$deleteUser(this._res);

  TRes _res;

  call({String? id}) => _res;
}
