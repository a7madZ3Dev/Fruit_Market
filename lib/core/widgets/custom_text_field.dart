import 'package:flutter/material.dart';

import '/core/style/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? inputType;
  final String? Function(String? value) validate;
  final ValueSetter? onSubmit;
  final ValueSetter? onChange;
  final ValueSetter? onSaved;
  final TextEditingController? controller;
  final IconData? suffix;
  final IconData? prefix;
  final Color? fillColor;
  final TextInputAction? textInputAction;
  final String? initialValue;
  final bool isPassword;
  final int? maxLines;

  const CustomTextField({
    required this.validate,
    this.textInputAction = TextInputAction.next,
    this.inputType = TextInputType.text,
    this.onSubmit,
    this.onChange,
    this.onSaved,
    this.controller,
    this.suffix,
    this.prefix,
    this.fillColor = Colors.transparent,
    this.initialValue,
    this.isPassword = false,
    this.maxLines = 1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        key: key,
        controller: controller,
        initialValue: initialValue,
        keyboardType: inputType,
        obscureText: isPassword,
        maxLines: maxLines,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        validator: validate,
        onSaved: onSaved,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFCCCCCC),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: kMainColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
}
