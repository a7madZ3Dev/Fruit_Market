import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

import '/core/style/textStyles.dart';
import '/core/utils/size_config.dart';
import '/features/on_boarding/presentation/on_boarding_view.dart';

// class SplashBody extends StatefulWidget {
//   const SplashBody({Key? key}) : super(key: key);

//   @override
//   _SplashBodyState createState() => _SplashBodyState();
// }

// class _SplashBodyState extends State<SplashBody>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final Animation<double> _fadeAnimation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(
//         milliseconds: 800,
//       ),
//     );
//     _fadeAnimation = Tween(begin: 0.1, end: 1.0)
//         .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

//     _controller.repeat(reverse: true);

//     Future.delayed(
//       const Duration(milliseconds: 2000),
//       () => Get.off(
//               () => const OnBoardingView(),
//               transition: Transition.rightToLeftWithFade,),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) => Column(
//         children: <Widget>[
//           const Spacer(),
//           FadeTransition(
//             opacity: _fadeAnimation,
//             child: const Text(
//               'Fruit Market',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 45,
//                 color: Colors.white,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//           Image.asset(
//             'assets/images/splash_view_image.png',
//             fit: BoxFit.cover,
//             width: double.infinity,
//           ),
//         ],
//       );
// }

class SplashBody extends HookWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final _controller = useAnimationController(
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    final _fadeAnimation = Tween(
      begin: 0.1,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

    Future.delayed(
      const Duration(milliseconds: 2000),
      () => Get.off(
        () => const OnBoardingView(),
        transition: Transition.rightToLeftWithFade,
      ),
    );

    return Column(
      children: <Widget>[
        const Spacer(),
        FadeTransition(
          opacity: _fadeAnimation,
          child: Text(
            'Fruit Market',
            textAlign: TextAlign.center,
            style: splashTitleStyle,
          ),
        ),
        Image.asset(
          'assets/images/splash_view_image.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ],
    );
  }
}
