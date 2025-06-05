// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameUser _$GameUserFromJson(Map<String, dynamic> json) {
  return _GameUser.fromJson(json);
}

/// @nodoc
mixin _$GameUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  /// Serializes this GameUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameUserCopyWith<GameUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameUserCopyWith<$Res> {
  factory $GameUserCopyWith(GameUser value, $Res Function(GameUser) then) =
      _$GameUserCopyWithImpl<$Res, GameUser>;
  @useResult
  $Res call({String uid, String email, String nickname, int score});
}

/// @nodoc
class _$GameUserCopyWithImpl<$Res, $Val extends GameUser>
    implements $GameUserCopyWith<$Res> {
  _$GameUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? nickname = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameUserImplCopyWith<$Res>
    implements $GameUserCopyWith<$Res> {
  factory _$$GameUserImplCopyWith(
          _$GameUserImpl value, $Res Function(_$GameUserImpl) then) =
      __$$GameUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String email, String nickname, int score});
}

/// @nodoc
class __$$GameUserImplCopyWithImpl<$Res>
    extends _$GameUserCopyWithImpl<$Res, _$GameUserImpl>
    implements _$$GameUserImplCopyWith<$Res> {
  __$$GameUserImplCopyWithImpl(
      _$GameUserImpl _value, $Res Function(_$GameUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? nickname = null,
    Object? score = null,
  }) {
    return _then(_$GameUserImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameUserImpl extends _GameUser {
  const _$GameUserImpl(
      {required this.uid,
      required this.email,
      required this.nickname,
      this.score = 0})
      : super._();

  factory _$GameUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameUserImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String nickname;
  @override
  @JsonKey()
  final int score;

  @override
  String toString() {
    return 'GameUser(uid: $uid, email: $email, nickname: $nickname, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameUserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, nickname, score);

  /// Create a copy of GameUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameUserImplCopyWith<_$GameUserImpl> get copyWith =>
      __$$GameUserImplCopyWithImpl<_$GameUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameUserImplToJson(
      this,
    );
  }
}

abstract class _GameUser extends GameUser {
  const factory _GameUser(
      {required final String uid,
      required final String email,
      required final String nickname,
      final int score}) = _$GameUserImpl;
  const _GameUser._() : super._();

  factory _GameUser.fromJson(Map<String, dynamic> json) =
      _$GameUserImpl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get nickname;
  @override
  int get score;

  /// Create a copy of GameUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameUserImplCopyWith<_$GameUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
