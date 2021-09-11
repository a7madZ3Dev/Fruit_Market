import 'package:flutter/material.dart';

import '/core/style/colors.dart';
import '/core/utils/size_config.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final Color? color;
  final VoidCallback onTap;
  const CustomButton({
    required this.onTap,
    this.label,
    this.color = kMainColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50.0,
          width: SizeConfig.safeBlockHorizontal * 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: color,
          ),
          child: Center(
            child: Text(
              label!,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
}
