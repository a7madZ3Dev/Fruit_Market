import 'package:flutter/material.dart';

import '/core/style/colors.dart';
import 'widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        backgroundColor: kMainColor,
        body: SplashBody(),
      );
}
