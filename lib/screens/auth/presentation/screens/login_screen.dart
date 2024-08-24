import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_2/core/utils/app_router.dart';
import 'package:quiz_2/core/utils/style_manager.dart';
import 'package:quiz_2/core/utils/validator_manager.dart';
import 'package:quiz_2/core/utils/values_manager.dart';
import 'package:quiz_2/core/widgets/toast_bar.dart';
import 'package:quiz_2/screens/auth/presentation/cubit/auth_cubit.dart';
import 'package:quiz_2/screens/auth/presentation/cubit/auth_state.dart';
import 'package:quiz_2/screens/auth/presentation/screens/widgets/auth_template.dart';
import 'package:quiz_2/screens/auth/presentation/screens/widgets/auth_text_field.dart';
import 'package:quiz_2/screens/auth/presentation/screens/widgets/custom_check_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      buildWhen: (previous, current) {
        if (current is LoginLoadingState ||
            current is LoginErrorState ||
            current is LoginSuccessState) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        if (state is LoginErrorState) {
          ToastBar.onNetworkFailure(context, networkException: state.error);
        }
        if (state is LoginSuccessState) {
          ToastBar.onSuccess(context,
              message: "Loged in successfully", title: "Success");
        }
      },
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<AuthCubit>(context).loginFormKey,
          child: AuthTemplate(
            secondaryButtonOnPressed: () {
              context.push(AppRouter.kSignUp);
            },
            bottomText: 'Sign up',
            primaryButtonState:
                BlocProvider.of<AuthCubit>(context).loginButtonState,
            primaryButtonText: "Login",
            secondaryButtonText: "Don't have an account?",
            primaryButtonOnPressed: () {
              if (BlocProvider.of<AuthCubit>(context)
                  .loginFormKey
                  .currentState!
                  .validate()) {
                BlocProvider.of<AuthCubit>(context).login();
              }
            },
            fullScreen: true,
            header: "Welcome\nBack",
            subHeader: "Hey! Good to see you again",
            body: [
              AuthTextField(
                hintText: "Email",
                prefixIcon: Icons.email,
                controller:
                    BlocProvider.of<AuthCubit>(context).loginEmailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => ValidatorManager().validateEmail(value!),
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              AuthTextField(
                controller:
                    BlocProvider.of<AuthCubit>(context).loginPasswordController,
                hintText: "Password",
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: Icons.lock,
                isPassword: true,
                validator: (value) =>
                    ValidatorManager().validatePassword(value!),
              ),
              const SizedBox(
                height: AppSize.s5,
              ),
              Row(
                children: [
                  const CustomCheckBox(label: "Remember password?"),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password?",
                      style: StyleManager.fontMedium14,
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
