import 'package:are_you_lucky/core/domain/models/question.dart';
import 'package:are_you_lucky/core/domain/services/questions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_state.dart';
part 'quiz_event.dart';
part 'quiz_bloc.freezed.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final IQuestionService questionService;
  QuizBloc(this.questionService) : super((const QuizState.initial())) {
    on<QuizEvent>((event, emit) {});

    on<_GetQuestion>(
      (event, emit) async {
        emit(const _GettingQuestion());
        try {
          final quest = await questionService.getQuestion();
          final newState = _GettingQSuccessfully(question: quest);
          emit(newState);
        } catch (e) {
          final newState = _GettingQError(error: e.toString());
          emit(newState);
        }
      },
    );
  }
}
