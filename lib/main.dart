import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'core/style/colors.dart';
import 'screens/on_boarding/cubit/cubit.dart';
import 'screens/splash/presentation/splash_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  /// This widget is the root of the application.
  @override
  Widget build(BuildContext context) => BlocProvider<OnBoardingCubit>(
        create: (context) => OnBoardingCubit(),
        child: GetMaterialApp(
          title: 'Fruits Market',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Jannah',
            primaryColor: kMainColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const SplashView(),
        ),
      );
}
