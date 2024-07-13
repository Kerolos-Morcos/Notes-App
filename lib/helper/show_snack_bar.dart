import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message,
      {MaterialColor? backgroundColor}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white),),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.fixed,
        elevation: 10,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
          textColor: Colors.white,
        ),
      ),
    );
  }