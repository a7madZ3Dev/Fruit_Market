import 'package:flutter/material.dart';

import '/core/style/textStyles.dart';
import '/core/widgets/custom_text_field.dart';

class CompleteInfoItem extends StatelessWidget {
  final ValueSetter? onSaved;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final String text;
  final String? textFieldName;
  final int maxLines;

  const CompleteInfoItem({
    required this.text,
    required this.textFieldName,
    this.onSaved,
    this.textInputAction = TextInputAction.next,
    this.inputType = TextInputType.text,
    this.maxLines = 1,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            style: textFieldLabelStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: CustomTextField(
              validate: (value) {
                if (value!.trim().isEmpty) {
                  return '$textFieldName field must not be empty!';
                }
              },
              onSaved: onSaved,
              maxLines: maxLines,
              inputType: inputType,
              textInputAction: textInputAction,
            ),
          ),
        ],
      );
}
