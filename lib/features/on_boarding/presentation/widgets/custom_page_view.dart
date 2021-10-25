import 'package:flutter/material.dart';

import '/features/on_boarding/cubit/cubit.dart';
import 'page_view_item.dart';

class CustomPageView extends StatelessWidget {
  final PageController pageController;

  const CustomPageView({required this.pageController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardingCubit = OnBoardingCubit.get(context);
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        onBoardingCubit.index = ++index;
        onBoardingCubit.checkPage();
      },
      physics: const BouncingScrollPhysics(),
      children: const [
        PageViewItem(
          title: 'E Shopping',
          subTitle: 'Explore  top organic fruits & grab them',
          image: 'assets/images/on_boarding1.png',
        ),
        PageViewItem(
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
          image: 'assets/images/on_boarding2.png',
        ),
        PageViewItem(
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your Place',
          image: 'assets/images/on_boarding3.png',
        ),
      ],
    );
  }
}
