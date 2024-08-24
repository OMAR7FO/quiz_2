import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_2/core/helper/dio_helper.dart';
import 'package:quiz_2/screens/auth/data/datasources/auth_remote_data_source.dart';
import 'package:quiz_2/screens/auth/domain/auth_repo.dart';

final getIt = GetIt.I;
Future locatorSetUp() async {
  getIt.registerLazySingleton<Dio>(() => DioHelper().dio);
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(getIt()),
  );
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepo(getIt()),
  );
}
