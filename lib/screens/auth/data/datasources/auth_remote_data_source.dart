import 'package:quiz_2/core/utils/app_url.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part "auth_remote_data_source.g.dart";

@RestApi(baseUrl: baseUrl)
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio, {String baseUrl}) =
      _AuthRemoteDataSource;
  @POST(AppUrl.login)
  Future<dynamic> login(@Body() Map<String, dynamic> userData);
  @POST(AppUrl.signUp)
  Future<dynamic> signUp(@Body() Map<String, dynamic> userData);
}
