import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  OnBoardingCubit() : super(const OnBoardingInitialState());

  /// get object from cubit class
  static OnBoardingCubit get(BuildContext context) =>
      BlocProvider.of<OnBoardingCubit>(context);

  int index = 0;
  bool visible = true;
  String labelButton = 'Next';

  void checkPage() {
    if (index == 3) {
      visible = false;
      labelButton = 'Get Started';
      emit(const OnBoardingLastPageState());
    } else {
      visible = true;
      labelButton = 'Next';
      emit(const OnBoardingOtherPageState());
    }
  }
}
