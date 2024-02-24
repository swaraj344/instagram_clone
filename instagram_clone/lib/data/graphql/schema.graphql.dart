class Input$CreateUserData {
  factory Input$CreateUserData({
    required String userName,
    String? fullName,
    required String email,
    required String password,
  }) =>
      Input$CreateUserData._({
        r'userName': userName,
        if (fullName != null) r'fullName': fullName,
        r'email': email,
        r'password': password,
      });

  Input$CreateUserData._(this._$data);

  factory Input$CreateUserData.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userName = data['userName'];
    result$data['userName'] = (l$userName as String);
    if (data.containsKey('fullName')) {
      final l$fullName = data['fullName'];
      result$data['fullName'] = (l$fullName as String?);
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$CreateUserData._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userName => (_$data['userName'] as String);

  String? get fullName => (_$data['fullName'] as String?);

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userName = userName;
    result$data['userName'] = l$userName;
    if (_$data.containsKey('fullName')) {
      final l$fullName = fullName;
      result$data['fullName'] = l$fullName;
    }
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$CreateUserData<Input$CreateUserData> get copyWith =>
      CopyWith$Input$CreateUserData(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateUserData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (_$data.containsKey('fullName') !=
        other._$data.containsKey('fullName')) {
      return false;
    }
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userName = userName;
    final l$fullName = fullName;
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$userName,
      _$data.containsKey('fullName') ? l$fullName : const {},
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$CreateUserData<TRes> {
  factory CopyWith$Input$CreateUserData(
    Input$CreateUserData instance,
    TRes Function(Input$CreateUserData) then,
  ) = _CopyWithImpl$Input$CreateUserData;

  factory CopyWith$Input$CreateUserData.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUserData;

  TRes call({
    String? userName,
    String? fullName,
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$CreateUserData<TRes>
    implements CopyWith$Input$CreateUserData<TRes> {
  _CopyWithImpl$Input$CreateUserData(
    this._instance,
    this._then,
  );

  final Input$CreateUserData _instance;

  final TRes Function(Input$CreateUserData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? fullName = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$CreateUserData._({
        ..._instance._$data,
        if (userName != _undefined && userName != null)
          'userName': (userName as String),
        if (fullName != _undefined) 'fullName': (fullName as String?),
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$CreateUserData<TRes>
    implements CopyWith$Input$CreateUserData<TRes> {
  _CopyWithStubImpl$Input$CreateUserData(this._res);

  TRes _res;

  call({
    String? userName,
    String? fullName,
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$CreatePostData {
  factory Input$CreatePostData({
    String? caption,
    List<String?>? imageUrls,
    String? location,
  }) =>
      Input$CreatePostData._({
        if (caption != null) r'caption': caption,
        if (imageUrls != null) r'imageUrls': imageUrls,
        if (location != null) r'location': location,
      });

  Input$CreatePostData._(this._$data);

  factory Input$CreatePostData.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('caption')) {
      final l$caption = data['caption'];
      result$data['caption'] = (l$caption as String?);
    }
    if (data.containsKey('imageUrls')) {
      final l$imageUrls = data['imageUrls'];
      result$data['imageUrls'] =
          (l$imageUrls as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = (l$location as String?);
    }
    return Input$CreatePostData._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get caption => (_$data['caption'] as String?);

  List<String?>? get imageUrls => (_$data['imageUrls'] as List<String?>?);

  String? get location => (_$data['location'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('caption')) {
      final l$caption = caption;
      result$data['caption'] = l$caption;
    }
    if (_$data.containsKey('imageUrls')) {
      final l$imageUrls = imageUrls;
      result$data['imageUrls'] = l$imageUrls?.map((e) => e).toList();
    }
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location;
    }
    return result$data;
  }

  CopyWith$Input$CreatePostData<Input$CreatePostData> get copyWith =>
      CopyWith$Input$CreatePostData(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreatePostData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$caption = caption;
    final lOther$caption = other.caption;
    if (_$data.containsKey('caption') != other._$data.containsKey('caption')) {
      return false;
    }
    if (l$caption != lOther$caption) {
      return false;
    }
    final l$imageUrls = imageUrls;
    final lOther$imageUrls = other.imageUrls;
    if (_$data.containsKey('imageUrls') !=
        other._$data.containsKey('imageUrls')) {
      return false;
    }
    if (l$imageUrls != null && lOther$imageUrls != null) {
      if (l$imageUrls.length != lOther$imageUrls.length) {
        return false;
      }
      for (int i = 0; i < l$imageUrls.length; i++) {
        final l$imageUrls$entry = l$imageUrls[i];
        final lOther$imageUrls$entry = lOther$imageUrls[i];
        if (l$imageUrls$entry != lOther$imageUrls$entry) {
          return false;
        }
      }
    } else if (l$imageUrls != lOther$imageUrls) {
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
    final l$caption = caption;
    final l$imageUrls = imageUrls;
    final l$location = location;
    return Object.hashAll([
      _$data.containsKey('caption') ? l$caption : const {},
      _$data.containsKey('imageUrls')
          ? l$imageUrls == null
              ? null
              : Object.hashAll(l$imageUrls.map((v) => v))
          : const {},
      _$data.containsKey('location') ? l$location : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreatePostData<TRes> {
  factory CopyWith$Input$CreatePostData(
    Input$CreatePostData instance,
    TRes Function(Input$CreatePostData) then,
  ) = _CopyWithImpl$Input$CreatePostData;

  factory CopyWith$Input$CreatePostData.stub(TRes res) =
      _CopyWithStubImpl$Input$CreatePostData;

  TRes call({
    String? caption,
    List<String?>? imageUrls,
    String? location,
  });
}

class _CopyWithImpl$Input$CreatePostData<TRes>
    implements CopyWith$Input$CreatePostData<TRes> {
  _CopyWithImpl$Input$CreatePostData(
    this._instance,
    this._then,
  );

  final Input$CreatePostData _instance;

  final TRes Function(Input$CreatePostData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? caption = _undefined,
    Object? imageUrls = _undefined,
    Object? location = _undefined,
  }) =>
      _then(Input$CreatePostData._({
        ..._instance._$data,
        if (caption != _undefined) 'caption': (caption as String?),
        if (imageUrls != _undefined) 'imageUrls': (imageUrls as List<String?>?),
        if (location != _undefined) 'location': (location as String?),
      }));
}

class _CopyWithStubImpl$Input$CreatePostData<TRes>
    implements CopyWith$Input$CreatePostData<TRes> {
  _CopyWithStubImpl$Input$CreatePostData(this._res);

  TRes _res;

  call({
    String? caption,
    List<String?>? imageUrls,
    String? location,
  }) =>
      _res;
}

enum Enum$PostMediaType { IMAGE, VIDEO, $unknown }

String toJson$Enum$PostMediaType(Enum$PostMediaType e) {
  switch (e) {
    case Enum$PostMediaType.IMAGE:
      return r'IMAGE';
    case Enum$PostMediaType.VIDEO:
      return r'VIDEO';
    case Enum$PostMediaType.$unknown:
      return r'$unknown';
  }
}

Enum$PostMediaType fromJson$Enum$PostMediaType(String value) {
  switch (value) {
    case r'IMAGE':
      return Enum$PostMediaType.IMAGE;
    case r'VIDEO':
      return Enum$PostMediaType.VIDEO;
    default:
      return Enum$PostMediaType.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
