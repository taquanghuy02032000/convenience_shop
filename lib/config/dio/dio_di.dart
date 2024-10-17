import 'package:dio/dio.dart';

class DioDi {
  Dio get dio {
    final dio = Dio();
    dio.options.connectTimeout = Duration(seconds: 30);
    dio.options.receiveTimeout = Duration(seconds: 30);
    return dio;
  }
}
