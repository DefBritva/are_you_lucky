import 'package:dio/dio.dart';

class DioSingleton {
  DioSingleton._();
  final dio = Dio();
  static final instance = DioSingleton._();
}
