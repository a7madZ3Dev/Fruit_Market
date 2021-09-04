import 'package:flutter/material.dart';

import '/core/utils/size_config.dart';
import '/core/widgets/space_widget.dart';
import '/models/on_boarding_model.dart';

class PageViewItem extends StatelessWidget {
  final BoardingModel item;

  const PageViewItem({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SpaceWidget(heightSpace: 16),
          Image.asset(
            item.image,
            fit: BoxFit.contain,
            height: SizeConfig.safeBlockVerticalWithOutAppBar * 40,
            width: SizeConfig.safeBlockHorizontal * 95,
          ),
          const SpaceWidget(heightSpace: 2),
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff2f2e41),
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
          const SpaceWidget(heightSpace: 2),
          Text(
            item.subTitle,
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
