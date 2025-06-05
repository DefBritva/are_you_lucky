// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String pas, String nickname)
        registerUser,
    required TResult Function(String email, String pas) login,
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() listenUserAuth,
    required TResult Function() logout,
    required TResult Function(List<Question> questions) addQuestionsToDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String pas, String nickname)? registerUser,
    TResult? Function(String email, String pas)? login,
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? listenUserAuth,
    TResult? Function()? logout,
    TResult? Function(List<Question> questions)? addQuestionsToDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String pas, String nickname)? registerUser,
    TResult Function(String email, String pas)? login,
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? listenUserAuth,
    TResult Function()? logout,
    TResult Function(List<Question> questions)? addQuestionsToDb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_Login value) login,
    required TResult Function(_UserLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_ListenUserAuth value) listenUserAuth,
    required TResult Function(_Logout value) logout,
    required TResult Function(_AddQuestionsToDb value) addQuestionsToDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_Login value)? login,
    TResult? Function(_UserLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_ListenUserAuth value)? listenUserAuth,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_AddQuestionsToDb value)? addQuestionsToDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_Login value)? login,
    TResult Function(_UserLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_ListenUserAuth value)? listenUserAuth,
    TResult Function(_Logout value)? logout,
    TResult Function(_AddQuestionsToDb value)? addQuestionsToDb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegisterUserImplCopyWith<$Res> {
  factory _$$RegisterUserImplCopyWith(
          _$RegisterUserImpl value, $Res Function(_$RegisterUserImpl) then) =
      __$$RegisterUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String pas, String nickname});
}

/// @nodoc
class __$$RegisterUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterUserImpl>
    implements _$$RegisterUserImplCopyWith<$Res> {
  __$$RegisterUserImplCopyWithImpl(
      _$RegisterUserImpl _value, $Res Function(_$RegisterUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? pas = null,
    Object? nickname = null,
  }) {
    return _then(_$RegisterUserImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pas: null == pas
          ? _value.pas
          : pas // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterUserImpl with DiagnosticableTreeMixin implements _RegisterUser {
  const _$RegisterUserImpl(
      {required this.email, required this.pas, required this.nickname});

  @override
  final String email;
  @override
  final String pas;
  @override
  final String nickname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.registerUser(email: $email, pas: $pas, nickname: $nickname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.registerUser'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('pas', pas))
      ..add(DiagnosticsProperty('nickname', nickname));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.pas, pas) || other.pas == pas) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, pas, nickname);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      __$$RegisterUserImplCopyWithImpl<_$RegisterUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String pas, String nickname)
        registerUser,
    required TResult Function(String email, String pas) login,
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() listenUserAuth,
    required TResult Function() logout,
    required TResult Function(List<Question> questions) addQuestionsToDb,
  }) {
    return registerUser(email, pas, nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String pas, String nickname)? registerUser,
    TResult? Function(String email, String pas)? login,
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? listenUserAuth,
    TResult? Function()? logout,
    TResult? Function(List<Question> questions)? addQuestionsToDb,
  }) {
    return registerUser?.call(email, pas, nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String pas, String nickname)? registerUser,
    TResult Function(String email, String pas)? login,
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? listenUserAuth,
    TResult Function()? logout,
    TResult Function(List<Question> questions)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(email, pas, nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_Login value) login,
    required TResult Function(_UserLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_ListenUserAuth value) listenUserAuth,
    required TResult Function(_Logout value) logout,
    required TResult Function(_AddQuestionsToDb value) addQuestionsToDb,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_Login value)? login,
    TResult? Function(_UserLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_ListenUserAuth value)? listenUserAuth,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_AddQuestionsToDb value)? addQuestionsToDb,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_Login value)? login,
    TResult Function(_UserLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_ListenUserAuth value)? listenUserAuth,
    TResult Function(_Logout value)? logout,
    TResult Function(_AddQuestionsToDb value)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _RegisterUser implements AuthEvent {
  const factory _RegisterUser(
      {required final String email,
      required final String pas,
      required final String nickname}) = _$RegisterUserImpl;

  String get email;
  String get pas;
  String get nickname;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String pas});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? pas = null,
  }) {
    return _then(_$LoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pas: null == pas
          ? _value.pas
          : pas // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl with DiagnosticableTreeMixin implements _Login {
  const _$LoginImpl({required this.email, required this.pas});

  @override
  final String email;
  @override
  final String pas;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.login(email: $email, pas: $pas)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.login'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('pas', pas));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.pas, pas) || other.pas == pas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, pas);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String pas, String nickname)
        registerUser,
    required TResult Function(String email, String pas) login,
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() listenUserAuth,
    required TResult Function() logout,
    required TResult Function(List<Question> questions) addQuestionsToDb,
  }) {
    return login(email, pas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String pas, String nickname)? registerUser,
    TResult? Function(String email, String pas)? login,
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? listenUserAuth,
    TResult? Function()? logout,
    TResult? Function(List<Question> questions)? addQuestionsToDb,
  }) {
    return login?.call(email, pas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String pas, String nickname)? registerUser,
    TResult Function(String email, String pas)? login,
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? listenUserAuth,
    TResult Function()? logout,
    TResult Function(List<Question> questions)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, pas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_Login value) login,
    required TResult Function(_UserLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_ListenUserAuth value) listenUserAuth,
    required TResult Function(_Logout value) logout,
    required TResult Function(_AddQuestionsToDb value) addQuestionsToDb,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_Login value)? login,
    TResult? Function(_UserLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_ListenUserAuth value)? listenUserAuth,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_AddQuestionsToDb value)? addQuestionsToDb,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_Login value)? login,
    TResult Function(_UserLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_ListenUserAuth value)? listenUserAuth,
    TResult Function(_Logout value)? logout,
    TResult Function(_AddQuestionsToDb value)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(
      {required final String email, required final String pas}) = _$LoginImpl;

  String get email;
  String get pas;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoggedImplCopyWith<$Res> {
  factory _$$UserLoggedImplCopyWith(
          _$UserLoggedImpl value, $Res Function(_$UserLoggedImpl) then) =
      __$$UserLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserLoggedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserLoggedImpl>
    implements _$$UserLoggedImplCopyWith<$Res> {
  __$$UserLoggedImplCopyWithImpl(
      _$UserLoggedImpl _value, $Res Function(_$UserLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserLoggedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserLoggedImpl with DiagnosticableTreeMixin implements _UserLogged {
  const _$UserLoggedImpl({required this.user});

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.userLogged(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.userLogged'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedImplCopyWith<_$UserLoggedImpl> get copyWith =>
      __$$UserLoggedImplCopyWithImpl<_$UserLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String pas, String nickname)
        registerUser,
    required TResult Function(String email, String pas) login,
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() listenUserAuth,
    required TResult Function() logout,
    required TResult Function(List<Question> questions) addQuestionsToDb,
  }) {
    return userLogged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String pas, String nickname)? registerUser,
    TResult? Function(String email, String pas)? login,
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? listenUserAuth,
    TResult? Function()? logout,
    TResult? Function(List<Question> questions)? addQuestionsToDb,
  }) {
    return userLogged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String pas, String nickname)? registerUser,
    TResult Function(String email, String pas)? login,
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? listenUserAuth,
    TResult Function()? logout,
    TResult Function(List<Question> questions)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (userLogged != null) {
      return userLogged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_Login value) login,
    required TResult Function(_UserLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_ListenUserAuth value) listenUserAuth,
    required TResult Function(_Logout value) logout,
    required TResult Function(_AddQuestionsToDb value) addQuestionsToDb,
  }) {
    return userLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_Login value)? login,
    TResult? Function(_UserLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_ListenUserAuth value)? listenUserAuth,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_AddQuestionsToDb value)? addQuestionsToDb,
  }) {
    return userLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_Login value)? login,
    TResult Function(_UserLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_ListenUserAuth value)? listenUserAuth,
    TResult Function(_Logout value)? logout,
    TResult Function(_AddQuestionsToDb value)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (userLogged != null) {
      return userLogged(this);
    }
    return orElse();
  }
}

abstract class _UserLogged implements AuthEvent {
  const factory _UserLogged({required final User user}) = _$UserLoggedImpl;

  User get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoggedImplCopyWith<_$UserLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckUserLoggedImplCopyWith<$Res> {
  factory _$$CheckUserLoggedImplCopyWith(_$CheckUserLoggedImpl value,
          $Res Function(_$CheckUserLoggedImpl) then) =
      __$$CheckUserLoggedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserLoggedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckUserLoggedImpl>
    implements _$$CheckUserLoggedImplCopyWith<$Res> {
  __$$CheckUserLoggedImplCopyWithImpl(
      _$CheckUserLoggedImpl _value, $Res Function(_$CheckUserLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckUserLoggedImpl
    with DiagnosticableTreeMixin
    implements _CheckUserLogged {
  const _$CheckUserLoggedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.checkUserLogged()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.checkUserLogged'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserLoggedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String pas, String nickname)
        registerUser,
    required TResult Function(String email, String pas) login,
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() listenUserAuth,
    required TResult Function() logout,
    required TResult Function(List<Question> questions) addQuestionsToDb,
  }) {
    return checkUserLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String pas, String nickname)? registerUser,
    TResult? Function(String email, String pas)? login,
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? listenUserAuth,
    TResult? Function()? logout,
    TResult? Function(List<Question> questions)? addQuestionsToDb,
  }) {
    return checkUserLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String pas, String nickname)? registerUser,
    TResult Function(String email, String pas)? login,
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? listenUserAuth,
    TResult Function()? logout,
    TResult Function(List<Question> questions)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (checkUserLogged != null) {
      return checkUserLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_Login value) login,
    required TResult Function(_UserLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_ListenUserAuth value) listenUserAuth,
    required TResult Function(_Logout value) logout,
    required TResult Function(_AddQuestionsToDb value) addQuestionsToDb,
  }) {
    return checkUserLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_Login value)? login,
    TResult? Function(_UserLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_ListenUserAuth value)? listenUserAuth,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_AddQuestionsToDb value)? addQuestionsToDb,
  }) {
    return checkUserLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_Login value)? login,
    TResult Function(_UserLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_ListenUserAuth value)? listenUserAuth,
    TResult Function(_Logout value)? logout,
    TResult Function(_AddQuestionsToDb value)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (checkUserLogged != null) {
      return checkUserLogged(this);
    }
    return orElse();
  }
}

abstract class _CheckUserLogged implements AuthEvent {
  const factory _CheckUserLogged() = _$CheckUserLoggedImpl;
}

/// @nodoc
abstract class _$$ListenUserAuthImplCopyWith<$Res> {
  factory _$$ListenUserAuthImplCopyWith(_$ListenUserAuthImpl value,
          $Res Function(_$ListenUserAuthImpl) then) =
      __$$ListenUserAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListenUserAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ListenUserAuthImpl>
    implements _$$ListenUserAuthImplCopyWith<$Res> {
  __$$ListenUserAuthImplCopyWithImpl(
      _$ListenUserAuthImpl _value, $Res Function(_$ListenUserAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListenUserAuthImpl
    with DiagnosticableTreeMixin
    implements _ListenUserAuth {
  const _$ListenUserAuthImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.listenUserAuth()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.listenUserAuth'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListenUserAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String pas, String nickname)
        registerUser,
    required TResult Function(String email, String pas) login,
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() listenUserAuth,
    required TResult Function() logout,
    required TResult Function(List<Question> questions) addQuestionsToDb,
  }) {
    return listenUserAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String pas, String nickname)? registerUser,
    TResult? Function(String email, String pas)? login,
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? listenUserAuth,
    TResult? Function()? logout,
    TResult? Function(List<Question> questions)? addQuestionsToDb,
  }) {
    return listenUserAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String pas, String nickname)? registerUser,
    TResult Function(String email, String pas)? login,
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? listenUserAuth,
    TResult Function()? logout,
    TResult Function(List<Question> questions)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (listenUserAuth != null) {
      return listenUserAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_Login value) login,
    required TResult Function(_UserLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_ListenUserAuth value) listenUserAuth,
    required TResult Function(_Logout value) logout,
    required TResult Function(_AddQuestionsToDb value) addQuestionsToDb,
  }) {
    return listenUserAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_Login value)? login,
    TResult? Function(_UserLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_ListenUserAuth value)? listenUserAuth,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_AddQuestionsToDb value)? addQuestionsToDb,
  }) {
    return listenUserAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_Login value)? login,
    TResult Function(_UserLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_ListenUserAuth value)? listenUserAuth,
    TResult Function(_Logout value)? logout,
    TResult Function(_AddQuestionsToDb value)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (listenUserAuth != null) {
      return listenUserAuth(this);
    }
    return orElse();
  }
}

abstract class _ListenUserAuth implements AuthEvent {
  const factory _ListenUserAuth() = _$ListenUserAuthImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl with DiagnosticableTreeMixin implements _Logout {
  const _$LogoutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.logout'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String pas, String nickname)
        registerUser,
    required TResult Function(String email, String pas) login,
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() listenUserAuth,
    required TResult Function() logout,
    required TResult Function(List<Question> questions) addQuestionsToDb,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String pas, String nickname)? registerUser,
    TResult? Function(String email, String pas)? login,
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? listenUserAuth,
    TResult? Function()? logout,
    TResult? Function(List<Question> questions)? addQuestionsToDb,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String pas, String nickname)? registerUser,
    TResult Function(String email, String pas)? login,
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? listenUserAuth,
    TResult Function()? logout,
    TResult Function(List<Question> questions)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_Login value) login,
    required TResult Function(_UserLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_ListenUserAuth value) listenUserAuth,
    required TResult Function(_Logout value) logout,
    required TResult Function(_AddQuestionsToDb value) addQuestionsToDb,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_Login value)? login,
    TResult? Function(_UserLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_ListenUserAuth value)? listenUserAuth,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_AddQuestionsToDb value)? addQuestionsToDb,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_Login value)? login,
    TResult Function(_UserLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_ListenUserAuth value)? listenUserAuth,
    TResult Function(_Logout value)? logout,
    TResult Function(_AddQuestionsToDb value)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$AddQuestionsToDbImplCopyWith<$Res> {
  factory _$$AddQuestionsToDbImplCopyWith(_$AddQuestionsToDbImpl value,
          $Res Function(_$AddQuestionsToDbImpl) then) =
      __$$AddQuestionsToDbImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Question> questions});
}

/// @nodoc
class __$$AddQuestionsToDbImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AddQuestionsToDbImpl>
    implements _$$AddQuestionsToDbImplCopyWith<$Res> {
  __$$AddQuestionsToDbImplCopyWithImpl(_$AddQuestionsToDbImpl _value,
      $Res Function(_$AddQuestionsToDbImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_$AddQuestionsToDbImpl(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$AddQuestionsToDbImpl
    with DiagnosticableTreeMixin
    implements _AddQuestionsToDb {
  const _$AddQuestionsToDbImpl({required final List<Question> questions})
      : _questions = questions;

  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.addQuestionsToDb(questions: $questions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.addQuestionsToDb'))
      ..add(DiagnosticsProperty('questions', questions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddQuestionsToDbImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_questions));

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddQuestionsToDbImplCopyWith<_$AddQuestionsToDbImpl> get copyWith =>
      __$$AddQuestionsToDbImplCopyWithImpl<_$AddQuestionsToDbImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String pas, String nickname)
        registerUser,
    required TResult Function(String email, String pas) login,
    required TResult Function(User user) userLogged,
    required TResult Function() checkUserLogged,
    required TResult Function() listenUserAuth,
    required TResult Function() logout,
    required TResult Function(List<Question> questions) addQuestionsToDb,
  }) {
    return addQuestionsToDb(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String pas, String nickname)? registerUser,
    TResult? Function(String email, String pas)? login,
    TResult? Function(User user)? userLogged,
    TResult? Function()? checkUserLogged,
    TResult? Function()? listenUserAuth,
    TResult? Function()? logout,
    TResult? Function(List<Question> questions)? addQuestionsToDb,
  }) {
    return addQuestionsToDb?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String pas, String nickname)? registerUser,
    TResult Function(String email, String pas)? login,
    TResult Function(User user)? userLogged,
    TResult Function()? checkUserLogged,
    TResult Function()? listenUserAuth,
    TResult Function()? logout,
    TResult Function(List<Question> questions)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (addQuestionsToDb != null) {
      return addQuestionsToDb(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_Login value) login,
    required TResult Function(_UserLogged value) userLogged,
    required TResult Function(_CheckUserLogged value) checkUserLogged,
    required TResult Function(_ListenUserAuth value) listenUserAuth,
    required TResult Function(_Logout value) logout,
    required TResult Function(_AddQuestionsToDb value) addQuestionsToDb,
  }) {
    return addQuestionsToDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_Login value)? login,
    TResult? Function(_UserLogged value)? userLogged,
    TResult? Function(_CheckUserLogged value)? checkUserLogged,
    TResult? Function(_ListenUserAuth value)? listenUserAuth,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_AddQuestionsToDb value)? addQuestionsToDb,
  }) {
    return addQuestionsToDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_Login value)? login,
    TResult Function(_UserLogged value)? userLogged,
    TResult Function(_CheckUserLogged value)? checkUserLogged,
    TResult Function(_ListenUserAuth value)? listenUserAuth,
    TResult Function(_Logout value)? logout,
    TResult Function(_AddQuestionsToDb value)? addQuestionsToDb,
    required TResult orElse(),
  }) {
    if (addQuestionsToDb != null) {
      return addQuestionsToDb(this);
    }
    return orElse();
  }
}

abstract class _AddQuestionsToDb implements AuthEvent {
  const factory _AddQuestionsToDb({required final List<Question> questions}) =
      _$AddQuestionsToDbImpl;

  List<Question> get questions;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddQuestionsToDbImplCopyWith<_$AddQuestionsToDbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationStarted,
    required TResult Function() registrationSuccessful,
    required TResult Function(String error) registrationError,
    required TResult Function(String userId) userIsLogged,
    required TResult Function() userIsNotLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationStarted,
    TResult? Function()? registrationSuccessful,
    TResult? Function(String error)? registrationError,
    TResult? Function(String userId)? userIsLogged,
    TResult? Function()? userIsNotLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationStarted,
    TResult Function()? registrationSuccessful,
    TResult Function(String error)? registrationError,
    TResult Function(String userId)? userIsLogged,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegistrationStarted value) registrationStarted,
    required TResult Function(_RegistrationSuccessful value)
        registrationSuccessful,
    required TResult Function(_RegistrationError value) registrationError,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegistrationStarted value)? registrationStarted,
    TResult? Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult? Function(_RegistrationError value)? registrationError,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegistrationStarted value)? registrationStarted,
    TResult Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult Function(_RegistrationError value)? registrationError,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl extends _Initial with DiagnosticableTreeMixin {
  const _$InitialImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationStarted,
    required TResult Function() registrationSuccessful,
    required TResult Function(String error) registrationError,
    required TResult Function(String userId) userIsLogged,
    required TResult Function() userIsNotLogged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationStarted,
    TResult? Function()? registrationSuccessful,
    TResult? Function(String error)? registrationError,
    TResult? Function(String userId)? userIsLogged,
    TResult? Function()? userIsNotLogged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationStarted,
    TResult Function()? registrationSuccessful,
    TResult Function(String error)? registrationError,
    TResult Function(String userId)? userIsLogged,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegistrationStarted value) registrationStarted,
    required TResult Function(_RegistrationSuccessful value)
        registrationSuccessful,
    required TResult Function(_RegistrationError value) registrationError,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegistrationStarted value)? registrationStarted,
    TResult? Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult? Function(_RegistrationError value)? registrationError,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegistrationStarted value)? registrationStarted,
    TResult Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult Function(_RegistrationError value)? registrationError,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AuthState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$RegistrationStartedImplCopyWith<$Res> {
  factory _$$RegistrationStartedImplCopyWith(_$RegistrationStartedImpl value,
          $Res Function(_$RegistrationStartedImpl) then) =
      __$$RegistrationStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationStartedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegistrationStartedImpl>
    implements _$$RegistrationStartedImplCopyWith<$Res> {
  __$$RegistrationStartedImplCopyWithImpl(_$RegistrationStartedImpl _value,
      $Res Function(_$RegistrationStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationStartedImpl extends _RegistrationStarted
    with DiagnosticableTreeMixin {
  const _$RegistrationStartedImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.registrationStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthState.registrationStarted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationStarted,
    required TResult Function() registrationSuccessful,
    required TResult Function(String error) registrationError,
    required TResult Function(String userId) userIsLogged,
    required TResult Function() userIsNotLogged,
  }) {
    return registrationStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationStarted,
    TResult? Function()? registrationSuccessful,
    TResult? Function(String error)? registrationError,
    TResult? Function(String userId)? userIsLogged,
    TResult? Function()? userIsNotLogged,
  }) {
    return registrationStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationStarted,
    TResult Function()? registrationSuccessful,
    TResult Function(String error)? registrationError,
    TResult Function(String userId)? userIsLogged,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (registrationStarted != null) {
      return registrationStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegistrationStarted value) registrationStarted,
    required TResult Function(_RegistrationSuccessful value)
        registrationSuccessful,
    required TResult Function(_RegistrationError value) registrationError,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return registrationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegistrationStarted value)? registrationStarted,
    TResult? Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult? Function(_RegistrationError value)? registrationError,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return registrationStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegistrationStarted value)? registrationStarted,
    TResult Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult Function(_RegistrationError value)? registrationError,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (registrationStarted != null) {
      return registrationStarted(this);
    }
    return orElse();
  }
}

abstract class _RegistrationStarted extends AuthState {
  const factory _RegistrationStarted() = _$RegistrationStartedImpl;
  const _RegistrationStarted._() : super._();
}

/// @nodoc
abstract class _$$RegistrationSuccessfulImplCopyWith<$Res> {
  factory _$$RegistrationSuccessfulImplCopyWith(
          _$RegistrationSuccessfulImpl value,
          $Res Function(_$RegistrationSuccessfulImpl) then) =
      __$$RegistrationSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationSuccessfulImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegistrationSuccessfulImpl>
    implements _$$RegistrationSuccessfulImplCopyWith<$Res> {
  __$$RegistrationSuccessfulImplCopyWithImpl(
      _$RegistrationSuccessfulImpl _value,
      $Res Function(_$RegistrationSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationSuccessfulImpl extends _RegistrationSuccessful
    with DiagnosticableTreeMixin {
  const _$RegistrationSuccessfulImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.registrationSuccessful()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthState.registrationSuccessful'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationStarted,
    required TResult Function() registrationSuccessful,
    required TResult Function(String error) registrationError,
    required TResult Function(String userId) userIsLogged,
    required TResult Function() userIsNotLogged,
  }) {
    return registrationSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationStarted,
    TResult? Function()? registrationSuccessful,
    TResult? Function(String error)? registrationError,
    TResult? Function(String userId)? userIsLogged,
    TResult? Function()? userIsNotLogged,
  }) {
    return registrationSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationStarted,
    TResult Function()? registrationSuccessful,
    TResult Function(String error)? registrationError,
    TResult Function(String userId)? userIsLogged,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (registrationSuccessful != null) {
      return registrationSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegistrationStarted value) registrationStarted,
    required TResult Function(_RegistrationSuccessful value)
        registrationSuccessful,
    required TResult Function(_RegistrationError value) registrationError,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return registrationSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegistrationStarted value)? registrationStarted,
    TResult? Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult? Function(_RegistrationError value)? registrationError,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return registrationSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegistrationStarted value)? registrationStarted,
    TResult Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult Function(_RegistrationError value)? registrationError,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (registrationSuccessful != null) {
      return registrationSuccessful(this);
    }
    return orElse();
  }
}

abstract class _RegistrationSuccessful extends AuthState {
  const factory _RegistrationSuccessful() = _$RegistrationSuccessfulImpl;
  const _RegistrationSuccessful._() : super._();
}

/// @nodoc
abstract class _$$RegistrationErrorImplCopyWith<$Res> {
  factory _$$RegistrationErrorImplCopyWith(_$RegistrationErrorImpl value,
          $Res Function(_$RegistrationErrorImpl) then) =
      __$$RegistrationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RegistrationErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegistrationErrorImpl>
    implements _$$RegistrationErrorImplCopyWith<$Res> {
  __$$RegistrationErrorImplCopyWithImpl(_$RegistrationErrorImpl _value,
      $Res Function(_$RegistrationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RegistrationErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationErrorImpl extends _RegistrationError
    with DiagnosticableTreeMixin {
  const _$RegistrationErrorImpl({required this.error}) : super._();

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.registrationError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.registrationError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationErrorImplCopyWith<_$RegistrationErrorImpl> get copyWith =>
      __$$RegistrationErrorImplCopyWithImpl<_$RegistrationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationStarted,
    required TResult Function() registrationSuccessful,
    required TResult Function(String error) registrationError,
    required TResult Function(String userId) userIsLogged,
    required TResult Function() userIsNotLogged,
  }) {
    return registrationError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationStarted,
    TResult? Function()? registrationSuccessful,
    TResult? Function(String error)? registrationError,
    TResult? Function(String userId)? userIsLogged,
    TResult? Function()? userIsNotLogged,
  }) {
    return registrationError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationStarted,
    TResult Function()? registrationSuccessful,
    TResult Function(String error)? registrationError,
    TResult Function(String userId)? userIsLogged,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (registrationError != null) {
      return registrationError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegistrationStarted value) registrationStarted,
    required TResult Function(_RegistrationSuccessful value)
        registrationSuccessful,
    required TResult Function(_RegistrationError value) registrationError,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return registrationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegistrationStarted value)? registrationStarted,
    TResult? Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult? Function(_RegistrationError value)? registrationError,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return registrationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegistrationStarted value)? registrationStarted,
    TResult Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult Function(_RegistrationError value)? registrationError,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (registrationError != null) {
      return registrationError(this);
    }
    return orElse();
  }
}

abstract class _RegistrationError extends AuthState {
  const factory _RegistrationError({required final String error}) =
      _$RegistrationErrorImpl;
  const _RegistrationError._() : super._();

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationErrorImplCopyWith<_$RegistrationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserIsLoggedStateImplCopyWith<$Res> {
  factory _$$UserIsLoggedStateImplCopyWith(_$UserIsLoggedStateImpl value,
          $Res Function(_$UserIsLoggedStateImpl) then) =
      __$$UserIsLoggedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$UserIsLoggedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserIsLoggedStateImpl>
    implements _$$UserIsLoggedStateImplCopyWith<$Res> {
  __$$UserIsLoggedStateImplCopyWithImpl(_$UserIsLoggedStateImpl _value,
      $Res Function(_$UserIsLoggedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserIsLoggedStateImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserIsLoggedStateImpl extends _UserIsLoggedState
    with DiagnosticableTreeMixin {
  const _$UserIsLoggedStateImpl({required this.userId}) : super._();

  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.userIsLogged(userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.userIsLogged'))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIsLoggedStateImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIsLoggedStateImplCopyWith<_$UserIsLoggedStateImpl> get copyWith =>
      __$$UserIsLoggedStateImplCopyWithImpl<_$UserIsLoggedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationStarted,
    required TResult Function() registrationSuccessful,
    required TResult Function(String error) registrationError,
    required TResult Function(String userId) userIsLogged,
    required TResult Function() userIsNotLogged,
  }) {
    return userIsLogged(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationStarted,
    TResult? Function()? registrationSuccessful,
    TResult? Function(String error)? registrationError,
    TResult? Function(String userId)? userIsLogged,
    TResult? Function()? userIsNotLogged,
  }) {
    return userIsLogged?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationStarted,
    TResult Function()? registrationSuccessful,
    TResult Function(String error)? registrationError,
    TResult Function(String userId)? userIsLogged,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsLogged != null) {
      return userIsLogged(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegistrationStarted value) registrationStarted,
    required TResult Function(_RegistrationSuccessful value)
        registrationSuccessful,
    required TResult Function(_RegistrationError value) registrationError,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return userIsLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegistrationStarted value)? registrationStarted,
    TResult? Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult? Function(_RegistrationError value)? registrationError,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return userIsLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegistrationStarted value)? registrationStarted,
    TResult Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult Function(_RegistrationError value)? registrationError,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsLogged != null) {
      return userIsLogged(this);
    }
    return orElse();
  }
}

abstract class _UserIsLoggedState extends AuthState {
  const factory _UserIsLoggedState({required final String userId}) =
      _$UserIsLoggedStateImpl;
  const _UserIsLoggedState._() : super._();

  String get userId;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserIsLoggedStateImplCopyWith<_$UserIsLoggedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserIsNotLoggedStateImplCopyWith<$Res> {
  factory _$$UserIsNotLoggedStateImplCopyWith(_$UserIsNotLoggedStateImpl value,
          $Res Function(_$UserIsNotLoggedStateImpl) then) =
      __$$UserIsNotLoggedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserIsNotLoggedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserIsNotLoggedStateImpl>
    implements _$$UserIsNotLoggedStateImplCopyWith<$Res> {
  __$$UserIsNotLoggedStateImplCopyWithImpl(_$UserIsNotLoggedStateImpl _value,
      $Res Function(_$UserIsNotLoggedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserIsNotLoggedStateImpl extends _UserIsNotLoggedState
    with DiagnosticableTreeMixin {
  const _$UserIsNotLoggedStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.userIsNotLogged()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.userIsNotLogged'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIsNotLoggedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registrationStarted,
    required TResult Function() registrationSuccessful,
    required TResult Function(String error) registrationError,
    required TResult Function(String userId) userIsLogged,
    required TResult Function() userIsNotLogged,
  }) {
    return userIsNotLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registrationStarted,
    TResult? Function()? registrationSuccessful,
    TResult? Function(String error)? registrationError,
    TResult? Function(String userId)? userIsLogged,
    TResult? Function()? userIsNotLogged,
  }) {
    return userIsNotLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registrationStarted,
    TResult Function()? registrationSuccessful,
    TResult Function(String error)? registrationError,
    TResult Function(String userId)? userIsLogged,
    TResult Function()? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsNotLogged != null) {
      return userIsNotLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RegistrationStarted value) registrationStarted,
    required TResult Function(_RegistrationSuccessful value)
        registrationSuccessful,
    required TResult Function(_RegistrationError value) registrationError,
    required TResult Function(_UserIsLoggedState value) userIsLogged,
    required TResult Function(_UserIsNotLoggedState value) userIsNotLogged,
  }) {
    return userIsNotLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RegistrationStarted value)? registrationStarted,
    TResult? Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult? Function(_RegistrationError value)? registrationError,
    TResult? Function(_UserIsLoggedState value)? userIsLogged,
    TResult? Function(_UserIsNotLoggedState value)? userIsNotLogged,
  }) {
    return userIsNotLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RegistrationStarted value)? registrationStarted,
    TResult Function(_RegistrationSuccessful value)? registrationSuccessful,
    TResult Function(_RegistrationError value)? registrationError,
    TResult Function(_UserIsLoggedState value)? userIsLogged,
    TResult Function(_UserIsNotLoggedState value)? userIsNotLogged,
    required TResult orElse(),
  }) {
    if (userIsNotLogged != null) {
      return userIsNotLogged(this);
    }
    return orElse();
  }
}

abstract class _UserIsNotLoggedState extends AuthState {
  const factory _UserIsNotLoggedState() = _$UserIsNotLoggedStateImpl;
  const _UserIsNotLoggedState._() : super._();
}
