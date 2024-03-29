import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart' as getx;

import '/core/constant.dart';
import '/core/style/textStyles.dart';
import '/core/utils/size_config.dart';
import '/core/widgets/custom_buttons.dart';
import '/core/widgets/space_widget.dart';
import '../../../pages/complete_information/complete_information_view.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            kLogo,
            fit: BoxFit.contain,
            height: SizeConfig.safeBlockVerticalWithOutAppBar * 30,
            width: SizeConfig.safeBlockHorizontal * 70,
          ),
          Text.rich(
            TextSpan(
              style: logInTitleMainStyle,
              children: [
                TextSpan(
                  text: 'F',
                  style: logInTitleFStyle,
                ),
                TextSpan(
                  text: 'ruit Market',
                  style: logInTitleStyle,
                ),
              ],
            ),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
          const SpaceWidget(heightSpace: 7.0),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    onTap: () {
                      getx.Get.to(
                        () => const CompleteInformationView(),
                        duration: const Duration(milliseconds: 400),
                        transition: getx.Transition.rightToLeftWithFade,
                      );
                    },
                    iconData: FontAwesomeIcons.google,
                    iconColor: const Color(0xFFdb3236),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    onTap: () {
                      getx.Get.to(
                        () => const CompleteInformationView(),
                        duration: const Duration(milliseconds: 400),
                        transition: getx.Transition.rightToLeftWithFade,
                      );
                    },
                    iconData: FontAwesomeIcons.facebook,
                    iconColor: const Color(0xFF4267B2),
                  ),
                ),
              ),
            ],
          )
        ],
      );
}
