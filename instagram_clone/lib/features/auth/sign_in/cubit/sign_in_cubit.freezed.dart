// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  String get phoneOrEmailOrUserName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get showpassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String phoneOrEmailOrUserName,
      String password,
      bool isLoading,
      bool showError,
      bool showpassword});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneOrEmailOrUserName = null,
    Object? password = null,
    Object? isLoading = null,
    Object? showError = null,
    Object? showpassword = null,
  }) {
    return _then(_value.copyWith(
      phoneOrEmailOrUserName: null == phoneOrEmailOrUserName
          ? _value.phoneOrEmailOrUserName
          : phoneOrEmailOrUserName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      showpassword: null == showpassword
          ? _value.showpassword
          : showpassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneOrEmailOrUserName,
      String password,
      bool isLoading,
      bool showError,
      bool showpassword});
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneOrEmailOrUserName = null,
    Object? password = null,
    Object? isLoading = null,
    Object? showError = null,
    Object? showpassword = null,
  }) {
    return _then(_$SignInStateImpl(
      phoneOrEmailOrUserName: null == phoneOrEmailOrUserName
          ? _value.phoneOrEmailOrUserName
          : phoneOrEmailOrUserName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      showpassword: null == showpassword
          ? _value.showpassword
          : showpassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl with DiagnosticableTreeMixin implements _SignInState {
  const _$SignInStateImpl(
      {required this.phoneOrEmailOrUserName,
      required this.password,
      required this.isLoading,
      required this.showError,
      required this.showpassword});

  @override
  final String phoneOrEmailOrUserName;
  @override
  final String password;
  @override
  final bool isLoading;
  @override
  final bool showError;
  @override
  final bool showpassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState(phoneOrEmailOrUserName: $phoneOrEmailOrUserName, password: $password, isLoading: $isLoading, showError: $showError, showpassword: $showpassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState'))
      ..add(
          DiagnosticsProperty('phoneOrEmailOrUserName', phoneOrEmailOrUserName))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('showError', showError))
      ..add(DiagnosticsProperty('showpassword', showpassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.phoneOrEmailOrUserName, phoneOrEmailOrUserName) ||
                other.phoneOrEmailOrUserName == phoneOrEmailOrUserName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.showpassword, showpassword) ||
                other.showpassword == showpassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneOrEmailOrUserName, password,
      isLoading, showError, showpassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final String phoneOrEmailOrUserName,
      required final String password,
      required final bool isLoading,
      required final bool showError,
      required final bool showpassword}) = _$SignInStateImpl;

  @override
  String get phoneOrEmailOrUserName;
  @override
  String get password;
  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  bool get showpassword;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
