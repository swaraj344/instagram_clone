// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailVerifiedMeta =
      const VerificationMeta('emailVerified');
  @override
  late final GeneratedColumn<bool> emailVerified = GeneratedColumn<bool>(
      'email_verified', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("email_verified" IN (0, 1))'),
      defaultValue: const Variable(false));
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _profileImageUrlMeta =
      const VerificationMeta('profileImageUrl');
  @override
  late final GeneratedColumn<String> profileImageUrl = GeneratedColumn<String>(
      'profile_image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bioMeta = const VerificationMeta('bio');
  @override
  late final GeneratedColumn<String> bio = GeneratedColumn<String>(
      'bio', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Variable(false));
  static const VerificationMeta _authTokenMeta =
      const VerificationMeta('authToken');
  @override
  late final GeneratedColumn<String> authToken = GeneratedColumn<String>(
      'auth_token', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fullName,
        userName,
        email,
        emailVerified,
        phoneNumber,
        profileImageUrl,
        bio,
        createdAt,
        isActive,
        authToken
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('email_verified')) {
      context.handle(
          _emailVerifiedMeta,
          emailVerified.isAcceptableOrUnknown(
              data['email_verified']!, _emailVerifiedMeta));
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    }
    if (data.containsKey('profile_image_url')) {
      context.handle(
          _profileImageUrlMeta,
          profileImageUrl.isAcceptableOrUnknown(
              data['profile_image_url']!, _profileImageUrlMeta));
    }
    if (data.containsKey('bio')) {
      context.handle(
          _bioMeta, bio.isAcceptableOrUnknown(data['bio']!, _bioMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('auth_token')) {
      context.handle(_authTokenMeta,
          authToken.isAcceptableOrUnknown(data['auth_token']!, _authTokenMeta));
    } else if (isInserting) {
      context.missing(_authTokenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      emailVerified: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}email_verified'])!,
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number']),
      profileImageUrl: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}profile_image_url']),
      bio: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bio']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      authToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}auth_token'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String id;
  final String fullName;
  final String userName;
  final String email;
  final bool emailVerified;
  final String? phoneNumber;
  final String? profileImageUrl;
  final String? bio;
  final DateTime createdAt;
  final bool isActive;
  final String authToken;
  const User(
      {required this.id,
      required this.fullName,
      required this.userName,
      required this.email,
      required this.emailVerified,
      this.phoneNumber,
      this.profileImageUrl,
      this.bio,
      required this.createdAt,
      required this.isActive,
      required this.authToken});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['full_name'] = Variable<String>(fullName);
    map['user_name'] = Variable<String>(userName);
    map['email'] = Variable<String>(email);
    map['email_verified'] = Variable<bool>(emailVerified);
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    if (!nullToAbsent || profileImageUrl != null) {
      map['profile_image_url'] = Variable<String>(profileImageUrl);
    }
    if (!nullToAbsent || bio != null) {
      map['bio'] = Variable<String>(bio);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['is_active'] = Variable<bool>(isActive);
    map['auth_token'] = Variable<String>(authToken);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      fullName: Value(fullName),
      userName: Value(userName),
      email: Value(email),
      emailVerified: Value(emailVerified),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      profileImageUrl: profileImageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(profileImageUrl),
      bio: bio == null && nullToAbsent ? const Value.absent() : Value(bio),
      createdAt: Value(createdAt),
      isActive: Value(isActive),
      authToken: Value(authToken),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      fullName: serializer.fromJson<String>(json['fullName']),
      userName: serializer.fromJson<String>(json['userName']),
      email: serializer.fromJson<String>(json['email']),
      emailVerified: serializer.fromJson<bool>(json['emailVerified']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
      profileImageUrl: serializer.fromJson<String?>(json['profileImageUrl']),
      bio: serializer.fromJson<String?>(json['bio']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      authToken: serializer.fromJson<String>(json['authToken']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fullName': serializer.toJson<String>(fullName),
      'userName': serializer.toJson<String>(userName),
      'email': serializer.toJson<String>(email),
      'emailVerified': serializer.toJson<bool>(emailVerified),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
      'profileImageUrl': serializer.toJson<String?>(profileImageUrl),
      'bio': serializer.toJson<String?>(bio),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'isActive': serializer.toJson<bool>(isActive),
      'authToken': serializer.toJson<String>(authToken),
    };
  }

  User copyWith(
          {String? id,
          String? fullName,
          String? userName,
          String? email,
          bool? emailVerified,
          Value<String?> phoneNumber = const Value.absent(),
          Value<String?> profileImageUrl = const Value.absent(),
          Value<String?> bio = const Value.absent(),
          DateTime? createdAt,
          bool? isActive,
          String? authToken}) =>
      User(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        userName: userName ?? this.userName,
        email: email ?? this.email,
        emailVerified: emailVerified ?? this.emailVerified,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
        profileImageUrl: profileImageUrl.present
            ? profileImageUrl.value
            : this.profileImageUrl,
        bio: bio.present ? bio.value : this.bio,
        createdAt: createdAt ?? this.createdAt,
        isActive: isActive ?? this.isActive,
        authToken: authToken ?? this.authToken,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('userName: $userName, ')
          ..write('email: $email, ')
          ..write('emailVerified: $emailVerified, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('profileImageUrl: $profileImageUrl, ')
          ..write('bio: $bio, ')
          ..write('createdAt: $createdAt, ')
          ..write('isActive: $isActive, ')
          ..write('authToken: $authToken')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, fullName, userName, email, emailVerified,
      phoneNumber, profileImageUrl, bio, createdAt, isActive, authToken);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.userName == this.userName &&
          other.email == this.email &&
          other.emailVerified == this.emailVerified &&
          other.phoneNumber == this.phoneNumber &&
          other.profileImageUrl == this.profileImageUrl &&
          other.bio == this.bio &&
          other.createdAt == this.createdAt &&
          other.isActive == this.isActive &&
          other.authToken == this.authToken);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String> fullName;
  final Value<String> userName;
  final Value<String> email;
  final Value<bool> emailVerified;
  final Value<String?> phoneNumber;
  final Value<String?> profileImageUrl;
  final Value<String?> bio;
  final Value<DateTime> createdAt;
  final Value<bool> isActive;
  final Value<String> authToken;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.userName = const Value.absent(),
    this.email = const Value.absent(),
    this.emailVerified = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.profileImageUrl = const Value.absent(),
    this.bio = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.isActive = const Value.absent(),
    this.authToken = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    required String fullName,
    required String userName,
    required String email,
    this.emailVerified = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.profileImageUrl = const Value.absent(),
    this.bio = const Value.absent(),
    required DateTime createdAt,
    this.isActive = const Value.absent(),
    required String authToken,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        fullName = Value(fullName),
        userName = Value(userName),
        email = Value(email),
        createdAt = Value(createdAt),
        authToken = Value(authToken);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<String>? fullName,
    Expression<String>? userName,
    Expression<String>? email,
    Expression<bool>? emailVerified,
    Expression<String>? phoneNumber,
    Expression<String>? profileImageUrl,
    Expression<String>? bio,
    Expression<DateTime>? createdAt,
    Expression<bool>? isActive,
    Expression<String>? authToken,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (userName != null) 'user_name': userName,
      if (email != null) 'email': email,
      if (emailVerified != null) 'email_verified': emailVerified,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (profileImageUrl != null) 'profile_image_url': profileImageUrl,
      if (bio != null) 'bio': bio,
      if (createdAt != null) 'created_at': createdAt,
      if (isActive != null) 'is_active': isActive,
      if (authToken != null) 'auth_token': authToken,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? id,
      Value<String>? fullName,
      Value<String>? userName,
      Value<String>? email,
      Value<bool>? emailVerified,
      Value<String?>? phoneNumber,
      Value<String?>? profileImageUrl,
      Value<String?>? bio,
      Value<DateTime>? createdAt,
      Value<bool>? isActive,
      Value<String>? authToken,
      Value<int>? rowid}) {
    return UsersCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      emailVerified: emailVerified ?? this.emailVerified,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      bio: bio ?? this.bio,
      createdAt: createdAt ?? this.createdAt,
      isActive: isActive ?? this.isActive,
      authToken: authToken ?? this.authToken,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (emailVerified.present) {
      map['email_verified'] = Variable<bool>(emailVerified.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (profileImageUrl.present) {
      map['profile_image_url'] = Variable<String>(profileImageUrl.value);
    }
    if (bio.present) {
      map['bio'] = Variable<String>(bio.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (authToken.present) {
      map['auth_token'] = Variable<String>(authToken.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('userName: $userName, ')
          ..write('email: $email, ')
          ..write('emailVerified: $emailVerified, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('profileImageUrl: $profileImageUrl, ')
          ..write('bio: $bio, ')
          ..write('createdAt: $createdAt, ')
          ..write('isActive: $isActive, ')
          ..write('authToken: $authToken, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FeedPostsTable extends FeedPosts
    with TableInfo<$FeedPostsTable, FeedPost> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FeedPostsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _captionMeta =
      const VerificationMeta('caption');
  @override
  late final GeneratedColumn<String> caption = GeneratedColumn<String>(
      'caption', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _commentCountMeta =
      const VerificationMeta('commentCount');
  @override
  late final GeneratedColumn<int> commentCount = GeneratedColumn<int>(
      'comment_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _likeCountMeta =
      const VerificationMeta('likeCount');
  @override
  late final GeneratedColumn<int> likeCount = GeneratedColumn<int>(
      'like_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _mediaUrlMeta =
      const VerificationMeta('mediaUrl');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> mediaUrl =
      GeneratedColumn<String>('media_url', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($FeedPostsTable.$convertermediaUrl);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _profileImageURLMeta =
      const VerificationMeta('profileImageURL');
  @override
  late final GeneratedColumn<String> profileImageURL = GeneratedColumn<String>(
      'profile_image_u_r_l', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _likedMeta = const VerificationMeta('liked');
  @override
  late final GeneratedColumn<bool> liked = GeneratedColumn<bool>(
      'liked', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("liked" IN (0, 1))'),
      defaultValue: const Variable(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        caption,
        commentCount,
        likeCount,
        mediaUrl,
        updatedAt,
        userId,
        userName,
        fullName,
        profileImageURL,
        liked
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'feed_posts';
  @override
  VerificationContext validateIntegrity(Insertable<FeedPost> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('caption')) {
      context.handle(_captionMeta,
          caption.isAcceptableOrUnknown(data['caption']!, _captionMeta));
    }
    if (data.containsKey('comment_count')) {
      context.handle(
          _commentCountMeta,
          commentCount.isAcceptableOrUnknown(
              data['comment_count']!, _commentCountMeta));
    } else if (isInserting) {
      context.missing(_commentCountMeta);
    }
    if (data.containsKey('like_count')) {
      context.handle(_likeCountMeta,
          likeCount.isAcceptableOrUnknown(data['like_count']!, _likeCountMeta));
    } else if (isInserting) {
      context.missing(_likeCountMeta);
    }
    context.handle(_mediaUrlMeta, const VerificationResult.success());
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('profile_image_u_r_l')) {
      context.handle(
          _profileImageURLMeta,
          profileImageURL.isAcceptableOrUnknown(
              data['profile_image_u_r_l']!, _profileImageURLMeta));
    }
    if (data.containsKey('liked')) {
      context.handle(
          _likedMeta, liked.isAcceptableOrUnknown(data['liked']!, _likedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  FeedPost map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FeedPost(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      caption: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}caption']),
      commentCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}comment_count'])!,
      likeCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}like_count'])!,
      mediaUrl: $FeedPostsTable.$convertermediaUrl.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}media_url'])!),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      profileImageURL: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}profile_image_u_r_l']),
      liked: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}liked'])!,
    );
  }

  @override
  $FeedPostsTable createAlias(String alias) {
    return $FeedPostsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $convertermediaUrl =
      StringListConvertor();
}

class FeedPost extends DataClass implements Insertable<FeedPost> {
  final String id;
  final String? caption;
  final int commentCount;
  final int likeCount;
  final List<String> mediaUrl;
  final DateTime updatedAt;
  final String userId;
  final String userName;
  final String fullName;
  final String? profileImageURL;
  final bool liked;
  const FeedPost(
      {required this.id,
      this.caption,
      required this.commentCount,
      required this.likeCount,
      required this.mediaUrl,
      required this.updatedAt,
      required this.userId,
      required this.userName,
      required this.fullName,
      this.profileImageURL,
      required this.liked});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || caption != null) {
      map['caption'] = Variable<String>(caption);
    }
    map['comment_count'] = Variable<int>(commentCount);
    map['like_count'] = Variable<int>(likeCount);
    {
      map['media_url'] =
          Variable<String>($FeedPostsTable.$convertermediaUrl.toSql(mediaUrl));
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['user_id'] = Variable<String>(userId);
    map['user_name'] = Variable<String>(userName);
    map['full_name'] = Variable<String>(fullName);
    if (!nullToAbsent || profileImageURL != null) {
      map['profile_image_u_r_l'] = Variable<String>(profileImageURL);
    }
    map['liked'] = Variable<bool>(liked);
    return map;
  }

  FeedPostsCompanion toCompanion(bool nullToAbsent) {
    return FeedPostsCompanion(
      id: Value(id),
      caption: caption == null && nullToAbsent
          ? const Value.absent()
          : Value(caption),
      commentCount: Value(commentCount),
      likeCount: Value(likeCount),
      mediaUrl: Value(mediaUrl),
      updatedAt: Value(updatedAt),
      userId: Value(userId),
      userName: Value(userName),
      fullName: Value(fullName),
      profileImageURL: profileImageURL == null && nullToAbsent
          ? const Value.absent()
          : Value(profileImageURL),
      liked: Value(liked),
    );
  }

  factory FeedPost.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FeedPost(
      id: serializer.fromJson<String>(json['id']),
      caption: serializer.fromJson<String?>(json['caption']),
      commentCount: serializer.fromJson<int>(json['commentCount']),
      likeCount: serializer.fromJson<int>(json['likeCount']),
      mediaUrl: serializer.fromJson<List<String>>(json['mediaUrl']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      userId: serializer.fromJson<String>(json['userId']),
      userName: serializer.fromJson<String>(json['userName']),
      fullName: serializer.fromJson<String>(json['fullName']),
      profileImageURL: serializer.fromJson<String?>(json['profileImageURL']),
      liked: serializer.fromJson<bool>(json['liked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'caption': serializer.toJson<String?>(caption),
      'commentCount': serializer.toJson<int>(commentCount),
      'likeCount': serializer.toJson<int>(likeCount),
      'mediaUrl': serializer.toJson<List<String>>(mediaUrl),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'userId': serializer.toJson<String>(userId),
      'userName': serializer.toJson<String>(userName),
      'fullName': serializer.toJson<String>(fullName),
      'profileImageURL': serializer.toJson<String?>(profileImageURL),
      'liked': serializer.toJson<bool>(liked),
    };
  }

  FeedPost copyWith(
          {String? id,
          Value<String?> caption = const Value.absent(),
          int? commentCount,
          int? likeCount,
          List<String>? mediaUrl,
          DateTime? updatedAt,
          String? userId,
          String? userName,
          String? fullName,
          Value<String?> profileImageURL = const Value.absent(),
          bool? liked}) =>
      FeedPost(
        id: id ?? this.id,
        caption: caption.present ? caption.value : this.caption,
        commentCount: commentCount ?? this.commentCount,
        likeCount: likeCount ?? this.likeCount,
        mediaUrl: mediaUrl ?? this.mediaUrl,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        fullName: fullName ?? this.fullName,
        profileImageURL: profileImageURL.present
            ? profileImageURL.value
            : this.profileImageURL,
        liked: liked ?? this.liked,
      );
  @override
  String toString() {
    return (StringBuffer('FeedPost(')
          ..write('id: $id, ')
          ..write('caption: $caption, ')
          ..write('commentCount: $commentCount, ')
          ..write('likeCount: $likeCount, ')
          ..write('mediaUrl: $mediaUrl, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('fullName: $fullName, ')
          ..write('profileImageURL: $profileImageURL, ')
          ..write('liked: $liked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, caption, commentCount, likeCount,
      mediaUrl, updatedAt, userId, userName, fullName, profileImageURL, liked);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FeedPost &&
          other.id == this.id &&
          other.caption == this.caption &&
          other.commentCount == this.commentCount &&
          other.likeCount == this.likeCount &&
          other.mediaUrl == this.mediaUrl &&
          other.updatedAt == this.updatedAt &&
          other.userId == this.userId &&
          other.userName == this.userName &&
          other.fullName == this.fullName &&
          other.profileImageURL == this.profileImageURL &&
          other.liked == this.liked);
}

class FeedPostsCompanion extends UpdateCompanion<FeedPost> {
  final Value<String> id;
  final Value<String?> caption;
  final Value<int> commentCount;
  final Value<int> likeCount;
  final Value<List<String>> mediaUrl;
  final Value<DateTime> updatedAt;
  final Value<String> userId;
  final Value<String> userName;
  final Value<String> fullName;
  final Value<String?> profileImageURL;
  final Value<bool> liked;
  final Value<int> rowid;
  const FeedPostsCompanion({
    this.id = const Value.absent(),
    this.caption = const Value.absent(),
    this.commentCount = const Value.absent(),
    this.likeCount = const Value.absent(),
    this.mediaUrl = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
    this.fullName = const Value.absent(),
    this.profileImageURL = const Value.absent(),
    this.liked = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FeedPostsCompanion.insert({
    required String id,
    this.caption = const Value.absent(),
    required int commentCount,
    required int likeCount,
    required List<String> mediaUrl,
    required DateTime updatedAt,
    required String userId,
    required String userName,
    required String fullName,
    this.profileImageURL = const Value.absent(),
    this.liked = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        commentCount = Value(commentCount),
        likeCount = Value(likeCount),
        mediaUrl = Value(mediaUrl),
        updatedAt = Value(updatedAt),
        userId = Value(userId),
        userName = Value(userName),
        fullName = Value(fullName);
  static Insertable<FeedPost> custom({
    Expression<String>? id,
    Expression<String>? caption,
    Expression<int>? commentCount,
    Expression<int>? likeCount,
    Expression<String>? mediaUrl,
    Expression<DateTime>? updatedAt,
    Expression<String>? userId,
    Expression<String>? userName,
    Expression<String>? fullName,
    Expression<String>? profileImageURL,
    Expression<bool>? liked,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (caption != null) 'caption': caption,
      if (commentCount != null) 'comment_count': commentCount,
      if (likeCount != null) 'like_count': likeCount,
      if (mediaUrl != null) 'media_url': mediaUrl,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (userId != null) 'user_id': userId,
      if (userName != null) 'user_name': userName,
      if (fullName != null) 'full_name': fullName,
      if (profileImageURL != null) 'profile_image_u_r_l': profileImageURL,
      if (liked != null) 'liked': liked,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FeedPostsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? caption,
      Value<int>? commentCount,
      Value<int>? likeCount,
      Value<List<String>>? mediaUrl,
      Value<DateTime>? updatedAt,
      Value<String>? userId,
      Value<String>? userName,
      Value<String>? fullName,
      Value<String?>? profileImageURL,
      Value<bool>? liked,
      Value<int>? rowid}) {
    return FeedPostsCompanion(
      id: id ?? this.id,
      caption: caption ?? this.caption,
      commentCount: commentCount ?? this.commentCount,
      likeCount: likeCount ?? this.likeCount,
      mediaUrl: mediaUrl ?? this.mediaUrl,
      updatedAt: updatedAt ?? this.updatedAt,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      fullName: fullName ?? this.fullName,
      profileImageURL: profileImageURL ?? this.profileImageURL,
      liked: liked ?? this.liked,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (caption.present) {
      map['caption'] = Variable<String>(caption.value);
    }
    if (commentCount.present) {
      map['comment_count'] = Variable<int>(commentCount.value);
    }
    if (likeCount.present) {
      map['like_count'] = Variable<int>(likeCount.value);
    }
    if (mediaUrl.present) {
      map['media_url'] = Variable<String>(
          $FeedPostsTable.$convertermediaUrl.toSql(mediaUrl.value));
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (profileImageURL.present) {
      map['profile_image_u_r_l'] = Variable<String>(profileImageURL.value);
    }
    if (liked.present) {
      map['liked'] = Variable<bool>(liked.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FeedPostsCompanion(')
          ..write('id: $id, ')
          ..write('caption: $caption, ')
          ..write('commentCount: $commentCount, ')
          ..write('likeCount: $likeCount, ')
          ..write('mediaUrl: $mediaUrl, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('fullName: $fullName, ')
          ..write('profileImageURL: $profileImageURL, ')
          ..write('liked: $liked, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppLocalDb extends GeneratedDatabase {
  _$AppLocalDb(QueryExecutor e) : super(e);
  late final $UsersTable users = $UsersTable(this);
  late final $FeedPostsTable feedPosts = $FeedPostsTable(this);
  late final UsersDao usersDao = UsersDao(this as AppLocalDb);
  late final FeedPostsDao feedPostsDao = FeedPostsDao(this as AppLocalDb);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, feedPosts];
}
