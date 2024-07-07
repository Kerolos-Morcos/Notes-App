import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

Container buttonBody(BuildContext context, String buttonText) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
