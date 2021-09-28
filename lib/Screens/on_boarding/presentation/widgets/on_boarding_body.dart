import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as getx;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '/core/utils/size_config.dart';
import '/core/widgets/custom_buttons.dart';
import '/screens/auth/presentation/pages/login/login_view.dart';
import '/screens/on_boarding/cubit/cubit.dart';
import '/screens/on_boarding/cubit/states.dart';
import 'custom_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onBoardingCubit = OnBoardingCubit.get(context);
    return BlocConsumer<OnBoardingCubit, OnBoardingStates>(
      listener: (context, state) {},
      builder: (context, state) => Stack(
        children: [
          CustomPageView(pageController: pageController),
          Positioned(
            right: 0,
            left: 0,
            bottom: SizeConfig.defaultSize * 18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: onBoardingCubit.getLenght,
                  effect: SwapEffect(
                    type: SwapType.yRotation,
                    activeDotColor: Theme.of(context).primaryColor,
                    dotWidth: 11,
                    dotHeight: 11,
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: onBoardingCubit.visible,
            child: Positioned(
              right: 25.0,
              top: SizeConfig.defaultSize * 8,
              child: GestureDetector(
                onTap: () => getx.Get.off(
                  () => const LogInView(),
                  transition: getx.Transition.rightToLeftWithFade,
                ),
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff898989),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          Positioned(
            left: SizeConfig.safeBlockHorizontal * 33.3,
            right: SizeConfig.safeBlockHorizontal * 33.3,
            bottom: SizeConfig.defaultSize * 6,
            child: CustomButton(
              label: onBoardingCubit.labelButton,
              onTap: () {
                onBoardingCubit.index != onBoardingCubit.getLenght
                    ? pageController.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn,
                      )
                    : getx.Get.off(
                        () => const LogInView(),
                        duration: const Duration(milliseconds: 400),
                        transition: getx.Transition.rightToLeftWithFade,
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
