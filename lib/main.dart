import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_2/core/cubits/bloc_observer.dart';
import 'package:quiz_2/core/data/datasources/local.dart';
import 'package:quiz_2/core/domain/services/locator.dart';
import 'package:quiz_2/core/helper/token_helper.dart';
import 'package:quiz_2/core/utils/app_router.dart';
import 'package:quiz_2/core/utils/theme_manager.dart';
import 'package:quiz_2/screens/auth/presentation/cubit/auth_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefrence.init();
  await TokenHelper.init();
  await locatorSetUp();
  Bloc.observer = MyBlocObserver();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(getIt()),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.appTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
