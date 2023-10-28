import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final TextEditingController controller;

  final FormFieldValidator<String>? validator;
  final int maxLines;

  final String title;

  CustomText(
      {super.key,
      required this.title,
      required this.controller,
      this.validator,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      validator: validator,
      decoration: InputDecoration(
        hintText: title,
      ),
    );
  }
}
