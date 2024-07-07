import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helper/text_field_border_helper.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      this.contentPadding});
  String hintText;
  double? contentPadding;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      scrollPhysics: const BouncingScrollPhysics(),
      onChanged: onChanged,
      style: TextStyle(
        color: Colors.grey.shade100,
      ),
      decoration: InputDecoration(
        fillColor: Colors.white,
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(kPrimaryColor),
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: contentPadding ?? 16,
        ),
      ),
      cursorColor: kPrimaryColor,
    );
  }
}
