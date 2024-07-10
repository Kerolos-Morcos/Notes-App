import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.appBarBottomLineOpacity,
    required this.automaticallyImplyLeading,
    required this.tooltip,
  });
  final String title;
  final IconData icon;
  final double appBarBottomLineOpacity;
  final bool automaticallyImplyLeading;
  final String tooltip;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.black12,
      bottomOpacity: appBarBottomLineOpacity,
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
      actions: [
        CustomAppBarIcon(
          icon: icon,
          tooltip: tooltip,
        ),
      ],
    );
  }
}
