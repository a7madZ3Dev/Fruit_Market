import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 5000));
    _opacityAnimation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    print('this rebuild');
    return AnimatedBuilder(
      animation: _opacityAnimation,
      builder: (context, ch) => Opacity(
        opacity:_opacityAnimation.value ,
        child: Column(
          children: <Widget>[
            const Spacer(),
            const Text(
              'Fruit Market',
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              'assets/images/splash_view_image.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
