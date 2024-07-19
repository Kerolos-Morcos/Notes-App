import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({
    super.key,
    required this.tooltip,
    required this.icon, required this.onPressed,
  });
  final String tooltip;
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(right: 15),
      tooltip: tooltip,
      onPressed: onPressed,
      icon: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
