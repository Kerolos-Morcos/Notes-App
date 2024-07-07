  import 'package:flutter/material.dart';

OutlineInputBorder outlineInputBorder([Color? color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    );
  }