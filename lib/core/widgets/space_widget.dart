import 'package:flutter/material.dart';

import '/core/utils/size_config.dart';

class SpaceWidget extends StatelessWidget {
  final double heightSpace;
  final double widthSpace;
  const SpaceWidget({
    Key? key,
    this.heightSpace = 0.0,
    this.widthSpace = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: SizeConfig.defaultSize * heightSpace,
        width: SizeConfig.defaultSize * widthSpace,
      );
}
