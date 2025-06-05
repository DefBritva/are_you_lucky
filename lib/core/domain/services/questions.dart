import 'package:are_you_lucky/core/domain/models/question.dart';
import 'package:are_you_lucky/core/utils/dio_singl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class QuestionService {
  Future<Question> getQuestion();
}

class IQuestionService implements QuestionService {
  @override
  Future<Question> getQuestion() async {
    final dio = DioSingleton.instance.dio;
    String apiKey = dotenv.env['API_KEY'] ?? '';

    final response = await dio.get('https://chat-vvpo.onrender.com/chat',
        options: Options(headers: {'api-key': apiKey}));
    final json = response.data as Map<String, dynamic>;

    return Question.fromJson(json);
  }
}
