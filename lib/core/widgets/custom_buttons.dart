import 'package:flutter/material.dart';

import '/core/style/colors.dart';
import '/core/utils/size_config.dart';
import 'space_widget.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final VoidCallback onTap;
  const CustomButton({
    required this.onTap,
    required this.label,
    this.buttonColor = kMainColor,
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
            color: buttonColor,
          ),
          child: Center(
            child: Text(
              label,
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

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    required this.onTap,
    required this.iconData,
    required this.iconColor,
    this.text = 'Log in with',
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData iconData;
  final VoidCallback onTap;
  final Color iconColor;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50.0,
          width: SizeConfig.safeBlockHorizontal * 100,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFF707070),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
                textAlign: TextAlign.left,
              ),
              const SpaceWidget(widthSpace: 0.5),
              Icon(
                iconData,
                color: iconColor,
              ),
            ],
          ),
        ),
      );
}
