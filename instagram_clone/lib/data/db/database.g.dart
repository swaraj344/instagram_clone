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

abstract class _$AppLocalDb extends GeneratedDatabase {
  _$AppLocalDb(QueryExecutor e) : super(e);
  late final $UsersTable users = $UsersTable(this);
  late final UsersDao usersDao = UsersDao(this as AppLocalDb);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];
}
