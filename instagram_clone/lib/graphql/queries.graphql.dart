import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$SignInWithEmailAndPassword {
  factory Variables$Query$SignInWithEmailAndPassword({
    required String email,
    String? password,
  }) =>
      Variables$Query$SignInWithEmailAndPassword._({
        r'email': email,
        if (password != null) r'password': password,
      });

  Variables$Query$SignInWithEmailAndPassword._(this._$data);

  factory Variables$Query$SignInWithEmailAndPassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    return Variables$Query$SignInWithEmailAndPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String? get password => (_$data['password'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SignInWithEmailAndPassword<
          Variables$Query$SignInWithEmailAndPassword>
      get copyWith => CopyWith$Variables$Query$SignInWithEmailAndPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SignInWithEmailAndPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      _$data.containsKey('password') ? l$password : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SignInWithEmailAndPassword<TRes> {
  factory CopyWith$Variables$Query$SignInWithEmailAndPassword(
    Variables$Query$SignInWithEmailAndPassword instance,
    TRes Function(Variables$Query$SignInWithEmailAndPassword) then,
  ) = _CopyWithImpl$Variables$Query$SignInWithEmailAndPassword;

  factory CopyWith$Variables$Query$SignInWithEmailAndPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SignInWithEmailAndPassword;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Variables$Query$SignInWithEmailAndPassword<TRes>
    implements CopyWith$Variables$Query$SignInWithEmailAndPassword<TRes> {
  _CopyWithImpl$Variables$Query$SignInWithEmailAndPassword(
    this._instance,
    this._then,
  );

  final Variables$Query$SignInWithEmailAndPassword _instance;

  final TRes Function(Variables$Query$SignInWithEmailAndPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables$Query$SignInWithEmailAndPassword._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined) 'password': (password as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SignInWithEmailAndPassword<TRes>
    implements CopyWith$Variables$Query$SignInWithEmailAndPassword<TRes> {
  _CopyWithStubImpl$Variables$Query$SignInWithEmailAndPassword(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Query$SignInWithEmailAndPassword {
  Query$SignInWithEmailAndPassword({
    this.singinwithEmailPassword,
    this.$__typename = 'Query',
  });

  factory Query$SignInWithEmailAndPassword.fromJson(Map<String, dynamic> json) {
    final l$singinwithEmailPassword = json['singinwithEmailPassword'];
    final l$$__typename = json['__typename'];
    return Query$SignInWithEmailAndPassword(
      singinwithEmailPassword: (l$singinwithEmailPassword as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? singinwithEmailPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$singinwithEmailPassword = singinwithEmailPassword;
    _resultData['singinwithEmailPassword'] = l$singinwithEmailPassword;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$singinwithEmailPassword = singinwithEmailPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$singinwithEmailPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SignInWithEmailAndPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$singinwithEmailPassword = singinwithEmailPassword;
    final lOther$singinwithEmailPassword = other.singinwithEmailPassword;
    if (l$singinwithEmailPassword != lOther$singinwithEmailPassword) {
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

extension UtilityExtension$Query$SignInWithEmailAndPassword
    on Query$SignInWithEmailAndPassword {
  CopyWith$Query$SignInWithEmailAndPassword<Query$SignInWithEmailAndPassword>
      get copyWith => CopyWith$Query$SignInWithEmailAndPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SignInWithEmailAndPassword<TRes> {
  factory CopyWith$Query$SignInWithEmailAndPassword(
    Query$SignInWithEmailAndPassword instance,
    TRes Function(Query$SignInWithEmailAndPassword) then,
  ) = _CopyWithImpl$Query$SignInWithEmailAndPassword;

  factory CopyWith$Query$SignInWithEmailAndPassword.stub(TRes res) =
      _CopyWithStubImpl$Query$SignInWithEmailAndPassword;

  TRes call({
    String? singinwithEmailPassword,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SignInWithEmailAndPassword<TRes>
    implements CopyWith$Query$SignInWithEmailAndPassword<TRes> {
  _CopyWithImpl$Query$SignInWithEmailAndPassword(
    this._instance,
    this._then,
  );

  final Query$SignInWithEmailAndPassword _instance;

  final TRes Function(Query$SignInWithEmailAndPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? singinwithEmailPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SignInWithEmailAndPassword(
        singinwithEmailPassword: singinwithEmailPassword == _undefined
            ? _instance.singinwithEmailPassword
            : (singinwithEmailPassword as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SignInWithEmailAndPassword<TRes>
    implements CopyWith$Query$SignInWithEmailAndPassword<TRes> {
  _CopyWithStubImpl$Query$SignInWithEmailAndPassword(this._res);

  TRes _res;

  call({
    String? singinwithEmailPassword,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerySignInWithEmailAndPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SignInWithEmailAndPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
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
        name: NameNode(value: 'singinwithEmailPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
        ],
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
]);
Query$SignInWithEmailAndPassword _parserFn$Query$SignInWithEmailAndPassword(
        Map<String, dynamic> data) =>
    Query$SignInWithEmailAndPassword.fromJson(data);
typedef OnQueryComplete$Query$SignInWithEmailAndPassword = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$SignInWithEmailAndPassword?,
);

class Options$Query$SignInWithEmailAndPassword
    extends graphql.QueryOptions<Query$SignInWithEmailAndPassword> {
  Options$Query$SignInWithEmailAndPassword({
    String? operationName,
    required Variables$Query$SignInWithEmailAndPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SignInWithEmailAndPassword? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SignInWithEmailAndPassword? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$SignInWithEmailAndPassword(data),
                  ),
          onError: onError,
          document: documentNodeQuerySignInWithEmailAndPassword,
          parserFn: _parserFn$Query$SignInWithEmailAndPassword,
        );

  final OnQueryComplete$Query$SignInWithEmailAndPassword? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SignInWithEmailAndPassword
    extends graphql.WatchQueryOptions<Query$SignInWithEmailAndPassword> {
  WatchOptions$Query$SignInWithEmailAndPassword({
    String? operationName,
    required Variables$Query$SignInWithEmailAndPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SignInWithEmailAndPassword? typedOptimisticResult,
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
          document: documentNodeQuerySignInWithEmailAndPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SignInWithEmailAndPassword,
        );
}

class FetchMoreOptions$Query$SignInWithEmailAndPassword
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SignInWithEmailAndPassword({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SignInWithEmailAndPassword variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySignInWithEmailAndPassword,
        );
}

extension ClientExtension$Query$SignInWithEmailAndPassword
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SignInWithEmailAndPassword>>
      query$SignInWithEmailAndPassword(
              Options$Query$SignInWithEmailAndPassword options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$SignInWithEmailAndPassword>
      watchQuery$SignInWithEmailAndPassword(
              WatchOptions$Query$SignInWithEmailAndPassword options) =>
          this.watchQuery(options);
  void writeQuery$SignInWithEmailAndPassword({
    required Query$SignInWithEmailAndPassword data,
    required Variables$Query$SignInWithEmailAndPassword variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerySignInWithEmailAndPassword),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SignInWithEmailAndPassword? readQuery$SignInWithEmailAndPassword({
    required Variables$Query$SignInWithEmailAndPassword variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerySignInWithEmailAndPassword),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$SignInWithEmailAndPassword.fromJson(result);
  }
}

class Query$GetSessionUser {
  Query$GetSessionUser({
    this.getSessionUser,
    this.$__typename = 'Query',
  });

  factory Query$GetSessionUser.fromJson(Map<String, dynamic> json) {
    final l$getSessionUser = json['getSessionUser'];
    final l$$__typename = json['__typename'];
    return Query$GetSessionUser(
      getSessionUser: l$getSessionUser == null
          ? null
          : Query$GetSessionUser$getSessionUser.fromJson(
              (l$getSessionUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSessionUser$getSessionUser? getSessionUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getSessionUser = getSessionUser;
    _resultData['getSessionUser'] = l$getSessionUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getSessionUser = getSessionUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getSessionUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSessionUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getSessionUser = getSessionUser;
    final lOther$getSessionUser = other.getSessionUser;
    if (l$getSessionUser != lOther$getSessionUser) {
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

extension UtilityExtension$Query$GetSessionUser on Query$GetSessionUser {
  CopyWith$Query$GetSessionUser<Query$GetSessionUser> get copyWith =>
      CopyWith$Query$GetSessionUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSessionUser<TRes> {
  factory CopyWith$Query$GetSessionUser(
    Query$GetSessionUser instance,
    TRes Function(Query$GetSessionUser) then,
  ) = _CopyWithImpl$Query$GetSessionUser;

  factory CopyWith$Query$GetSessionUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSessionUser;

  TRes call({
    Query$GetSessionUser$getSessionUser? getSessionUser,
    String? $__typename,
  });
  CopyWith$Query$GetSessionUser$getSessionUser<TRes> get getSessionUser;
}

class _CopyWithImpl$Query$GetSessionUser<TRes>
    implements CopyWith$Query$GetSessionUser<TRes> {
  _CopyWithImpl$Query$GetSessionUser(
    this._instance,
    this._then,
  );

  final Query$GetSessionUser _instance;

  final TRes Function(Query$GetSessionUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getSessionUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSessionUser(
        getSessionUser: getSessionUser == _undefined
            ? _instance.getSessionUser
            : (getSessionUser as Query$GetSessionUser$getSessionUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetSessionUser$getSessionUser<TRes> get getSessionUser {
    final local$getSessionUser = _instance.getSessionUser;
    return local$getSessionUser == null
        ? CopyWith$Query$GetSessionUser$getSessionUser.stub(_then(_instance))
        : CopyWith$Query$GetSessionUser$getSessionUser(
            local$getSessionUser, (e) => call(getSessionUser: e));
  }
}

class _CopyWithStubImpl$Query$GetSessionUser<TRes>
    implements CopyWith$Query$GetSessionUser<TRes> {
  _CopyWithStubImpl$Query$GetSessionUser(this._res);

  TRes _res;

  call({
    Query$GetSessionUser$getSessionUser? getSessionUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetSessionUser$getSessionUser<TRes> get getSessionUser =>
      CopyWith$Query$GetSessionUser$getSessionUser.stub(_res);
}

const documentNodeQueryGetSessionUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSessionUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getSessionUser'),
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
            name: NameNode(value: 'fullName'),
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
            name: NameNode(value: 'userName'),
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
Query$GetSessionUser _parserFn$Query$GetSessionUser(
        Map<String, dynamic> data) =>
    Query$GetSessionUser.fromJson(data);
typedef OnQueryComplete$Query$GetSessionUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetSessionUser?,
);

class Options$Query$GetSessionUser
    extends graphql.QueryOptions<Query$GetSessionUser> {
  Options$Query$GetSessionUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetSessionUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetSessionUser? onComplete,
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
                    data == null ? null : _parserFn$Query$GetSessionUser(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetSessionUser,
          parserFn: _parserFn$Query$GetSessionUser,
        );

  final OnQueryComplete$Query$GetSessionUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetSessionUser
    extends graphql.WatchQueryOptions<Query$GetSessionUser> {
  WatchOptions$Query$GetSessionUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetSessionUser? typedOptimisticResult,
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
          document: documentNodeQueryGetSessionUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetSessionUser,
        );
}

class FetchMoreOptions$Query$GetSessionUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetSessionUser(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetSessionUser,
        );
}

extension ClientExtension$Query$GetSessionUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetSessionUser>> query$GetSessionUser(
          [Options$Query$GetSessionUser? options]) async =>
      await this.query(options ?? Options$Query$GetSessionUser());
  graphql.ObservableQuery<Query$GetSessionUser> watchQuery$GetSessionUser(
          [WatchOptions$Query$GetSessionUser? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetSessionUser());
  void writeQuery$GetSessionUser({
    required Query$GetSessionUser data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetSessionUser)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetSessionUser? readQuery$GetSessionUser({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetSessionUser)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetSessionUser.fromJson(result);
  }
}

class Query$GetSessionUser$getSessionUser {
  Query$GetSessionUser$getSessionUser({
    required this.id,
    required this.fullName,
    required this.email,
    required this.userName,
    this.$__typename = 'User',
  });

  factory Query$GetSessionUser$getSessionUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$email = json['email'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetSessionUser$getSessionUser(
      id: (l$id as String),
      fullName: (l$fullName as String),
      email: (l$email as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String fullName;

  final String email;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$fullName = fullName;
    final l$email = email;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$fullName,
      l$email,
      l$userName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSessionUser$getSessionUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$GetSessionUser$getSessionUser
    on Query$GetSessionUser$getSessionUser {
  CopyWith$Query$GetSessionUser$getSessionUser<
          Query$GetSessionUser$getSessionUser>
      get copyWith => CopyWith$Query$GetSessionUser$getSessionUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSessionUser$getSessionUser<TRes> {
  factory CopyWith$Query$GetSessionUser$getSessionUser(
    Query$GetSessionUser$getSessionUser instance,
    TRes Function(Query$GetSessionUser$getSessionUser) then,
  ) = _CopyWithImpl$Query$GetSessionUser$getSessionUser;

  factory CopyWith$Query$GetSessionUser$getSessionUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSessionUser$getSessionUser;

  TRes call({
    String? id,
    String? fullName,
    String? email,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSessionUser$getSessionUser<TRes>
    implements CopyWith$Query$GetSessionUser$getSessionUser<TRes> {
  _CopyWithImpl$Query$GetSessionUser$getSessionUser(
    this._instance,
    this._then,
  );

  final Query$GetSessionUser$getSessionUser _instance;

  final TRes Function(Query$GetSessionUser$getSessionUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? email = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSessionUser$getSessionUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        fullName: fullName == _undefined || fullName == null
            ? _instance.fullName
            : (fullName as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        userName: userName == _undefined || userName == null
            ? _instance.userName
            : (userName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSessionUser$getSessionUser<TRes>
    implements CopyWith$Query$GetSessionUser$getSessionUser<TRes> {
  _CopyWithStubImpl$Query$GetSessionUser$getSessionUser(this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? email,
    String? userName,
    String? $__typename,
  }) =>
      _res;
}
