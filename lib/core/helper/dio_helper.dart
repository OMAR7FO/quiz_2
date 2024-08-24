import 'package:dio/dio.dart';
import 'package:quiz_2/core/data/datasources/local.dart';
import 'package:quiz_2/core/interceptors/token_interceptor.dart';

class DioHelper {
  static final DioHelper _instance = DioHelper._internal();
  static Dio? _dio;
  factory DioHelper() {
    return _instance;
  }
  DioHelper._internal() {
    _dio ??= Dio();
    _dio!.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
    addTokenInterceptor();
  }
  void addTokenInterceptor() async {
    final token = await SharedPrefrence.getData(key: 'token');
    if (token != null) _dio!.interceptors.add(TokenInterceptor(token));
  }

  Dio get dio => _dio!;
}
