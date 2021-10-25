import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'core/style/colors.dart';
import 'features/splash/presentation/splash_view.dart';

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
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Fruits Market',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Jannah',
          primaryColor: kMainColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const SplashView(),
      );
}
