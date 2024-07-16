import 'package:flutter/material.dart';
import 'package:notes_app/helper/button_body_helper.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  const CustomButton({super.key, required this.buttonText, this.onTap, this.isLoading = false});
  final VoidCallback? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Feedback.forTap(context);
        if (onTap != null) {
          onTap!();
        }
      },
      child: buttonBody(context, isLoading, buttonText),
    );
  }

}