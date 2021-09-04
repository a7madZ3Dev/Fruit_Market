import 'package:flutter/material.dart';

import 'extenstions.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double safeBlockHorizontal;
  static late double safeBlockVerticalWithAppBar;
  static late double safeBlockVerticalWithOutAppBar;
  static late double defaultSize;
  static late bool isPortrait;
  static late Orientation orientation;

  void init(BuildContext context) {
    screenWidth = context.width;

    screenHeight = context.height;

    safeBlockHorizontal =
        (screenWidth - (context.padding.left + context.padding.right)) / 100;

    safeBlockVerticalWithAppBar = (screenHeight -
            (context.padding.top + context.padding.bottom) -
            AppBar().preferredSize.height) /
        100;

    safeBlockVerticalWithOutAppBar =
        (screenHeight - (context.padding.top + context.padding.bottom) - 0) /
            100;

    orientation = context.orientation;

    isPortrait = context.portrait;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}
