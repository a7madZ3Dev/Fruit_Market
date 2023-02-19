import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/on_boarding/presentation/manger/cubit.dart';
import 'page_view_item.dart';

class CustomPageView extends StatelessWidget {
  final PageController pageController;

  const CustomPageView({required this.pageController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => PageView(
        controller: pageController,
        onPageChanged: (index) {
          // BlocProvider.of<OnBoardingScreenCubit>(context).nextPage(index);
          context.read<OnBoardingScreenCubit>().nextPage(index);
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
