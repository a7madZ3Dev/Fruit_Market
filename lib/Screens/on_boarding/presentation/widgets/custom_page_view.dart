import 'package:flutter/material.dart';

import '/screens/on_boarding/cubit/cubit.dart';
import 'page_view_item.dart';

class CustomPageView extends StatelessWidget {
  final PageController pageController;

  const CustomPageView({required this.pageController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardingCubit = OnBoardingCubit.get(context);
    return PageView.builder(
      controller: pageController,
      onPageChanged: (index) {
        index++;
        onBoardingCubit.index = index;
        onBoardingCubit.checkPage();
      },
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => PageViewItem(
        item: onBoardingCubit.boarding[index],
      ),
      itemCount: onBoardingCubit.getLenght,
    );
  }
}
