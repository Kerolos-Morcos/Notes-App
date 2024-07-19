import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

PreferredSizeWidget customAppBar({
  required String title,
  required IconData icon,
  double? appBarBottomLineOpacity,
  bool? automaticallyImplyLeading,
  required String tooltip,
  required void Function() onPressed,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(56),
    child: CustomAppBar(
      onPressed: onPressed,
      title: title,
      icon: icon,
      appBarBottomLineOpacity: appBarBottomLineOpacity ?? 1,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      tooltip: tooltip,
    ),
  );
}
