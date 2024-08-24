import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_2/core/utils/validator_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/toast_bar.dart';
import 'package:quiz_2/screens/auth/presentation/cubit/auth_cubit.dart';
import 'package:quiz_2/screens/auth/presentation/cubit/auth_state.dart';
import 'package:quiz_2/screens/auth/presentation/screens/widgets/auth_template.dart';
import 'package:quiz_2/screens/auth/presentation/screens/widgets/auth_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpErrorState) {
          ToastBar.onNetworkFailure(context, networkException: state.error);
        } else if (state is SignUpSuccessState) {
          ToastBar.onSuccess(context, message: state.message, title: "Success");
          context.pop();
        }
      },
      buildWhen: (previous, current) {
        if (current is SignUpErrorState ||
            current is SignUpLoadingState ||
            current is SignUpSuccessState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<AuthCubit>(context).signUpFormKey,
          child: AuthTemplate(
            header: "Join Us\nNow!",
            subHeader: 'Sign up with your email',
            fullScreen: false,
            primaryButtonText: "Sign up",
            bottomText: 'Login',
            secondaryButtonOnPressed: () {
              context.pop();
              BlocProvider.of<AuthCubit>(context).clearSignUpControllers();
            },
            primaryButtonState:
                BlocProvider.of<AuthCubit>(context).signUpButtonState,
            secondaryButtonText: "Already have an account?",
            primaryButtonOnPressed: () {
              if (BlocProvider.of<AuthCubit>(context)
                  .signUpFormKey
                  .currentState!
                  .validate()) {
                BlocProvider.of<AuthCubit>(context).signUp();
              }
            },
            body: [
              AuthTextField(
                  controller: BlocProvider.of<AuthCubit>(context)
                      .signUpUserNameController,
                  hintText: "Username",
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.person,
                  validator: (value) {
                    if (BlocProvider.of<AuthCubit>(context).hasError()) {
                      return BlocProvider.of<AuthCubit>(context)
                          .checkUserName();
                    } else {
                      return ValidatorManager().validateUserName(value!);
                    }
                  }),
              const SizedBox(
                height: AppSize.s20,
              ),
              AuthTextField(
                controller:
                    BlocProvider.of<AuthCubit>(context).signUpNameController,
                hintText: "Name",
                keyboardType: TextInputType.text,
                prefixIcon: Icons.person,
                validator: (value) => ValidatorManager().validateName(value!),
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              AuthTextField(
                controller:
                    BlocProvider.of<AuthCubit>(context).signUpEmailController,
                hintText: "Email",
                keyboardType: TextInputType.text,
                prefixIcon: Icons.email,
                validator: (value) {
                  if (BlocProvider.of<AuthCubit>(context).hasError()) {
                    return BlocProvider.of<AuthCubit>(context).checkEmail();
                  } else {
                    return ValidatorManager().validateEmail(value!);
                  }
                },
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              AuthTextField(
                controller: BlocProvider.of<AuthCubit>(context)
                    .signUpPasswordController,
                hintText: "Password",
                keyboardType: TextInputType.text,
                prefixIcon: Icons.lock,
                isPassword: true,
                validator: (value) =>
                    ValidatorManager().validatePassword(value!),
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              AuthTextField(
                controller: BlocProvider.of<AuthCubit>(context)
                    .signUpConfirmPasswordController,
                hintText: "Confirm Password",
                keyboardType: TextInputType.text,
                prefixIcon: Icons.lock,
                isPassword: true,
                validator: (value) => ValidatorManager()
                    .validateConfirmPassword(
                        value!,
                        BlocProvider.of<AuthCubit>(context)
                            .signUpPasswordController
                            .text),
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
            ],
          ),
        );
      },
    );
  }
}
