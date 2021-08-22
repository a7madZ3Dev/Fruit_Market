import 'package:get/get.dart';
import 'package:flutter/material.dart';

import './Screens/Splash/Presentation/Splash_View.dart';

void main() {
  runApp(FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  /// This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fruits Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashView(),
    );
  }
}
