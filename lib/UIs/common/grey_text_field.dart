import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class GreyTextField extends StatelessWidget {
  final bool? obscureText;
  final String hintText;
  final TextInputType? keyboardType;
  final Color? hintColor;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final String name;
  final void Function(String?)? onChanged;
  final String? helperText;
  final int? maxLines;
  final String? Function(String?)? validator;
  final VoidCallback? onObscureTextPressed;
  const GreyTextField(
      {super.key,
      this.obscureText,
      this.validator,
      this.helperText,
      this.onChanged,
      required this.hintText,
      this.onObscureTextPressed,
      this.backgroundColor,
      this.prefixIcon,
      this.hintColor,
      this.maxLines,
      this.keyboardType,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        helperText != null
            ? Text(
                helperText ?? '',
                style: const TextStyle(
                  fontSize: 14,
                ),
              )
            : Container(),
        FormBuilderTextField(
          obscureText: obscureText ?? false,
          onChanged: onChanged,
          name: name,
          validator: validator,
          maxLines: maxLines ?? 1,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hintText,
            fillColor: backgroundColor ?? DentsuColors.lightGrey,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            hintStyle: TextStyle(
              color: hintColor ?? DentsuColors.lightGrey,
              fontSize: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: DentsuColors.lightGrey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: DentsuColors.lightGrey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: DentsuColors.brightPurple,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
