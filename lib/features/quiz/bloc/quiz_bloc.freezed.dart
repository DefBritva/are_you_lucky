// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingQuestion,
    required TResult Function(String error) gettingQuestionError,
    required TResult Function(Question question) gettingQSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuestion,
    TResult? Function(String error)? gettingQuestionError,
    TResult? Function(Question question)? gettingQSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuestion,
    TResult Function(String error)? gettingQuestionError,
    TResult Function(Question question)? gettingQSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingQuestion value) gettingQuestion,
    required TResult Function(_GettingQError value) gettingQuestionError,
    required TResult Function(_GettingQSuccessfully value) gettingQSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuestion value)? gettingQuestion,
    TResult? Function(_GettingQError value)? gettingQuestionError,
    TResult? Function(_GettingQSuccessfully value)? gettingQSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuestion value)? gettingQuestion,
    TResult Function(_GettingQError value)? gettingQuestionError,
    TResult Function(_GettingQSuccessfully value)? gettingQSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizState
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
    extends _$QuizStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QuizState.initial()';
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
    required TResult Function() gettingQuestion,
    required TResult Function(String error) gettingQuestionError,
    required TResult Function(Question question) gettingQSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuestion,
    TResult? Function(String error)? gettingQuestionError,
    TResult? Function(Question question)? gettingQSuccessfully,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuestion,
    TResult Function(String error)? gettingQuestionError,
    TResult Function(Question question)? gettingQSuccessfully,
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
    required TResult Function(_GettingQuestion value) gettingQuestion,
    required TResult Function(_GettingQError value) gettingQuestionError,
    required TResult Function(_GettingQSuccessfully value) gettingQSuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuestion value)? gettingQuestion,
    TResult? Function(_GettingQError value)? gettingQuestionError,
    TResult? Function(_GettingQSuccessfully value)? gettingQSuccessfully,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuestion value)? gettingQuestion,
    TResult Function(_GettingQError value)? gettingQuestionError,
    TResult Function(_GettingQSuccessfully value)? gettingQSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuizState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingQuestionImplCopyWith<$Res> {
  factory _$$GettingQuestionImplCopyWith(_$GettingQuestionImpl value,
          $Res Function(_$GettingQuestionImpl) then) =
      __$$GettingQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingQuestionImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$GettingQuestionImpl>
    implements _$$GettingQuestionImplCopyWith<$Res> {
  __$$GettingQuestionImplCopyWithImpl(
      _$GettingQuestionImpl _value, $Res Function(_$GettingQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingQuestionImpl implements _GettingQuestion {
  const _$GettingQuestionImpl();

  @override
  String toString() {
    return 'QuizState.gettingQuestion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingQuestion,
    required TResult Function(String error) gettingQuestionError,
    required TResult Function(Question question) gettingQSuccessfully,
  }) {
    return gettingQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuestion,
    TResult? Function(String error)? gettingQuestionError,
    TResult? Function(Question question)? gettingQSuccessfully,
  }) {
    return gettingQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuestion,
    TResult Function(String error)? gettingQuestionError,
    TResult Function(Question question)? gettingQSuccessfully,
    required TResult orElse(),
  }) {
    if (gettingQuestion != null) {
      return gettingQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingQuestion value) gettingQuestion,
    required TResult Function(_GettingQError value) gettingQuestionError,
    required TResult Function(_GettingQSuccessfully value) gettingQSuccessfully,
  }) {
    return gettingQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuestion value)? gettingQuestion,
    TResult? Function(_GettingQError value)? gettingQuestionError,
    TResult? Function(_GettingQSuccessfully value)? gettingQSuccessfully,
  }) {
    return gettingQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuestion value)? gettingQuestion,
    TResult Function(_GettingQError value)? gettingQuestionError,
    TResult Function(_GettingQSuccessfully value)? gettingQSuccessfully,
    required TResult orElse(),
  }) {
    if (gettingQuestion != null) {
      return gettingQuestion(this);
    }
    return orElse();
  }
}

abstract class _GettingQuestion implements QuizState {
  const factory _GettingQuestion() = _$GettingQuestionImpl;
}

/// @nodoc
abstract class _$$GettingQErrorImplCopyWith<$Res> {
  factory _$$GettingQErrorImplCopyWith(
          _$GettingQErrorImpl value, $Res Function(_$GettingQErrorImpl) then) =
      __$$GettingQErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GettingQErrorImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$GettingQErrorImpl>
    implements _$$GettingQErrorImplCopyWith<$Res> {
  __$$GettingQErrorImplCopyWithImpl(
      _$GettingQErrorImpl _value, $Res Function(_$GettingQErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GettingQErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GettingQErrorImpl implements _GettingQError {
  const _$GettingQErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'QuizState.gettingQuestionError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingQErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingQErrorImplCopyWith<_$GettingQErrorImpl> get copyWith =>
      __$$GettingQErrorImplCopyWithImpl<_$GettingQErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingQuestion,
    required TResult Function(String error) gettingQuestionError,
    required TResult Function(Question question) gettingQSuccessfully,
  }) {
    return gettingQuestionError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuestion,
    TResult? Function(String error)? gettingQuestionError,
    TResult? Function(Question question)? gettingQSuccessfully,
  }) {
    return gettingQuestionError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuestion,
    TResult Function(String error)? gettingQuestionError,
    TResult Function(Question question)? gettingQSuccessfully,
    required TResult orElse(),
  }) {
    if (gettingQuestionError != null) {
      return gettingQuestionError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingQuestion value) gettingQuestion,
    required TResult Function(_GettingQError value) gettingQuestionError,
    required TResult Function(_GettingQSuccessfully value) gettingQSuccessfully,
  }) {
    return gettingQuestionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuestion value)? gettingQuestion,
    TResult? Function(_GettingQError value)? gettingQuestionError,
    TResult? Function(_GettingQSuccessfully value)? gettingQSuccessfully,
  }) {
    return gettingQuestionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuestion value)? gettingQuestion,
    TResult Function(_GettingQError value)? gettingQuestionError,
    TResult Function(_GettingQSuccessfully value)? gettingQSuccessfully,
    required TResult orElse(),
  }) {
    if (gettingQuestionError != null) {
      return gettingQuestionError(this);
    }
    return orElse();
  }
}

abstract class _GettingQError implements QuizState {
  const factory _GettingQError({required final String error}) =
      _$GettingQErrorImpl;

  String get error;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GettingQErrorImplCopyWith<_$GettingQErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GettingQSuccessfullyImplCopyWith<$Res> {
  factory _$$GettingQSuccessfullyImplCopyWith(_$GettingQSuccessfullyImpl value,
          $Res Function(_$GettingQSuccessfullyImpl) then) =
      __$$GettingQSuccessfullyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$GettingQSuccessfullyImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$GettingQSuccessfullyImpl>
    implements _$$GettingQSuccessfullyImplCopyWith<$Res> {
  __$$GettingQSuccessfullyImplCopyWithImpl(_$GettingQSuccessfullyImpl _value,
      $Res Function(_$GettingQSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$GettingQSuccessfullyImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$GettingQSuccessfullyImpl implements _GettingQSuccessfully {
  const _$GettingQSuccessfullyImpl({required this.question});

  @override
  final Question question;

  @override
  String toString() {
    return 'QuizState.gettingQSuccessfully(question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingQSuccessfullyImpl &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GettingQSuccessfullyImplCopyWith<_$GettingQSuccessfullyImpl>
      get copyWith =>
          __$$GettingQSuccessfullyImplCopyWithImpl<_$GettingQSuccessfullyImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingQuestion,
    required TResult Function(String error) gettingQuestionError,
    required TResult Function(Question question) gettingQSuccessfully,
  }) {
    return gettingQSuccessfully(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuestion,
    TResult? Function(String error)? gettingQuestionError,
    TResult? Function(Question question)? gettingQSuccessfully,
  }) {
    return gettingQSuccessfully?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuestion,
    TResult Function(String error)? gettingQuestionError,
    TResult Function(Question question)? gettingQSuccessfully,
    required TResult orElse(),
  }) {
    if (gettingQSuccessfully != null) {
      return gettingQSuccessfully(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingQuestion value) gettingQuestion,
    required TResult Function(_GettingQError value) gettingQuestionError,
    required TResult Function(_GettingQSuccessfully value) gettingQSuccessfully,
  }) {
    return gettingQSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuestion value)? gettingQuestion,
    TResult? Function(_GettingQError value)? gettingQuestionError,
    TResult? Function(_GettingQSuccessfully value)? gettingQSuccessfully,
  }) {
    return gettingQSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuestion value)? gettingQuestion,
    TResult Function(_GettingQError value)? gettingQuestionError,
    TResult Function(_GettingQSuccessfully value)? gettingQSuccessfully,
    required TResult orElse(),
  }) {
    if (gettingQSuccessfully != null) {
      return gettingQSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _GettingQSuccessfully implements QuizState {
  const factory _GettingQSuccessfully({required final Question question}) =
      _$GettingQSuccessfullyImpl;

  Question get question;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GettingQSuccessfullyImplCopyWith<_$GettingQSuccessfullyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuestion value) getQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestion value)? getQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestion value)? getQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res, QuizEvent>;
}

/// @nodoc
class _$QuizEventCopyWithImpl<$Res, $Val extends QuizEvent>
    implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetQuestionImplCopyWith<$Res> {
  factory _$$GetQuestionImplCopyWith(
          _$GetQuestionImpl value, $Res Function(_$GetQuestionImpl) then) =
      __$$GetQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetQuestionImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$GetQuestionImpl>
    implements _$$GetQuestionImplCopyWith<$Res> {
  __$$GetQuestionImplCopyWithImpl(
      _$GetQuestionImpl _value, $Res Function(_$GetQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetQuestionImpl implements _GetQuestion {
  const _$GetQuestionImpl();

  @override
  String toString() {
    return 'QuizEvent.getQuestion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuestion,
  }) {
    return getQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestion,
  }) {
    return getQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestion,
    required TResult orElse(),
  }) {
    if (getQuestion != null) {
      return getQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuestion value) getQuestion,
  }) {
    return getQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestion value)? getQuestion,
  }) {
    return getQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestion value)? getQuestion,
    required TResult orElse(),
  }) {
    if (getQuestion != null) {
      return getQuestion(this);
    }
    return orElse();
  }
}

abstract class _GetQuestion implements QuizEvent {
  const factory _GetQuestion() = _$GetQuestionImpl;
}
