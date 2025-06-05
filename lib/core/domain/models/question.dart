import 'package:freezed_annotation/freezed_annotation.dart';
part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const Question._();
  const factory Question({
    required String question,
    required String a,
    required String b,
    required String c,
    required String d,
    required String correct,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
