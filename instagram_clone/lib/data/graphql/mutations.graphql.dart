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

class Variables$Mutation$CreatePost {
  factory Variables$Mutation$CreatePost({required Input$CreatePostData data}) =>
      Variables$Mutation$CreatePost._({
        r'data': data,
      });

  Variables$Mutation$CreatePost._(this._$data);

  factory Variables$Mutation$CreatePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CreatePostData.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CreatePost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreatePostData get data => (_$data['data'] as Input$CreatePostData);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePost<Variables$Mutation$CreatePost>
      get copyWith => CopyWith$Variables$Mutation$CreatePost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreatePost) ||
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

abstract class CopyWith$Variables$Mutation$CreatePost<TRes> {
  factory CopyWith$Variables$Mutation$CreatePost(
    Variables$Mutation$CreatePost instance,
    TRes Function(Variables$Mutation$CreatePost) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePost;

  factory CopyWith$Variables$Mutation$CreatePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePost;

  TRes call({Input$CreatePostData? data});
}

class _CopyWithImpl$Variables$Mutation$CreatePost<TRes>
    implements CopyWith$Variables$Mutation$CreatePost<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePost _instance;

  final TRes Function(Variables$Mutation$CreatePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CreatePost._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CreatePostData),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreatePost<TRes>
    implements CopyWith$Variables$Mutation$CreatePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePost(this._res);

  TRes _res;

  call({Input$CreatePostData? data}) => _res;
}

class Mutation$CreatePost {
  Mutation$CreatePost({
    this.createPost,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreatePost.fromJson(Map<String, dynamic> json) {
    final l$createPost = json['createPost'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePost(
      createPost: l$createPost == null
          ? null
          : Mutation$CreatePost$createPost.fromJson(
              (l$createPost as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreatePost$createPost? createPost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPost = createPost;
    _resultData['createPost'] = l$createPost?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPost = createPost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createPost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPost = createPost;
    final lOther$createPost = other.createPost;
    if (l$createPost != lOther$createPost) {
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

extension UtilityExtension$Mutation$CreatePost on Mutation$CreatePost {
  CopyWith$Mutation$CreatePost<Mutation$CreatePost> get copyWith =>
      CopyWith$Mutation$CreatePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreatePost<TRes> {
  factory CopyWith$Mutation$CreatePost(
    Mutation$CreatePost instance,
    TRes Function(Mutation$CreatePost) then,
  ) = _CopyWithImpl$Mutation$CreatePost;

  factory CopyWith$Mutation$CreatePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePost;

  TRes call({
    Mutation$CreatePost$createPost? createPost,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePost$createPost<TRes> get createPost;
}

class _CopyWithImpl$Mutation$CreatePost<TRes>
    implements CopyWith$Mutation$CreatePost<TRes> {
  _CopyWithImpl$Mutation$CreatePost(
    this._instance,
    this._then,
  );

  final Mutation$CreatePost _instance;

  final TRes Function(Mutation$CreatePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePost(
        createPost: createPost == _undefined
            ? _instance.createPost
            : (createPost as Mutation$CreatePost$createPost?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreatePost$createPost<TRes> get createPost {
    final local$createPost = _instance.createPost;
    return local$createPost == null
        ? CopyWith$Mutation$CreatePost$createPost.stub(_then(_instance))
        : CopyWith$Mutation$CreatePost$createPost(
            local$createPost, (e) => call(createPost: e));
  }
}

class _CopyWithStubImpl$Mutation$CreatePost<TRes>
    implements CopyWith$Mutation$CreatePost<TRes> {
  _CopyWithStubImpl$Mutation$CreatePost(this._res);

  TRes _res;

  call({
    Mutation$CreatePost$createPost? createPost,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreatePost$createPost<TRes> get createPost =>
      CopyWith$Mutation$CreatePost$createPost.stub(_res);
}

const documentNodeMutationCreatePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreatePostData'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPost'),
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
Mutation$CreatePost _parserFn$Mutation$CreatePost(Map<String, dynamic> data) =>
    Mutation$CreatePost.fromJson(data);
typedef OnMutationCompleted$Mutation$CreatePost = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreatePost?,
);

class Options$Mutation$CreatePost
    extends graphql.MutationOptions<Mutation$CreatePost> {
  Options$Mutation$CreatePost({
    String? operationName,
    required Variables$Mutation$CreatePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePost>? update,
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
                    data == null ? null : _parserFn$Mutation$CreatePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePost,
          parserFn: _parserFn$Mutation$CreatePost,
        );

  final OnMutationCompleted$Mutation$CreatePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreatePost
    extends graphql.WatchQueryOptions<Mutation$CreatePost> {
  WatchOptions$Mutation$CreatePost({
    String? operationName,
    required Variables$Mutation$CreatePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePost? typedOptimisticResult,
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
          document: documentNodeMutationCreatePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreatePost,
        );
}

extension ClientExtension$Mutation$CreatePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreatePost>> mutate$CreatePost(
          Options$Mutation$CreatePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreatePost> watchMutation$CreatePost(
          WatchOptions$Mutation$CreatePost options) =>
      this.watchMutation(options);
}

class Mutation$CreatePost$createPost {
  Mutation$CreatePost$createPost({
    required this.id,
    this.$__typename = 'Post',
  });

  factory Mutation$CreatePost$createPost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePost$createPost(
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
    if (!(other is Mutation$CreatePost$createPost) ||
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

extension UtilityExtension$Mutation$CreatePost$createPost
    on Mutation$CreatePost$createPost {
  CopyWith$Mutation$CreatePost$createPost<Mutation$CreatePost$createPost>
      get copyWith => CopyWith$Mutation$CreatePost$createPost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePost$createPost<TRes> {
  factory CopyWith$Mutation$CreatePost$createPost(
    Mutation$CreatePost$createPost instance,
    TRes Function(Mutation$CreatePost$createPost) then,
  ) = _CopyWithImpl$Mutation$CreatePost$createPost;

  factory CopyWith$Mutation$CreatePost$createPost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePost$createPost;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreatePost$createPost<TRes>
    implements CopyWith$Mutation$CreatePost$createPost<TRes> {
  _CopyWithImpl$Mutation$CreatePost$createPost(
    this._instance,
    this._then,
  );

  final Mutation$CreatePost$createPost _instance;

  final TRes Function(Mutation$CreatePost$createPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePost$createPost(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreatePost$createPost<TRes>
    implements CopyWith$Mutation$CreatePost$createPost<TRes> {
  _CopyWithStubImpl$Mutation$CreatePost$createPost(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$LikePost {
  factory Variables$Mutation$LikePost({required String postId}) =>
      Variables$Mutation$LikePost._({
        r'postId': postId,
      });

  Variables$Mutation$LikePost._(this._$data);

  factory Variables$Mutation$LikePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postId = data['postId'];
    result$data['postId'] = (l$postId as String);
    return Variables$Mutation$LikePost._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postId => (_$data['postId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postId = postId;
    result$data['postId'] = l$postId;
    return result$data;
  }

  CopyWith$Variables$Mutation$LikePost<Variables$Mutation$LikePost>
      get copyWith => CopyWith$Variables$Mutation$LikePost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$LikePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$postId = postId;
    final lOther$postId = other.postId;
    if (l$postId != lOther$postId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postId = postId;
    return Object.hashAll([l$postId]);
  }
}

abstract class CopyWith$Variables$Mutation$LikePost<TRes> {
  factory CopyWith$Variables$Mutation$LikePost(
    Variables$Mutation$LikePost instance,
    TRes Function(Variables$Mutation$LikePost) then,
  ) = _CopyWithImpl$Variables$Mutation$LikePost;

  factory CopyWith$Variables$Mutation$LikePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$LikePost;

  TRes call({String? postId});
}

class _CopyWithImpl$Variables$Mutation$LikePost<TRes>
    implements CopyWith$Variables$Mutation$LikePost<TRes> {
  _CopyWithImpl$Variables$Mutation$LikePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$LikePost _instance;

  final TRes Function(Variables$Mutation$LikePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? postId = _undefined}) =>
      _then(Variables$Mutation$LikePost._({
        ..._instance._$data,
        if (postId != _undefined && postId != null)
          'postId': (postId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$LikePost<TRes>
    implements CopyWith$Variables$Mutation$LikePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$LikePost(this._res);

  TRes _res;

  call({String? postId}) => _res;
}

class Mutation$LikePost {
  Mutation$LikePost({
    this.likePost,
    this.$__typename = 'Mutation',
  });

  factory Mutation$LikePost.fromJson(Map<String, dynamic> json) {
    final l$likePost = json['likePost'];
    final l$$__typename = json['__typename'];
    return Mutation$LikePost(
      likePost: l$likePost == null
          ? null
          : Mutation$LikePost$likePost.fromJson(
              (l$likePost as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$LikePost$likePost? likePost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$likePost = likePost;
    _resultData['likePost'] = l$likePost?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$likePost = likePost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$likePost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LikePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$likePost = likePost;
    final lOther$likePost = other.likePost;
    if (l$likePost != lOther$likePost) {
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

extension UtilityExtension$Mutation$LikePost on Mutation$LikePost {
  CopyWith$Mutation$LikePost<Mutation$LikePost> get copyWith =>
      CopyWith$Mutation$LikePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LikePost<TRes> {
  factory CopyWith$Mutation$LikePost(
    Mutation$LikePost instance,
    TRes Function(Mutation$LikePost) then,
  ) = _CopyWithImpl$Mutation$LikePost;

  factory CopyWith$Mutation$LikePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LikePost;

  TRes call({
    Mutation$LikePost$likePost? likePost,
    String? $__typename,
  });
  CopyWith$Mutation$LikePost$likePost<TRes> get likePost;
}

class _CopyWithImpl$Mutation$LikePost<TRes>
    implements CopyWith$Mutation$LikePost<TRes> {
  _CopyWithImpl$Mutation$LikePost(
    this._instance,
    this._then,
  );

  final Mutation$LikePost _instance;

  final TRes Function(Mutation$LikePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? likePost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LikePost(
        likePost: likePost == _undefined
            ? _instance.likePost
            : (likePost as Mutation$LikePost$likePost?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$LikePost$likePost<TRes> get likePost {
    final local$likePost = _instance.likePost;
    return local$likePost == null
        ? CopyWith$Mutation$LikePost$likePost.stub(_then(_instance))
        : CopyWith$Mutation$LikePost$likePost(
            local$likePost, (e) => call(likePost: e));
  }
}

class _CopyWithStubImpl$Mutation$LikePost<TRes>
    implements CopyWith$Mutation$LikePost<TRes> {
  _CopyWithStubImpl$Mutation$LikePost(this._res);

  TRes _res;

  call({
    Mutation$LikePost$likePost? likePost,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$LikePost$likePost<TRes> get likePost =>
      CopyWith$Mutation$LikePost$likePost.stub(_res);
}

const documentNodeMutationLikePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'LikePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'postId')),
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
        name: NameNode(value: 'likePost'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'postId'),
            value: VariableNode(name: NameNode(value: 'postId')),
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
            name: NameNode(value: 'caption'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'commentCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'likeCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'mediaUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
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
                name: NameNode(value: 'userName'),
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
                name: NameNode(value: 'profileImageURL'),
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
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'liked'),
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
Mutation$LikePost _parserFn$Mutation$LikePost(Map<String, dynamic> data) =>
    Mutation$LikePost.fromJson(data);
typedef OnMutationCompleted$Mutation$LikePost = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$LikePost?,
);

class Options$Mutation$LikePost
    extends graphql.MutationOptions<Mutation$LikePost> {
  Options$Mutation$LikePost({
    String? operationName,
    required Variables$Mutation$LikePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LikePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LikePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$LikePost>? update,
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
                    data == null ? null : _parserFn$Mutation$LikePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLikePost,
          parserFn: _parserFn$Mutation$LikePost,
        );

  final OnMutationCompleted$Mutation$LikePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$LikePost
    extends graphql.WatchQueryOptions<Mutation$LikePost> {
  WatchOptions$Mutation$LikePost({
    String? operationName,
    required Variables$Mutation$LikePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LikePost? typedOptimisticResult,
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
          document: documentNodeMutationLikePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$LikePost,
        );
}

extension ClientExtension$Mutation$LikePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$LikePost>> mutate$LikePost(
          Options$Mutation$LikePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$LikePost> watchMutation$LikePost(
          WatchOptions$Mutation$LikePost options) =>
      this.watchMutation(options);
}

class Mutation$LikePost$likePost {
  Mutation$LikePost$likePost({
    required this.id,
    this.caption,
    required this.commentCount,
    required this.likeCount,
    required this.mediaUrl,
    required this.user,
    required this.updatedAt,
    required this.liked,
    this.$__typename = 'FeedPost',
  });

  factory Mutation$LikePost$likePost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$caption = json['caption'];
    final l$commentCount = json['commentCount'];
    final l$likeCount = json['likeCount'];
    final l$mediaUrl = json['mediaUrl'];
    final l$user = json['user'];
    final l$updatedAt = json['updatedAt'];
    final l$liked = json['liked'];
    final l$$__typename = json['__typename'];
    return Mutation$LikePost$likePost(
      id: (l$id as String),
      caption: (l$caption as String?),
      commentCount: (l$commentCount as int),
      likeCount: (l$likeCount as int),
      mediaUrl:
          (l$mediaUrl as List<dynamic>).map((e) => (e as String)).toList(),
      user: Mutation$LikePost$likePost$user.fromJson(
          (l$user as Map<String, dynamic>)),
      updatedAt: (l$updatedAt as String),
      liked: (l$liked as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? caption;

  final int commentCount;

  final int likeCount;

  final List<String> mediaUrl;

  final Mutation$LikePost$likePost$user user;

  final String updatedAt;

  final bool liked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$caption = caption;
    _resultData['caption'] = l$caption;
    final l$commentCount = commentCount;
    _resultData['commentCount'] = l$commentCount;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl.map((e) => e).toList();
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$liked = liked;
    _resultData['liked'] = l$liked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$caption = caption;
    final l$commentCount = commentCount;
    final l$likeCount = likeCount;
    final l$mediaUrl = mediaUrl;
    final l$user = user;
    final l$updatedAt = updatedAt;
    final l$liked = liked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$caption,
      l$commentCount,
      l$likeCount,
      Object.hashAll(l$mediaUrl.map((v) => v)),
      l$user,
      l$updatedAt,
      l$liked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LikePost$likePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$caption = caption;
    final lOther$caption = other.caption;
    if (l$caption != lOther$caption) {
      return false;
    }
    final l$commentCount = commentCount;
    final lOther$commentCount = other.commentCount;
    if (l$commentCount != lOther$commentCount) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl.length != lOther$mediaUrl.length) {
      return false;
    }
    for (int i = 0; i < l$mediaUrl.length; i++) {
      final l$mediaUrl$entry = l$mediaUrl[i];
      final lOther$mediaUrl$entry = lOther$mediaUrl[i];
      if (l$mediaUrl$entry != lOther$mediaUrl$entry) {
        return false;
      }
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$liked = liked;
    final lOther$liked = other.liked;
    if (l$liked != lOther$liked) {
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

extension UtilityExtension$Mutation$LikePost$likePost
    on Mutation$LikePost$likePost {
  CopyWith$Mutation$LikePost$likePost<Mutation$LikePost$likePost>
      get copyWith => CopyWith$Mutation$LikePost$likePost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$LikePost$likePost<TRes> {
  factory CopyWith$Mutation$LikePost$likePost(
    Mutation$LikePost$likePost instance,
    TRes Function(Mutation$LikePost$likePost) then,
  ) = _CopyWithImpl$Mutation$LikePost$likePost;

  factory CopyWith$Mutation$LikePost$likePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LikePost$likePost;

  TRes call({
    String? id,
    String? caption,
    int? commentCount,
    int? likeCount,
    List<String>? mediaUrl,
    Mutation$LikePost$likePost$user? user,
    String? updatedAt,
    bool? liked,
    String? $__typename,
  });
  CopyWith$Mutation$LikePost$likePost$user<TRes> get user;
}

class _CopyWithImpl$Mutation$LikePost$likePost<TRes>
    implements CopyWith$Mutation$LikePost$likePost<TRes> {
  _CopyWithImpl$Mutation$LikePost$likePost(
    this._instance,
    this._then,
  );

  final Mutation$LikePost$likePost _instance;

  final TRes Function(Mutation$LikePost$likePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? caption = _undefined,
    Object? commentCount = _undefined,
    Object? likeCount = _undefined,
    Object? mediaUrl = _undefined,
    Object? user = _undefined,
    Object? updatedAt = _undefined,
    Object? liked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LikePost$likePost(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        caption:
            caption == _undefined ? _instance.caption : (caption as String?),
        commentCount: commentCount == _undefined || commentCount == null
            ? _instance.commentCount
            : (commentCount as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        mediaUrl: mediaUrl == _undefined || mediaUrl == null
            ? _instance.mediaUrl
            : (mediaUrl as List<String>),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$LikePost$likePost$user),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as String),
        liked: liked == _undefined || liked == null
            ? _instance.liked
            : (liked as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$LikePost$likePost$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$LikePost$likePost$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$LikePost$likePost<TRes>
    implements CopyWith$Mutation$LikePost$likePost<TRes> {
  _CopyWithStubImpl$Mutation$LikePost$likePost(this._res);

  TRes _res;

  call({
    String? id,
    String? caption,
    int? commentCount,
    int? likeCount,
    List<String>? mediaUrl,
    Mutation$LikePost$likePost$user? user,
    String? updatedAt,
    bool? liked,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$LikePost$likePost$user<TRes> get user =>
      CopyWith$Mutation$LikePost$likePost$user.stub(_res);
}

class Mutation$LikePost$likePost$user {
  Mutation$LikePost$likePost$user({
    required this.id,
    required this.userName,
    required this.fullName,
    this.profileImageURL,
    this.$__typename = 'User',
  });

  factory Mutation$LikePost$likePost$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userName = json['userName'];
    final l$fullName = json['fullName'];
    final l$profileImageURL = json['profileImageURL'];
    final l$$__typename = json['__typename'];
    return Mutation$LikePost$likePost$user(
      id: (l$id as String),
      userName: (l$userName as String),
      fullName: (l$fullName as String),
      profileImageURL: (l$profileImageURL as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userName;

  final String fullName;

  final String? profileImageURL;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$profileImageURL = profileImageURL;
    _resultData['profileImageURL'] = l$profileImageURL;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userName = userName;
    final l$fullName = fullName;
    final l$profileImageURL = profileImageURL;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userName,
      l$fullName,
      l$profileImageURL,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LikePost$likePost$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$profileImageURL = profileImageURL;
    final lOther$profileImageURL = other.profileImageURL;
    if (l$profileImageURL != lOther$profileImageURL) {
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

extension UtilityExtension$Mutation$LikePost$likePost$user
    on Mutation$LikePost$likePost$user {
  CopyWith$Mutation$LikePost$likePost$user<Mutation$LikePost$likePost$user>
      get copyWith => CopyWith$Mutation$LikePost$likePost$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$LikePost$likePost$user<TRes> {
  factory CopyWith$Mutation$LikePost$likePost$user(
    Mutation$LikePost$likePost$user instance,
    TRes Function(Mutation$LikePost$likePost$user) then,
  ) = _CopyWithImpl$Mutation$LikePost$likePost$user;

  factory CopyWith$Mutation$LikePost$likePost$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LikePost$likePost$user;

  TRes call({
    String? id,
    String? userName,
    String? fullName,
    String? profileImageURL,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$LikePost$likePost$user<TRes>
    implements CopyWith$Mutation$LikePost$likePost$user<TRes> {
  _CopyWithImpl$Mutation$LikePost$likePost$user(
    this._instance,
    this._then,
  );

  final Mutation$LikePost$likePost$user _instance;

  final TRes Function(Mutation$LikePost$likePost$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userName = _undefined,
    Object? fullName = _undefined,
    Object? profileImageURL = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LikePost$likePost$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userName: userName == _undefined || userName == null
            ? _instance.userName
            : (userName as String),
        fullName: fullName == _undefined || fullName == null
            ? _instance.fullName
            : (fullName as String),
        profileImageURL: profileImageURL == _undefined
            ? _instance.profileImageURL
            : (profileImageURL as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$LikePost$likePost$user<TRes>
    implements CopyWith$Mutation$LikePost$likePost$user<TRes> {
  _CopyWithStubImpl$Mutation$LikePost$likePost$user(this._res);

  TRes _res;

  call({
    String? id,
    String? userName,
    String? fullName,
    String? profileImageURL,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UnLikePost {
  factory Variables$Mutation$UnLikePost({required String postId}) =>
      Variables$Mutation$UnLikePost._({
        r'postId': postId,
      });

  Variables$Mutation$UnLikePost._(this._$data);

  factory Variables$Mutation$UnLikePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postId = data['postId'];
    result$data['postId'] = (l$postId as String);
    return Variables$Mutation$UnLikePost._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postId => (_$data['postId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postId = postId;
    result$data['postId'] = l$postId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UnLikePost<Variables$Mutation$UnLikePost>
      get copyWith => CopyWith$Variables$Mutation$UnLikePost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UnLikePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$postId = postId;
    final lOther$postId = other.postId;
    if (l$postId != lOther$postId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postId = postId;
    return Object.hashAll([l$postId]);
  }
}

abstract class CopyWith$Variables$Mutation$UnLikePost<TRes> {
  factory CopyWith$Variables$Mutation$UnLikePost(
    Variables$Mutation$UnLikePost instance,
    TRes Function(Variables$Mutation$UnLikePost) then,
  ) = _CopyWithImpl$Variables$Mutation$UnLikePost;

  factory CopyWith$Variables$Mutation$UnLikePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnLikePost;

  TRes call({String? postId});
}

class _CopyWithImpl$Variables$Mutation$UnLikePost<TRes>
    implements CopyWith$Variables$Mutation$UnLikePost<TRes> {
  _CopyWithImpl$Variables$Mutation$UnLikePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnLikePost _instance;

  final TRes Function(Variables$Mutation$UnLikePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? postId = _undefined}) =>
      _then(Variables$Mutation$UnLikePost._({
        ..._instance._$data,
        if (postId != _undefined && postId != null)
          'postId': (postId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UnLikePost<TRes>
    implements CopyWith$Variables$Mutation$UnLikePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnLikePost(this._res);

  TRes _res;

  call({String? postId}) => _res;
}

class Mutation$UnLikePost {
  Mutation$UnLikePost({
    this.unLikePost,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UnLikePost.fromJson(Map<String, dynamic> json) {
    final l$unLikePost = json['unLikePost'];
    final l$$__typename = json['__typename'];
    return Mutation$UnLikePost(
      unLikePost: l$unLikePost == null
          ? null
          : Mutation$UnLikePost$unLikePost.fromJson(
              (l$unLikePost as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnLikePost$unLikePost? unLikePost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unLikePost = unLikePost;
    _resultData['unLikePost'] = l$unLikePost?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unLikePost = unLikePost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unLikePost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnLikePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$unLikePost = unLikePost;
    final lOther$unLikePost = other.unLikePost;
    if (l$unLikePost != lOther$unLikePost) {
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

extension UtilityExtension$Mutation$UnLikePost on Mutation$UnLikePost {
  CopyWith$Mutation$UnLikePost<Mutation$UnLikePost> get copyWith =>
      CopyWith$Mutation$UnLikePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnLikePost<TRes> {
  factory CopyWith$Mutation$UnLikePost(
    Mutation$UnLikePost instance,
    TRes Function(Mutation$UnLikePost) then,
  ) = _CopyWithImpl$Mutation$UnLikePost;

  factory CopyWith$Mutation$UnLikePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnLikePost;

  TRes call({
    Mutation$UnLikePost$unLikePost? unLikePost,
    String? $__typename,
  });
  CopyWith$Mutation$UnLikePost$unLikePost<TRes> get unLikePost;
}

class _CopyWithImpl$Mutation$UnLikePost<TRes>
    implements CopyWith$Mutation$UnLikePost<TRes> {
  _CopyWithImpl$Mutation$UnLikePost(
    this._instance,
    this._then,
  );

  final Mutation$UnLikePost _instance;

  final TRes Function(Mutation$UnLikePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unLikePost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnLikePost(
        unLikePost: unLikePost == _undefined
            ? _instance.unLikePost
            : (unLikePost as Mutation$UnLikePost$unLikePost?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UnLikePost$unLikePost<TRes> get unLikePost {
    final local$unLikePost = _instance.unLikePost;
    return local$unLikePost == null
        ? CopyWith$Mutation$UnLikePost$unLikePost.stub(_then(_instance))
        : CopyWith$Mutation$UnLikePost$unLikePost(
            local$unLikePost, (e) => call(unLikePost: e));
  }
}

class _CopyWithStubImpl$Mutation$UnLikePost<TRes>
    implements CopyWith$Mutation$UnLikePost<TRes> {
  _CopyWithStubImpl$Mutation$UnLikePost(this._res);

  TRes _res;

  call({
    Mutation$UnLikePost$unLikePost? unLikePost,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UnLikePost$unLikePost<TRes> get unLikePost =>
      CopyWith$Mutation$UnLikePost$unLikePost.stub(_res);
}

const documentNodeMutationUnLikePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UnLikePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'postId')),
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
        name: NameNode(value: 'unLikePost'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'postId'),
            value: VariableNode(name: NameNode(value: 'postId')),
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
            name: NameNode(value: 'caption'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'commentCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'likeCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'mediaUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
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
                name: NameNode(value: 'userName'),
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
                name: NameNode(value: 'profileImageURL'),
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
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'liked'),
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
Mutation$UnLikePost _parserFn$Mutation$UnLikePost(Map<String, dynamic> data) =>
    Mutation$UnLikePost.fromJson(data);
typedef OnMutationCompleted$Mutation$UnLikePost = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UnLikePost?,
);

class Options$Mutation$UnLikePost
    extends graphql.MutationOptions<Mutation$UnLikePost> {
  Options$Mutation$UnLikePost({
    String? operationName,
    required Variables$Mutation$UnLikePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnLikePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UnLikePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$UnLikePost>? update,
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
                    data == null ? null : _parserFn$Mutation$UnLikePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnLikePost,
          parserFn: _parserFn$Mutation$UnLikePost,
        );

  final OnMutationCompleted$Mutation$UnLikePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UnLikePost
    extends graphql.WatchQueryOptions<Mutation$UnLikePost> {
  WatchOptions$Mutation$UnLikePost({
    String? operationName,
    required Variables$Mutation$UnLikePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UnLikePost? typedOptimisticResult,
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
          document: documentNodeMutationUnLikePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UnLikePost,
        );
}

extension ClientExtension$Mutation$UnLikePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UnLikePost>> mutate$UnLikePost(
          Options$Mutation$UnLikePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UnLikePost> watchMutation$UnLikePost(
          WatchOptions$Mutation$UnLikePost options) =>
      this.watchMutation(options);
}

class Mutation$UnLikePost$unLikePost {
  Mutation$UnLikePost$unLikePost({
    required this.id,
    this.caption,
    required this.commentCount,
    required this.likeCount,
    required this.mediaUrl,
    required this.user,
    required this.updatedAt,
    required this.liked,
    this.$__typename = 'FeedPost',
  });

  factory Mutation$UnLikePost$unLikePost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$caption = json['caption'];
    final l$commentCount = json['commentCount'];
    final l$likeCount = json['likeCount'];
    final l$mediaUrl = json['mediaUrl'];
    final l$user = json['user'];
    final l$updatedAt = json['updatedAt'];
    final l$liked = json['liked'];
    final l$$__typename = json['__typename'];
    return Mutation$UnLikePost$unLikePost(
      id: (l$id as String),
      caption: (l$caption as String?),
      commentCount: (l$commentCount as int),
      likeCount: (l$likeCount as int),
      mediaUrl:
          (l$mediaUrl as List<dynamic>).map((e) => (e as String)).toList(),
      user: Mutation$UnLikePost$unLikePost$user.fromJson(
          (l$user as Map<String, dynamic>)),
      updatedAt: (l$updatedAt as String),
      liked: (l$liked as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? caption;

  final int commentCount;

  final int likeCount;

  final List<String> mediaUrl;

  final Mutation$UnLikePost$unLikePost$user user;

  final String updatedAt;

  final bool liked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$caption = caption;
    _resultData['caption'] = l$caption;
    final l$commentCount = commentCount;
    _resultData['commentCount'] = l$commentCount;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl.map((e) => e).toList();
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$liked = liked;
    _resultData['liked'] = l$liked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$caption = caption;
    final l$commentCount = commentCount;
    final l$likeCount = likeCount;
    final l$mediaUrl = mediaUrl;
    final l$user = user;
    final l$updatedAt = updatedAt;
    final l$liked = liked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$caption,
      l$commentCount,
      l$likeCount,
      Object.hashAll(l$mediaUrl.map((v) => v)),
      l$user,
      l$updatedAt,
      l$liked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnLikePost$unLikePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$caption = caption;
    final lOther$caption = other.caption;
    if (l$caption != lOther$caption) {
      return false;
    }
    final l$commentCount = commentCount;
    final lOther$commentCount = other.commentCount;
    if (l$commentCount != lOther$commentCount) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl.length != lOther$mediaUrl.length) {
      return false;
    }
    for (int i = 0; i < l$mediaUrl.length; i++) {
      final l$mediaUrl$entry = l$mediaUrl[i];
      final lOther$mediaUrl$entry = lOther$mediaUrl[i];
      if (l$mediaUrl$entry != lOther$mediaUrl$entry) {
        return false;
      }
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$liked = liked;
    final lOther$liked = other.liked;
    if (l$liked != lOther$liked) {
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

extension UtilityExtension$Mutation$UnLikePost$unLikePost
    on Mutation$UnLikePost$unLikePost {
  CopyWith$Mutation$UnLikePost$unLikePost<Mutation$UnLikePost$unLikePost>
      get copyWith => CopyWith$Mutation$UnLikePost$unLikePost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnLikePost$unLikePost<TRes> {
  factory CopyWith$Mutation$UnLikePost$unLikePost(
    Mutation$UnLikePost$unLikePost instance,
    TRes Function(Mutation$UnLikePost$unLikePost) then,
  ) = _CopyWithImpl$Mutation$UnLikePost$unLikePost;

  factory CopyWith$Mutation$UnLikePost$unLikePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnLikePost$unLikePost;

  TRes call({
    String? id,
    String? caption,
    int? commentCount,
    int? likeCount,
    List<String>? mediaUrl,
    Mutation$UnLikePost$unLikePost$user? user,
    String? updatedAt,
    bool? liked,
    String? $__typename,
  });
  CopyWith$Mutation$UnLikePost$unLikePost$user<TRes> get user;
}

class _CopyWithImpl$Mutation$UnLikePost$unLikePost<TRes>
    implements CopyWith$Mutation$UnLikePost$unLikePost<TRes> {
  _CopyWithImpl$Mutation$UnLikePost$unLikePost(
    this._instance,
    this._then,
  );

  final Mutation$UnLikePost$unLikePost _instance;

  final TRes Function(Mutation$UnLikePost$unLikePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? caption = _undefined,
    Object? commentCount = _undefined,
    Object? likeCount = _undefined,
    Object? mediaUrl = _undefined,
    Object? user = _undefined,
    Object? updatedAt = _undefined,
    Object? liked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnLikePost$unLikePost(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        caption:
            caption == _undefined ? _instance.caption : (caption as String?),
        commentCount: commentCount == _undefined || commentCount == null
            ? _instance.commentCount
            : (commentCount as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        mediaUrl: mediaUrl == _undefined || mediaUrl == null
            ? _instance.mediaUrl
            : (mediaUrl as List<String>),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$UnLikePost$unLikePost$user),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as String),
        liked: liked == _undefined || liked == null
            ? _instance.liked
            : (liked as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UnLikePost$unLikePost$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$UnLikePost$unLikePost$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$UnLikePost$unLikePost<TRes>
    implements CopyWith$Mutation$UnLikePost$unLikePost<TRes> {
  _CopyWithStubImpl$Mutation$UnLikePost$unLikePost(this._res);

  TRes _res;

  call({
    String? id,
    String? caption,
    int? commentCount,
    int? likeCount,
    List<String>? mediaUrl,
    Mutation$UnLikePost$unLikePost$user? user,
    String? updatedAt,
    bool? liked,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UnLikePost$unLikePost$user<TRes> get user =>
      CopyWith$Mutation$UnLikePost$unLikePost$user.stub(_res);
}

class Mutation$UnLikePost$unLikePost$user {
  Mutation$UnLikePost$unLikePost$user({
    required this.id,
    required this.userName,
    required this.fullName,
    this.profileImageURL,
    this.$__typename = 'User',
  });

  factory Mutation$UnLikePost$unLikePost$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userName = json['userName'];
    final l$fullName = json['fullName'];
    final l$profileImageURL = json['profileImageURL'];
    final l$$__typename = json['__typename'];
    return Mutation$UnLikePost$unLikePost$user(
      id: (l$id as String),
      userName: (l$userName as String),
      fullName: (l$fullName as String),
      profileImageURL: (l$profileImageURL as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userName;

  final String fullName;

  final String? profileImageURL;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$profileImageURL = profileImageURL;
    _resultData['profileImageURL'] = l$profileImageURL;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userName = userName;
    final l$fullName = fullName;
    final l$profileImageURL = profileImageURL;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userName,
      l$fullName,
      l$profileImageURL,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnLikePost$unLikePost$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$profileImageURL = profileImageURL;
    final lOther$profileImageURL = other.profileImageURL;
    if (l$profileImageURL != lOther$profileImageURL) {
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

extension UtilityExtension$Mutation$UnLikePost$unLikePost$user
    on Mutation$UnLikePost$unLikePost$user {
  CopyWith$Mutation$UnLikePost$unLikePost$user<
          Mutation$UnLikePost$unLikePost$user>
      get copyWith => CopyWith$Mutation$UnLikePost$unLikePost$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnLikePost$unLikePost$user<TRes> {
  factory CopyWith$Mutation$UnLikePost$unLikePost$user(
    Mutation$UnLikePost$unLikePost$user instance,
    TRes Function(Mutation$UnLikePost$unLikePost$user) then,
  ) = _CopyWithImpl$Mutation$UnLikePost$unLikePost$user;

  factory CopyWith$Mutation$UnLikePost$unLikePost$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnLikePost$unLikePost$user;

  TRes call({
    String? id,
    String? userName,
    String? fullName,
    String? profileImageURL,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UnLikePost$unLikePost$user<TRes>
    implements CopyWith$Mutation$UnLikePost$unLikePost$user<TRes> {
  _CopyWithImpl$Mutation$UnLikePost$unLikePost$user(
    this._instance,
    this._then,
  );

  final Mutation$UnLikePost$unLikePost$user _instance;

  final TRes Function(Mutation$UnLikePost$unLikePost$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userName = _undefined,
    Object? fullName = _undefined,
    Object? profileImageURL = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnLikePost$unLikePost$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userName: userName == _undefined || userName == null
            ? _instance.userName
            : (userName as String),
        fullName: fullName == _undefined || fullName == null
            ? _instance.fullName
            : (fullName as String),
        profileImageURL: profileImageURL == _undefined
            ? _instance.profileImageURL
            : (profileImageURL as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UnLikePost$unLikePost$user<TRes>
    implements CopyWith$Mutation$UnLikePost$unLikePost$user<TRes> {
  _CopyWithStubImpl$Mutation$UnLikePost$unLikePost$user(this._res);

  TRes _res;

  call({
    String? id,
    String? userName,
    String? fullName,
    String? profileImageURL,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeletePost {
  factory Variables$Mutation$DeletePost({required String postId}) =>
      Variables$Mutation$DeletePost._({
        r'postId': postId,
      });

  Variables$Mutation$DeletePost._(this._$data);

  factory Variables$Mutation$DeletePost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postId = data['postId'];
    result$data['postId'] = (l$postId as String);
    return Variables$Mutation$DeletePost._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postId => (_$data['postId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postId = postId;
    result$data['postId'] = l$postId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeletePost<Variables$Mutation$DeletePost>
      get copyWith => CopyWith$Variables$Mutation$DeletePost(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeletePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$postId = postId;
    final lOther$postId = other.postId;
    if (l$postId != lOther$postId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postId = postId;
    return Object.hashAll([l$postId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeletePost<TRes> {
  factory CopyWith$Variables$Mutation$DeletePost(
    Variables$Mutation$DeletePost instance,
    TRes Function(Variables$Mutation$DeletePost) then,
  ) = _CopyWithImpl$Variables$Mutation$DeletePost;

  factory CopyWith$Variables$Mutation$DeletePost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeletePost;

  TRes call({String? postId});
}

class _CopyWithImpl$Variables$Mutation$DeletePost<TRes>
    implements CopyWith$Variables$Mutation$DeletePost<TRes> {
  _CopyWithImpl$Variables$Mutation$DeletePost(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeletePost _instance;

  final TRes Function(Variables$Mutation$DeletePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? postId = _undefined}) =>
      _then(Variables$Mutation$DeletePost._({
        ..._instance._$data,
        if (postId != _undefined && postId != null)
          'postId': (postId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeletePost<TRes>
    implements CopyWith$Variables$Mutation$DeletePost<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeletePost(this._res);

  TRes _res;

  call({String? postId}) => _res;
}

class Mutation$DeletePost {
  Mutation$DeletePost({
    this.deletePost,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeletePost.fromJson(Map<String, dynamic> json) {
    final l$deletePost = json['deletePost'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePost(
      deletePost: l$deletePost == null
          ? null
          : Mutation$DeletePost$deletePost.fromJson(
              (l$deletePost as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeletePost$deletePost? deletePost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deletePost = deletePost;
    _resultData['deletePost'] = l$deletePost?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deletePost = deletePost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deletePost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeletePost) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePost = deletePost;
    final lOther$deletePost = other.deletePost;
    if (l$deletePost != lOther$deletePost) {
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

extension UtilityExtension$Mutation$DeletePost on Mutation$DeletePost {
  CopyWith$Mutation$DeletePost<Mutation$DeletePost> get copyWith =>
      CopyWith$Mutation$DeletePost(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeletePost<TRes> {
  factory CopyWith$Mutation$DeletePost(
    Mutation$DeletePost instance,
    TRes Function(Mutation$DeletePost) then,
  ) = _CopyWithImpl$Mutation$DeletePost;

  factory CopyWith$Mutation$DeletePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeletePost;

  TRes call({
    Mutation$DeletePost$deletePost? deletePost,
    String? $__typename,
  });
  CopyWith$Mutation$DeletePost$deletePost<TRes> get deletePost;
}

class _CopyWithImpl$Mutation$DeletePost<TRes>
    implements CopyWith$Mutation$DeletePost<TRes> {
  _CopyWithImpl$Mutation$DeletePost(
    this._instance,
    this._then,
  );

  final Mutation$DeletePost _instance;

  final TRes Function(Mutation$DeletePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePost = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeletePost(
        deletePost: deletePost == _undefined
            ? _instance.deletePost
            : (deletePost as Mutation$DeletePost$deletePost?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeletePost$deletePost<TRes> get deletePost {
    final local$deletePost = _instance.deletePost;
    return local$deletePost == null
        ? CopyWith$Mutation$DeletePost$deletePost.stub(_then(_instance))
        : CopyWith$Mutation$DeletePost$deletePost(
            local$deletePost, (e) => call(deletePost: e));
  }
}

class _CopyWithStubImpl$Mutation$DeletePost<TRes>
    implements CopyWith$Mutation$DeletePost<TRes> {
  _CopyWithStubImpl$Mutation$DeletePost(this._res);

  TRes _res;

  call({
    Mutation$DeletePost$deletePost? deletePost,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeletePost$deletePost<TRes> get deletePost =>
      CopyWith$Mutation$DeletePost$deletePost.stub(_res);
}

const documentNodeMutationDeletePost = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeletePost'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'postId')),
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
        name: NameNode(value: 'deletePost'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'postId'),
            value: VariableNode(name: NameNode(value: 'postId')),
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
            name: NameNode(value: 'message'),
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
Mutation$DeletePost _parserFn$Mutation$DeletePost(Map<String, dynamic> data) =>
    Mutation$DeletePost.fromJson(data);
typedef OnMutationCompleted$Mutation$DeletePost = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeletePost?,
);

class Options$Mutation$DeletePost
    extends graphql.MutationOptions<Mutation$DeletePost> {
  Options$Mutation$DeletePost({
    String? operationName,
    required Variables$Mutation$DeletePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeletePost? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeletePost? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeletePost>? update,
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
                    data == null ? null : _parserFn$Mutation$DeletePost(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeletePost,
          parserFn: _parserFn$Mutation$DeletePost,
        );

  final OnMutationCompleted$Mutation$DeletePost? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeletePost
    extends graphql.WatchQueryOptions<Mutation$DeletePost> {
  WatchOptions$Mutation$DeletePost({
    String? operationName,
    required Variables$Mutation$DeletePost variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeletePost? typedOptimisticResult,
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
          document: documentNodeMutationDeletePost,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeletePost,
        );
}

extension ClientExtension$Mutation$DeletePost on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeletePost>> mutate$DeletePost(
          Options$Mutation$DeletePost options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeletePost> watchMutation$DeletePost(
          WatchOptions$Mutation$DeletePost options) =>
      this.watchMutation(options);
}

class Mutation$DeletePost$deletePost {
  Mutation$DeletePost$deletePost({
    required this.id,
    this.message,
    this.$__typename = 'DeletePostPayload',
  });

  factory Mutation$DeletePost$deletePost.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePost$deletePost(
      id: (l$id as String),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeletePost$deletePost) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$DeletePost$deletePost
    on Mutation$DeletePost$deletePost {
  CopyWith$Mutation$DeletePost$deletePost<Mutation$DeletePost$deletePost>
      get copyWith => CopyWith$Mutation$DeletePost$deletePost(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeletePost$deletePost<TRes> {
  factory CopyWith$Mutation$DeletePost$deletePost(
    Mutation$DeletePost$deletePost instance,
    TRes Function(Mutation$DeletePost$deletePost) then,
  ) = _CopyWithImpl$Mutation$DeletePost$deletePost;

  factory CopyWith$Mutation$DeletePost$deletePost.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeletePost$deletePost;

  TRes call({
    String? id,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeletePost$deletePost<TRes>
    implements CopyWith$Mutation$DeletePost$deletePost<TRes> {
  _CopyWithImpl$Mutation$DeletePost$deletePost(
    this._instance,
    this._then,
  );

  final Mutation$DeletePost$deletePost _instance;

  final TRes Function(Mutation$DeletePost$deletePost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeletePost$deletePost(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeletePost$deletePost<TRes>
    implements CopyWith$Mutation$DeletePost$deletePost<TRes> {
  _CopyWithStubImpl$Mutation$DeletePost$deletePost(this._res);

  TRes _res;

  call({
    String? id,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateComment {
  factory Variables$Mutation$CreateComment({
    required String postId,
    required String text,
  }) =>
      Variables$Mutation$CreateComment._({
        r'postId': postId,
        r'text': text,
      });

  Variables$Mutation$CreateComment._(this._$data);

  factory Variables$Mutation$CreateComment.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postId = data['postId'];
    result$data['postId'] = (l$postId as String);
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    return Variables$Mutation$CreateComment._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postId => (_$data['postId'] as String);

  String get text => (_$data['text'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postId = postId;
    result$data['postId'] = l$postId;
    final l$text = text;
    result$data['text'] = l$text;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateComment<Variables$Mutation$CreateComment>
      get copyWith => CopyWith$Variables$Mutation$CreateComment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateComment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$postId = postId;
    final lOther$postId = other.postId;
    if (l$postId != lOther$postId) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postId = postId;
    final l$text = text;
    return Object.hashAll([
      l$postId,
      l$text,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateComment<TRes> {
  factory CopyWith$Variables$Mutation$CreateComment(
    Variables$Mutation$CreateComment instance,
    TRes Function(Variables$Mutation$CreateComment) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateComment;

  factory CopyWith$Variables$Mutation$CreateComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateComment;

  TRes call({
    String? postId,
    String? text,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateComment<TRes>
    implements CopyWith$Variables$Mutation$CreateComment<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateComment _instance;

  final TRes Function(Variables$Mutation$CreateComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postId = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Variables$Mutation$CreateComment._({
        ..._instance._$data,
        if (postId != _undefined && postId != null)
          'postId': (postId as String),
        if (text != _undefined && text != null) 'text': (text as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateComment<TRes>
    implements CopyWith$Variables$Mutation$CreateComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateComment(this._res);

  TRes _res;

  call({
    String? postId,
    String? text,
  }) =>
      _res;
}

class Mutation$CreateComment {
  Mutation$CreateComment({
    this.createComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateComment.fromJson(Map<String, dynamic> json) {
    final l$createComment = json['createComment'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateComment(
      createComment: l$createComment == null
          ? null
          : Mutation$CreateComment$createComment.fromJson(
              (l$createComment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateComment$createComment? createComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createComment = createComment;
    _resultData['createComment'] = l$createComment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createComment = createComment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createComment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateComment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createComment = createComment;
    final lOther$createComment = other.createComment;
    if (l$createComment != lOther$createComment) {
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

extension UtilityExtension$Mutation$CreateComment on Mutation$CreateComment {
  CopyWith$Mutation$CreateComment<Mutation$CreateComment> get copyWith =>
      CopyWith$Mutation$CreateComment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateComment<TRes> {
  factory CopyWith$Mutation$CreateComment(
    Mutation$CreateComment instance,
    TRes Function(Mutation$CreateComment) then,
  ) = _CopyWithImpl$Mutation$CreateComment;

  factory CopyWith$Mutation$CreateComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateComment;

  TRes call({
    Mutation$CreateComment$createComment? createComment,
    String? $__typename,
  });
  CopyWith$Mutation$CreateComment$createComment<TRes> get createComment;
}

class _CopyWithImpl$Mutation$CreateComment<TRes>
    implements CopyWith$Mutation$CreateComment<TRes> {
  _CopyWithImpl$Mutation$CreateComment(
    this._instance,
    this._then,
  );

  final Mutation$CreateComment _instance;

  final TRes Function(Mutation$CreateComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createComment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateComment(
        createComment: createComment == _undefined
            ? _instance.createComment
            : (createComment as Mutation$CreateComment$createComment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateComment$createComment<TRes> get createComment {
    final local$createComment = _instance.createComment;
    return local$createComment == null
        ? CopyWith$Mutation$CreateComment$createComment.stub(_then(_instance))
        : CopyWith$Mutation$CreateComment$createComment(
            local$createComment, (e) => call(createComment: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateComment<TRes>
    implements CopyWith$Mutation$CreateComment<TRes> {
  _CopyWithStubImpl$Mutation$CreateComment(this._res);

  TRes _res;

  call({
    Mutation$CreateComment$createComment? createComment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateComment$createComment<TRes> get createComment =>
      CopyWith$Mutation$CreateComment$createComment.stub(_res);
}

const documentNodeMutationCreateComment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateComment'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'postId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'text')),
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
        name: NameNode(value: 'createComment'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'postId'),
            value: VariableNode(name: NameNode(value: 'postId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'text'),
            value: VariableNode(name: NameNode(value: 'text')),
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
          ),
          FieldNode(
            name: NameNode(value: 'text'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'commentedBy'),
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
                name: NameNode(value: 'userName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'profileImageURL'),
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
Mutation$CreateComment _parserFn$Mutation$CreateComment(
        Map<String, dynamic> data) =>
    Mutation$CreateComment.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateComment = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateComment?,
);

class Options$Mutation$CreateComment
    extends graphql.MutationOptions<Mutation$CreateComment> {
  Options$Mutation$CreateComment({
    String? operationName,
    required Variables$Mutation$CreateComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateComment>? update,
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
                        : _parserFn$Mutation$CreateComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateComment,
          parserFn: _parserFn$Mutation$CreateComment,
        );

  final OnMutationCompleted$Mutation$CreateComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateComment
    extends graphql.WatchQueryOptions<Mutation$CreateComment> {
  WatchOptions$Mutation$CreateComment({
    String? operationName,
    required Variables$Mutation$CreateComment variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateComment? typedOptimisticResult,
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
          document: documentNodeMutationCreateComment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateComment,
        );
}

extension ClientExtension$Mutation$CreateComment on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateComment>> mutate$CreateComment(
          Options$Mutation$CreateComment options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateComment> watchMutation$CreateComment(
          WatchOptions$Mutation$CreateComment options) =>
      this.watchMutation(options);
}

class Mutation$CreateComment$createComment {
  Mutation$CreateComment$createComment({
    required this.id,
    this.text,
    required this.commentedBy,
    this.$__typename = 'Comment',
  });

  factory Mutation$CreateComment$createComment.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$commentedBy = json['commentedBy'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateComment$createComment(
      id: (l$id as String),
      text: (l$text as String?),
      commentedBy: Mutation$CreateComment$createComment$commentedBy.fromJson(
          (l$commentedBy as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? text;

  final Mutation$CreateComment$createComment$commentedBy commentedBy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$commentedBy = commentedBy;
    _resultData['commentedBy'] = l$commentedBy.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$commentedBy = commentedBy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$text,
      l$commentedBy,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateComment$createComment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$commentedBy = commentedBy;
    final lOther$commentedBy = other.commentedBy;
    if (l$commentedBy != lOther$commentedBy) {
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

extension UtilityExtension$Mutation$CreateComment$createComment
    on Mutation$CreateComment$createComment {
  CopyWith$Mutation$CreateComment$createComment<
          Mutation$CreateComment$createComment>
      get copyWith => CopyWith$Mutation$CreateComment$createComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateComment$createComment<TRes> {
  factory CopyWith$Mutation$CreateComment$createComment(
    Mutation$CreateComment$createComment instance,
    TRes Function(Mutation$CreateComment$createComment) then,
  ) = _CopyWithImpl$Mutation$CreateComment$createComment;

  factory CopyWith$Mutation$CreateComment$createComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateComment$createComment;

  TRes call({
    String? id,
    String? text,
    Mutation$CreateComment$createComment$commentedBy? commentedBy,
    String? $__typename,
  });
  CopyWith$Mutation$CreateComment$createComment$commentedBy<TRes>
      get commentedBy;
}

class _CopyWithImpl$Mutation$CreateComment$createComment<TRes>
    implements CopyWith$Mutation$CreateComment$createComment<TRes> {
  _CopyWithImpl$Mutation$CreateComment$createComment(
    this._instance,
    this._then,
  );

  final Mutation$CreateComment$createComment _instance;

  final TRes Function(Mutation$CreateComment$createComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? commentedBy = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateComment$createComment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        text: text == _undefined ? _instance.text : (text as String?),
        commentedBy: commentedBy == _undefined || commentedBy == null
            ? _instance.commentedBy
            : (commentedBy as Mutation$CreateComment$createComment$commentedBy),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateComment$createComment$commentedBy<TRes>
      get commentedBy {
    final local$commentedBy = _instance.commentedBy;
    return CopyWith$Mutation$CreateComment$createComment$commentedBy(
        local$commentedBy, (e) => call(commentedBy: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateComment$createComment<TRes>
    implements CopyWith$Mutation$CreateComment$createComment<TRes> {
  _CopyWithStubImpl$Mutation$CreateComment$createComment(this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    Mutation$CreateComment$createComment$commentedBy? commentedBy,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateComment$createComment$commentedBy<TRes>
      get commentedBy =>
          CopyWith$Mutation$CreateComment$createComment$commentedBy.stub(_res);
}

class Mutation$CreateComment$createComment$commentedBy {
  Mutation$CreateComment$createComment$commentedBy({
    required this.id,
    required this.fullName,
    required this.userName,
    this.profileImageURL,
    this.$__typename = 'User',
  });

  factory Mutation$CreateComment$createComment$commentedBy.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$userName = json['userName'];
    final l$profileImageURL = json['profileImageURL'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateComment$createComment$commentedBy(
      id: (l$id as String),
      fullName: (l$fullName as String),
      userName: (l$userName as String),
      profileImageURL: (l$profileImageURL as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String fullName;

  final String userName;

  final String? profileImageURL;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$profileImageURL = profileImageURL;
    _resultData['profileImageURL'] = l$profileImageURL;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$fullName = fullName;
    final l$userName = userName;
    final l$profileImageURL = profileImageURL;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$fullName,
      l$userName,
      l$profileImageURL,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateComment$createComment$commentedBy) ||
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
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$profileImageURL = profileImageURL;
    final lOther$profileImageURL = other.profileImageURL;
    if (l$profileImageURL != lOther$profileImageURL) {
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

extension UtilityExtension$Mutation$CreateComment$createComment$commentedBy
    on Mutation$CreateComment$createComment$commentedBy {
  CopyWith$Mutation$CreateComment$createComment$commentedBy<
          Mutation$CreateComment$createComment$commentedBy>
      get copyWith => CopyWith$Mutation$CreateComment$createComment$commentedBy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateComment$createComment$commentedBy<TRes> {
  factory CopyWith$Mutation$CreateComment$createComment$commentedBy(
    Mutation$CreateComment$createComment$commentedBy instance,
    TRes Function(Mutation$CreateComment$createComment$commentedBy) then,
  ) = _CopyWithImpl$Mutation$CreateComment$createComment$commentedBy;

  factory CopyWith$Mutation$CreateComment$createComment$commentedBy.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateComment$createComment$commentedBy;

  TRes call({
    String? id,
    String? fullName,
    String? userName,
    String? profileImageURL,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateComment$createComment$commentedBy<TRes>
    implements CopyWith$Mutation$CreateComment$createComment$commentedBy<TRes> {
  _CopyWithImpl$Mutation$CreateComment$createComment$commentedBy(
    this._instance,
    this._then,
  );

  final Mutation$CreateComment$createComment$commentedBy _instance;

  final TRes Function(Mutation$CreateComment$createComment$commentedBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? userName = _undefined,
    Object? profileImageURL = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateComment$createComment$commentedBy(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        fullName: fullName == _undefined || fullName == null
            ? _instance.fullName
            : (fullName as String),
        userName: userName == _undefined || userName == null
            ? _instance.userName
            : (userName as String),
        profileImageURL: profileImageURL == _undefined
            ? _instance.profileImageURL
            : (profileImageURL as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateComment$createComment$commentedBy<TRes>
    implements CopyWith$Mutation$CreateComment$createComment$commentedBy<TRes> {
  _CopyWithStubImpl$Mutation$CreateComment$createComment$commentedBy(this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? userName,
    String? profileImageURL,
    String? $__typename,
  }) =>
      _res;
}
