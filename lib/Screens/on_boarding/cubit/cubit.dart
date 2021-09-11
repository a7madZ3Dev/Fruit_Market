import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/models/on_boarding_model.dart';
import 'states.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  OnBoardingCubit() : super(OnBoardingInitialState());

  /// get object from cubit class
  static OnBoardingCubit get(BuildContext context) =>
      BlocProvider.of<OnBoardingCubit>(context);

  int index = 0;
  bool visible = true;
  String labelButton = 'Next';
  final List<BoardingModel> boarding = [
    BoardingModel(
      title: 'E Shopping',
      subTitle: 'Explore  top organic fruits & grab them',
      image: 'assets/images/on_boarding1.png',
    ),
    BoardingModel(
      title: 'Delivery on the way',
      subTitle: 'Get your order by speed delivery',
      image: 'assets/images/on_boarding2.png',
    ),
    BoardingModel(
      title: 'Delivery Arrived',
      subTitle: 'Order is arrived at your Place',
      image: 'assets/images/on_boarding3.png',
    ),
  ];

  int get getLenght => boarding.length;

  void checkPage() {
    if (index == getLenght) {
      visible = false;
      labelButton = 'Get Started';
      emit(OnBoardingLastPageState());
    } else {
      visible = true;
      labelButton = 'Next';
      emit(OnBoardingOtherPageState());
    }
  }
}
