// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isWin, String difficulty, String game)
        showResult,
    required TResult Function() clenup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isWin, String difficulty, String game)? showResult,
    TResult? Function()? clenup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isWin, String difficulty, String game)? showResult,
    TResult Function()? clenup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowResult value) showResult,
    required TResult Function(_Cleanup value) clenup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowResult value)? showResult,
    TResult? Function(_Cleanup value)? clenup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowResult value)? showResult,
    TResult Function(_Cleanup value)? clenup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameResultEventCopyWith<$Res> {
  factory $GameResultEventCopyWith(
          GameResultEvent value, $Res Function(GameResultEvent) then) =
      _$GameResultEventCopyWithImpl<$Res, GameResultEvent>;
}

/// @nodoc
class _$GameResultEventCopyWithImpl<$Res, $Val extends GameResultEvent>
    implements $GameResultEventCopyWith<$Res> {
  _$GameResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameResultEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowResultImplCopyWith<$Res> {
  factory _$$ShowResultImplCopyWith(
          _$ShowResultImpl value, $Res Function(_$ShowResultImpl) then) =
      __$$ShowResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isWin, String difficulty, String game});
}

/// @nodoc
class __$$ShowResultImplCopyWithImpl<$Res>
    extends _$GameResultEventCopyWithImpl<$Res, _$ShowResultImpl>
    implements _$$ShowResultImplCopyWith<$Res> {
  __$$ShowResultImplCopyWithImpl(
      _$ShowResultImpl _value, $Res Function(_$ShowResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWin = null,
    Object? difficulty = null,
    Object? game = null,
  }) {
    return _then(_$ShowResultImpl(
      isWin: null == isWin
          ? _value.isWin
          : isWin // ignore: cast_nullable_to_non_nullable
              as bool,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowResultImpl implements _ShowResult {
  const _$ShowResultImpl(
      {required this.isWin, required this.difficulty, required this.game});

  @override
  final bool isWin;
  @override
  final String difficulty;
  @override
  final String game;

  @override
  String toString() {
    return 'GameResultEvent.showResult(isWin: $isWin, difficulty: $difficulty, game: $game)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowResultImpl &&
            (identical(other.isWin, isWin) || other.isWin == isWin) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isWin, difficulty, game);

  /// Create a copy of GameResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowResultImplCopyWith<_$ShowResultImpl> get copyWith =>
      __$$ShowResultImplCopyWithImpl<_$ShowResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isWin, String difficulty, String game)
        showResult,
    required TResult Function() clenup,
  }) {
    return showResult(isWin, difficulty, game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isWin, String difficulty, String game)? showResult,
    TResult? Function()? clenup,
  }) {
    return showResult?.call(isWin, difficulty, game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isWin, String difficulty, String game)? showResult,
    TResult Function()? clenup,
    required TResult orElse(),
  }) {
    if (showResult != null) {
      return showResult(isWin, difficulty, game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowResult value) showResult,
    required TResult Function(_Cleanup value) clenup,
  }) {
    return showResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowResult value)? showResult,
    TResult? Function(_Cleanup value)? clenup,
  }) {
    return showResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowResult value)? showResult,
    TResult Function(_Cleanup value)? clenup,
    required TResult orElse(),
  }) {
    if (showResult != null) {
      return showResult(this);
    }
    return orElse();
  }
}

abstract class _ShowResult implements GameResultEvent {
  const factory _ShowResult(
      {required final bool isWin,
      required final String difficulty,
      required final String game}) = _$ShowResultImpl;

  bool get isWin;
  String get difficulty;
  String get game;

  /// Create a copy of GameResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowResultImplCopyWith<_$ShowResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CleanupImplCopyWith<$Res> {
  factory _$$CleanupImplCopyWith(
          _$CleanupImpl value, $Res Function(_$CleanupImpl) then) =
      __$$CleanupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CleanupImplCopyWithImpl<$Res>
    extends _$GameResultEventCopyWithImpl<$Res, _$CleanupImpl>
    implements _$$CleanupImplCopyWith<$Res> {
  __$$CleanupImplCopyWithImpl(
      _$CleanupImpl _value, $Res Function(_$CleanupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameResultEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CleanupImpl implements _Cleanup {
  const _$CleanupImpl();

  @override
  String toString() {
    return 'GameResultEvent.clenup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CleanupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isWin, String difficulty, String game)
        showResult,
    required TResult Function() clenup,
  }) {
    return clenup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isWin, String difficulty, String game)? showResult,
    TResult? Function()? clenup,
  }) {
    return clenup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isWin, String difficulty, String game)? showResult,
    TResult Function()? clenup,
    required TResult orElse(),
  }) {
    if (clenup != null) {
      return clenup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowResult value) showResult,
    required TResult Function(_Cleanup value) clenup,
  }) {
    return clenup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowResult value)? showResult,
    TResult? Function(_Cleanup value)? clenup,
  }) {
    return clenup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowResult value)? showResult,
    TResult Function(_Cleanup value)? clenup,
    required TResult orElse(),
  }) {
    if (clenup != null) {
      return clenup(this);
    }
    return orElse();
  }
}

abstract class _Cleanup implements GameResultEvent {
  const factory _Cleanup() = _$CleanupImpl;
}

/// @nodoc
mixin _$GameResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int points) win,
    required TResult Function() loss,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int points)? win,
    TResult? Function()? loss,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int points)? win,
    TResult Function()? loss,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Win value) win,
    required TResult Function(_Loss value) loss,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Win value)? win,
    TResult? Function(_Loss value)? loss,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Win value)? win,
    TResult Function(_Loss value)? loss,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameResultStateCopyWith<$Res> {
  factory $GameResultStateCopyWith(
          GameResultState value, $Res Function(GameResultState) then) =
      _$GameResultStateCopyWithImpl<$Res, GameResultState>;
}

/// @nodoc
class _$GameResultStateCopyWithImpl<$Res, $Val extends GameResultState>
    implements $GameResultStateCopyWith<$Res> {
  _$GameResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameResultState
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
    extends _$GameResultStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameResultState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GameResultState.initial()';
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
    required TResult Function(int points) win,
    required TResult Function() loss,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int points)? win,
    TResult? Function()? loss,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int points)? win,
    TResult Function()? loss,
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
    required TResult Function(_Win value) win,
    required TResult Function(_Loss value) loss,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Win value)? win,
    TResult? Function(_Loss value)? loss,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Win value)? win,
    TResult Function(_Loss value)? loss,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameResultState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$WinImplCopyWith<$Res> {
  factory _$$WinImplCopyWith(_$WinImpl value, $Res Function(_$WinImpl) then) =
      __$$WinImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int points});
}

/// @nodoc
class __$$WinImplCopyWithImpl<$Res>
    extends _$GameResultStateCopyWithImpl<$Res, _$WinImpl>
    implements _$$WinImplCopyWith<$Res> {
  __$$WinImplCopyWithImpl(_$WinImpl _value, $Res Function(_$WinImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_$WinImpl(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WinImpl implements _Win {
  const _$WinImpl({required this.points});

  @override
  final int points;

  @override
  String toString() {
    return 'GameResultState.win(points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinImpl &&
            (identical(other.points, points) || other.points == points));
  }

  @override
  int get hashCode => Object.hash(runtimeType, points);

  /// Create a copy of GameResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WinImplCopyWith<_$WinImpl> get copyWith =>
      __$$WinImplCopyWithImpl<_$WinImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int points) win,
    required TResult Function() loss,
  }) {
    return win(points);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int points)? win,
    TResult? Function()? loss,
  }) {
    return win?.call(points);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int points)? win,
    TResult Function()? loss,
    required TResult orElse(),
  }) {
    if (win != null) {
      return win(points);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Win value) win,
    required TResult Function(_Loss value) loss,
  }) {
    return win(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Win value)? win,
    TResult? Function(_Loss value)? loss,
  }) {
    return win?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Win value)? win,
    TResult Function(_Loss value)? loss,
    required TResult orElse(),
  }) {
    if (win != null) {
      return win(this);
    }
    return orElse();
  }
}

abstract class _Win implements GameResultState {
  const factory _Win({required final int points}) = _$WinImpl;

  int get points;

  /// Create a copy of GameResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WinImplCopyWith<_$WinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LossImplCopyWith<$Res> {
  factory _$$LossImplCopyWith(
          _$LossImpl value, $Res Function(_$LossImpl) then) =
      __$$LossImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LossImplCopyWithImpl<$Res>
    extends _$GameResultStateCopyWithImpl<$Res, _$LossImpl>
    implements _$$LossImplCopyWith<$Res> {
  __$$LossImplCopyWithImpl(_$LossImpl _value, $Res Function(_$LossImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameResultState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LossImpl implements _Loss {
  const _$LossImpl();

  @override
  String toString() {
    return 'GameResultState.loss()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LossImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int points) win,
    required TResult Function() loss,
  }) {
    return loss();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int points)? win,
    TResult? Function()? loss,
  }) {
    return loss?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int points)? win,
    TResult Function()? loss,
    required TResult orElse(),
  }) {
    if (loss != null) {
      return loss();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Win value) win,
    required TResult Function(_Loss value) loss,
  }) {
    return loss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Win value)? win,
    TResult? Function(_Loss value)? loss,
  }) {
    return loss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Win value)? win,
    TResult Function(_Loss value)? loss,
    required TResult orElse(),
  }) {
    if (loss != null) {
      return loss(this);
    }
    return orElse();
  }
}

abstract class _Loss implements GameResultState {
  const factory _Loss() = _$LossImpl;
}
