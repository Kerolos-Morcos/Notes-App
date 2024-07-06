import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

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

