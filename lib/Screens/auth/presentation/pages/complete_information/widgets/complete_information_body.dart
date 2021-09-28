import 'package:flutter/material.dart';

import '/core/widgets/custom_buttons.dart';
import '/core/widgets/space_widget.dart';
import 'complete_information _item.dart';

final GlobalKey<FormState> logInFormKey = GlobalKey<FormState>();

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Form(
          key: logInFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const SpaceWidget(heightSpace: 12.0),
                CompleteInfoItem(
                  text: 'Enter Your Name',
                  name: 'Name',
                  inputType: TextInputType.name,
                  onSaved: (value) {
                    // shopCubit.userLogInData['name'] = value;
                  },
                ),
                const SpaceWidget(heightSpace: 2.0),
                CompleteInfoItem(
                  text: 'Enter Your Phone Number',
                  name: 'Phone Number',
                  inputType: TextInputType.phone,
                  onSaved: (value) {
                    // shopCubit.userLogInData['name'] = value;
                  },
                ),
                const SpaceWidget(heightSpace: 2.0),
                CompleteInfoItem(
                  text: 'Add Your Address',
                  name: 'Address',
                  inputType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  maxLines: 5,
                  onSaved: (value) {
                    // shopCubit.userLogInData['name'] = value;
                  },
                ),
                const SpaceWidget(heightSpace: 6.0),
                CustomButton(
                  label: 'Log In',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      );
}
