import 'package:equatable/equatable.dart';

/// for onBoarding
class OnBoardingScreenStates extends Equatable {
  final int index;
  final bool visible;
  final String buttonLabel;
  const OnBoardingScreenStates(
      {required this.index, required this.visible, required this.buttonLabel});
  @override
  List<Object> get props => [index, visible, buttonLabel];
}
