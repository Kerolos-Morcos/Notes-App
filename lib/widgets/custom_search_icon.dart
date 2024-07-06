import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(right: 15),
      tooltip: 'Search A Note',
      onPressed: () {},
      icon: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: const Icon(
          Icons.search,
        ),
      ),
    );
  }
}