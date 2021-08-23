import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _fadeAnimation = Tween(begin: 0.1, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        FadeTransition(
          opacity: _fadeAnimation,
          child: const Text(
            'Fruit Market',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
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
