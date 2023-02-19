import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart' as getx;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '/core/style/textStyles.dart';
import '/core/utils/size_config.dart';
import '/core/widgets/custom_buttons.dart';
import '/features/auth/presentation/pages/login/login_view.dart';
import '/features/on_boarding/presentation/manger/cubit.dart';
import '/features/on_boarding/presentation/manger/states.dart';
import 'custom_page_view.dart';

class OnBoardingBody extends HookWidget {
  const OnBoardingBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    return BlocConsumer<OnBoardingScreenCubit, OnBoardingScreenStates>(
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
                  count: 3,
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
            visible: state.visible,
            child: Positioned(
              right: 25.0,
              top: SizeConfig.defaultSize * 8,
              child: GestureDetector(
                onTap: transitionFunction,
                child:  Text(
                  'Skip',
                  textAlign: TextAlign.left,
                  style: skipButtonStyle
                ),
              ),
            ),
          ),
          Positioned(
            left: SizeConfig.safeBlockHorizontal * 33.3,
            right: SizeConfig.safeBlockHorizontal * 33.3,
            bottom: SizeConfig.defaultSize * 6,
            child: CustomButton(
              label: state.buttonLabel,
              onTap: () {
                state.index != 2
                    ? pageController.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn,
                      )
                    : transitionFunction();
              },
            ),
          ),
        ],
      ),
    );
  }
}

void transitionFunction() => getx.Get.off(
      () => const LogInView(),
      duration: const Duration(milliseconds: 400),
      transition: getx.Transition.rightToLeftWithFade,
    );
