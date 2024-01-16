import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class GreyDropDownField extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final Color? hintColor;
  final String name;
  final String? Function(dynamic)? validator;
  final Color? fillColor;
  final List<DropdownMenuItem<dynamic>> items;
  const GreyDropDownField(
      {super.key,
      required this.hintText,
      this.hintColor,
      this.fillColor,
      this.keyboardType,
      this.validator,
      required this.items,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown(
      name: name,
      initialValue: null,
      itemHeight: 50,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
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
            color: DentsuColors.lightGrey,
          ),
        ),
      ),
      items: items,
    );
  }
}
