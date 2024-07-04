import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Notes',
        style: TextStyle(fontSize: 25),
      ),
      actions: const [
        CustomSearchIcon(),
      ],
    );
  }
}

