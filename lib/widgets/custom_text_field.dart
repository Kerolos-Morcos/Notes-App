import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helper/text_field_helper.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLines, this.onSaved});
  final String hintText;
  final int? maxLines;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      style: TextStyle(color: Colors.grey.shade100),
      decoration: inputDecoration(hintText),
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
    );
  }
}
