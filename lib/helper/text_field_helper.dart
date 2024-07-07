import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

InputDecoration inputDecoration([String? hintText]) {
  return InputDecoration(
    fillColor: Colors.white,
    border: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(kPrimaryColor),
    hintText: hintText,
    hintStyle: const TextStyle(color: kPrimaryColor),
  );
}

OutlineInputBorder outlineInputBorder([Color? color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
    borderRadius: const BorderRadius.all(Radius.circular(8)),
  );
}
