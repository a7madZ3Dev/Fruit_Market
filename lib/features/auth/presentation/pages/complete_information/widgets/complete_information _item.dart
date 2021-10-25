import 'package:flutter/material.dart';

import '/core/widgets/custom_text_field.dart';

class CompleteInfoItem extends StatelessWidget {
  final ValueSetter? onSaved;
  final TextInputType? inputType;
  final TextInputAction? textInputAction;
  final String text;
  final String? textFieldName;
  final int? maxLines;

  const CompleteInfoItem({
    required this.text,
    required this.textFieldName,
    this.onSaved,
    this.textInputAction = TextInputAction.next,
    this.inputType,
    this.maxLines,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xff0c0b0b),
              fontWeight: FontWeight.w600,
              height: 1.5625,
            ),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
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
