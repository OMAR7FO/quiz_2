import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:quiz_2/core/data/datasources/local.dart';
import 'package:quiz_2/core/data/models/error_model.dart';
import 'package:quiz_2/core/domain/error_handler/network_exceptions.dart';
import 'package:quiz_2/screens/auth/domain/auth_repo.dart';
import 'package:quiz_2/screens/auth/presentation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _repo;
  AuthCubit(this._repo) : super(AuthInitialState());
  //Login
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  ButtonState loginButtonState = ButtonState.idle;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  Future<void> login() async {
    loginButtonState = ButtonState.loading;
    emit(LoginLoadingState());
    final response = await _repo.login(
        email: loginEmailController.text,
        password: loginPasswordController.text);
    response.fold(
      (error) {
        loginButtonState = ButtonState.fail;
        emit(LoginErrorState(error));
      },
      (data) {
        loginButtonState = ButtonState.idle;
        SharedPrefrence.saveObject(data, 'user');
        emit(LoginSuccessState());
        clearLoginControllers();
      },
    );
  }

  void clearLoginControllers() {
    loginEmailController.clear();
    loginPasswordController.clear();
    loginButtonState = ButtonState.idle;
  }

  //Signup
  TextEditingController signUpEmailController = TextEditingController();
  TextEditingController signUpPasswordController = TextEditingController();
  TextEditingController signUpConfirmPasswordController =
      TextEditingController();
  TextEditingController signUpNameController = TextEditingController();
  TextEditingController signUpUserNameController = TextEditingController();
  ButtonState signUpButtonState = ButtonState.idle;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  ErrorModel? errors;
  Future<void> signUp() async {
    signUpButtonState = ButtonState.loading;
    emit(SignUpLoadingState());
    final response = await _repo.signUp(
        name: signUpNameController.text,
        userName: signUpUserNameController.text,
        email: signUpEmailController.text,
        password: signUpPasswordController.text);
    response.fold((error) {
      signUpButtonState = ButtonState.fail;
      errors = NetworkExceptions.getError(error);
      signUpFormKey.currentState!.validate();
      errors = null;
      emit(SignUpErrorState(error));
    }, (data) {
      signUpButtonState = ButtonState.success;

      emit(SignUpSuccessState(data));
      clearSignUpControllers();
    });
  }

  void clearSignUpControllers() {
    signUpButtonState = ButtonState.idle;
    signUpEmailController.clear();
    signUpNameController.clear();
    signUpUserNameController.clear();
    signUpPasswordController.clear();
    signUpConfirmPasswordController.clear();
    errors = null;
  }

  String? checkUserName() {
    if (errors != null && errors!.userName.isNotEmpty) {
      return errors!.userName[0];
    }
    return null;
  }

  String? checkEmail() {
    if (errors != null && errors!.email.isNotEmpty) {
      return errors!.email[0];
    }
    return null;
  }

  bool hasError() {
    if (errors != null) {
      return true;
    }
    return false;
  }
}
