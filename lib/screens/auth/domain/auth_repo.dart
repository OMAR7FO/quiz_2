import 'package:quiz_2/core/data/datasources/local.dart';
import 'package:quiz_2/core/data/models/user_model.dart';
import 'package:quiz_2/core/domain/error_handler/network_exceptions.dart';
import 'package:quiz_2/core/helper/dio_helper.dart';
import 'package:quiz_2/screens/auth/data/datasources/auth_remote_data_source.dart';
import 'package:dartz/dartz.dart';

class AuthRepo {
  final AuthRemoteDataSource _remote;
  AuthRepo(this._remote);
  Future<Either<NetworkExceptions, UserModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await _remote.login({
        'creds': email,
        'password': password,
      });
      final UserModel user = UserModel.fromJson(response['data']);
      SharedPrefrence.saveData(key: 'token', value: response['data']['token']);
      DioHelper().addTokenInterceptor();
      return right(user);
    } catch (error) {
      return left(NetworkExceptions.getException(error));
    }
  }

  Future<Either<NetworkExceptions, String>> signUp(
      {required String name,
      required String userName,
      required String email,
      required String password}) async {
    try {
      await _remote.signUp({
        '_method': "PUT",
        'name': name,
        'user_name': userName,
        'email': email,
        'password': password,
      });
      return right("Signed up successfully");
    } catch (error) {
      return left(NetworkExceptions.getException(error));
    }
  }
}
