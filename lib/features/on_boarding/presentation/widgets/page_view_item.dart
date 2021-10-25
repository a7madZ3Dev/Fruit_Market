import 'package:flutter/material.dart';

import '/core/utils/size_config.dart';
import '/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;

  const PageViewItem({
    required this.title,
    required this.subTitle,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SpaceWidget(heightSpace: 16),
          Image.asset(
            image,
            fit: BoxFit.contain,
            height: SizeConfig.safeBlockVerticalWithOutAppBar * 40,
            width: SizeConfig.safeBlockHorizontal * 95,
          ),
          const SpaceWidget(heightSpace: 2),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff2f2e41),
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
          const SpaceWidget(heightSpace: 2),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xff78787c),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          )
        ],
      );
}
