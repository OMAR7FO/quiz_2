import 'package:quiz_2/core/domain/error_handler/network_exceptions.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class LoginLoadingState extends AuthState {}

class LoginSuccessState extends AuthState {}

class LoginErrorState extends AuthState {
  final NetworkExceptions error;
  LoginErrorState(this.error);
}

class SignUpLoadingState extends AuthState {}

class SignUpErrorState extends AuthState {
  final NetworkExceptions error;
  SignUpErrorState(this.error);
}

class SignUpSuccessState extends AuthState {
  final String message;
  SignUpSuccessState(this.message);
}
