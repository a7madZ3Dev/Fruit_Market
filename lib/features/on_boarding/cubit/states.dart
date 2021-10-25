import 'package:equatable/equatable.dart';

/// for onBoarding
abstract class OnBoardingStates extends Equatable {
  const OnBoardingStates();
  @override
  List<Object> get props => [];
}

class OnBoardingInitialState extends OnBoardingStates {
  const OnBoardingInitialState();
}

class OnBoardingLastPageState extends OnBoardingStates {
  const OnBoardingLastPageState();
}

class OnBoardingOtherPageState extends OnBoardingStates {
  const OnBoardingOtherPageState();
}
