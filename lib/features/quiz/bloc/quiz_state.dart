part of 'quiz_bloc.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState.initial() = _Initial;
  const factory QuizState.gettingQuestion() = _GettingQuestion;
  const factory QuizState.gettingQuestionError({required String error}) =
      _GettingQError;
  const factory QuizState.gettingQSuccessfully({required Question question}) =
      _GettingQSuccessfully;
}
