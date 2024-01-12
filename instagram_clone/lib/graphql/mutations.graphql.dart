import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Mutation$RegisterUser {
  factory Variables$Mutation$RegisterUser(
          {required Input$CreateUserData data}) =>
      Variables$Mutation$RegisterUser._({
        r'data': data,
      });

  Variables$Mutation$RegisterUser._(this._$data);

  factory Variables$Mutation$RegisterUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CreateUserData.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$RegisterUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateUserData get data => (_$data['data'] as Input$CreateUserData);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$RegisterUser<Variables$Mutation$RegisterUser>
      get copyWith => CopyWith$Variables$Mutation$RegisterUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$RegisterUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$RegisterUser<TRes> {
  factory CopyWith$Variables$Mutation$RegisterUser(
    Variables$Mutation$RegisterUser instance,
    TRes Function(Variables$Mutation$RegisterUser) then,
  ) = _CopyWithImpl$Variables$Mutation$RegisterUser;

  factory CopyWith$Variables$Mutation$RegisterUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RegisterUser;

  TRes call({Input$CreateUserData? data});
}

class _CopyWithImpl$Variables$Mutation$RegisterUser<TRes>
    implements CopyWith$Variables$Mutation$RegisterUser<TRes> {
  _CopyWithImpl$Variables$Mutation$RegisterUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RegisterUser _instance;

  final TRes Function(Variables$Mutation$RegisterUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$RegisterUser._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CreateUserData),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RegisterUser<TRes>
    implements CopyWith$Variables$Mutation$RegisterUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RegisterUser(this._res);

  TRes _res;

  call({Input$CreateUserData? data}) => _res;
}

class Mutation$RegisterUser {
  Mutation$RegisterUser({
    this.createUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RegisterUser.fromJson(Map<String, dynamic> json) {
    final l$createUser = json['createUser'];
    final l$$__typename = json['__typename'];
    return Mutation$RegisterUser(
      createUser: l$createUser == null
          ? null
          : Mutation$RegisterUser$createUser.fromJson(
              (l$createUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RegisterUser$createUser? createUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createUser = createUser;
    _resultData['createUser'] = l$createUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createUser = createUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RegisterUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createUser = createUser;
    final lOther$createUser = other.createUser;
    if (l$createUser != lOther$createUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RegisterUser on Mutation$RegisterUser {
  CopyWith$Mutation$RegisterUser<Mutation$RegisterUser> get copyWith =>
      CopyWith$Mutation$RegisterUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RegisterUser<TRes> {
  factory CopyWith$Mutation$RegisterUser(
    Mutation$RegisterUser instance,
    TRes Function(Mutation$RegisterUser) then,
  ) = _CopyWithImpl$Mutation$RegisterUser;

  factory CopyWith$Mutation$RegisterUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RegisterUser;

  TRes call({
    Mutation$RegisterUser$createUser? createUser,
    String? $__typename,
  });
  CopyWith$Mutation$RegisterUser$createUser<TRes> get createUser;
}

class _CopyWithImpl$Mutation$RegisterUser<TRes>
    implements CopyWith$Mutation$RegisterUser<TRes> {
  _CopyWithImpl$Mutation$RegisterUser(
    this._instance,
    this._then,
  );

  final Mutation$RegisterUser _instance;

  final TRes Function(Mutation$RegisterUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RegisterUser(
        createUser: createUser == _undefined
            ? _instance.createUser
            : (createUser as Mutation$RegisterUser$createUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RegisterUser$createUser<TRes> get createUser {
    final local$createUser = _instance.createUser;
    return local$createUser == null
        ? CopyWith$Mutation$RegisterUser$createUser.stub(_then(_instance))
        : CopyWith$Mutation$RegisterUser$createUser(
            local$createUser, (e) => call(createUser: e));
  }
}

class _CopyWithStubImpl$Mutation$RegisterUser<TRes>
    implements CopyWith$Mutation$RegisterUser<TRes> {
  _CopyWithStubImpl$Mutation$RegisterUser(this._res);

  TRes _res;

  call({
    Mutation$RegisterUser$createUser? createUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RegisterUser$createUser<TRes> get createUser =>
      CopyWith$Mutation$RegisterUser$createUser.stub(_res);
}

const documentNodeMutationRegisterUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RegisterUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateUserData'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$RegisterUser _parserFn$Mutation$RegisterUser(
        Map<String, dynamic> data) =>
    Mutation$RegisterUser.fromJson(data);
typedef OnMutationCompleted$Mutation$RegisterUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RegisterUser?,
);

class Options$Mutation$RegisterUser
    extends graphql.MutationOptions<Mutation$RegisterUser> {
  Options$Mutation$RegisterUser({
    String? operationName,
    required Variables$Mutation$RegisterUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RegisterUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RegisterUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$RegisterUser>? update,
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
                    data == null ? null : _parserFn$Mutation$RegisterUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRegisterUser,
          parserFn: _parserFn$Mutation$RegisterUser,
        );

  final OnMutationCompleted$Mutation$RegisterUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RegisterUser
    extends graphql.WatchQueryOptions<Mutation$RegisterUser> {
  WatchOptions$Mutation$RegisterUser({
    String? operationName,
    required Variables$Mutation$RegisterUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RegisterUser? typedOptimisticResult,
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
          document: documentNodeMutationRegisterUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RegisterUser,
        );
}

extension ClientExtension$Mutation$RegisterUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RegisterUser>> mutate$RegisterUser(
          Options$Mutation$RegisterUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$RegisterUser> watchMutation$RegisterUser(
          WatchOptions$Mutation$RegisterUser options) =>
      this.watchMutation(options);
}

class Mutation$RegisterUser$createUser {
  Mutation$RegisterUser$createUser({
    required this.id,
    this.$__typename = 'User',
  });

  factory Mutation$RegisterUser$createUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$RegisterUser$createUser(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RegisterUser$createUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RegisterUser$createUser
    on Mutation$RegisterUser$createUser {
  CopyWith$Mutation$RegisterUser$createUser<Mutation$RegisterUser$createUser>
      get copyWith => CopyWith$Mutation$RegisterUser$createUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RegisterUser$createUser<TRes> {
  factory CopyWith$Mutation$RegisterUser$createUser(
    Mutation$RegisterUser$createUser instance,
    TRes Function(Mutation$RegisterUser$createUser) then,
  ) = _CopyWithImpl$Mutation$RegisterUser$createUser;

  factory CopyWith$Mutation$RegisterUser$createUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RegisterUser$createUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RegisterUser$createUser<TRes>
    implements CopyWith$Mutation$RegisterUser$createUser<TRes> {
  _CopyWithImpl$Mutation$RegisterUser$createUser(
    this._instance,
    this._then,
  );

  final Mutation$RegisterUser$createUser _instance;

  final TRes Function(Mutation$RegisterUser$createUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RegisterUser$createUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RegisterUser$createUser<TRes>
    implements CopyWith$Mutation$RegisterUser$createUser<TRes> {
  _CopyWithStubImpl$Mutation$RegisterUser$createUser(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
