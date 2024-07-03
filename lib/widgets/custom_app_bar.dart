import 'package:flutter/material.dart';

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
      actions: [
        IconButton(
          tooltip: 'Search A Note',
          onPressed: () {},
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: const Icon(
              Icons.search,
            ),
          ),
        ),
      ],
    );
  }
}