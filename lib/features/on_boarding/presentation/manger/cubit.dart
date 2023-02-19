import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class OnBoardingScreenCubit extends Cubit<OnBoardingScreenStates> {
  OnBoardingScreenCubit()
      : super(const OnBoardingScreenStates(
            index: 0, buttonLabel: 'Next', visible: true));

  void nextPage(int indexNumber) {
    if (indexNumber == 2) {
      emit(OnBoardingScreenStates(
          index: indexNumber, buttonLabel: 'Get Started', visible: false));
    } else {
      emit(OnBoardingScreenStates(
          index: indexNumber, buttonLabel: 'Next', visible: true));
    }
  }
}
