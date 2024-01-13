import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AuthTextField extends StatelessWidget {
  final String name;
  final String Function(String?)? validator;
  final String labelText;
  final String hintText;
  AuthTextField(
      {super.key,
      required this.name,
      this.validator,
      required this.labelText,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 8,
          ),
          FormBuilderTextField(
              name: name,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                hintText: hintText,
                hintStyle: TextStyle(color: DentsuColors.greyHintColor),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              validator: validator),
        ]);
  }
}
