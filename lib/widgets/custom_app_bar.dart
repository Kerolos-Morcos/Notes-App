import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.black12,
       bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          margin: const EdgeInsets.only(top: 5),
          color: Colors.grey,
          height: 1.0,
          width: 375,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 25),
      ),
      actions: const [
        CustomAppBarIcon(icon: Icons.search, tooltip: 'Search A Note',),
      ],
    );
  }
}

