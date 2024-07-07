import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helper/text_field_helper.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.contentPadding});
  final String hintText;
  final double? contentPadding;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.grey.shade100),
      decoration: inputDecoration(hintText, contentPadding),
      cursorColor: kPrimaryColor,
    );
  }
}
