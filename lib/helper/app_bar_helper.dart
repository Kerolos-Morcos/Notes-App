import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

PreferredSizeWidget customAppBar() {
    return const PreferredSize(
      preferredSize: Size.fromHeight(56),
      child: CustomAppBar(title: 'Notes',),
    );
  }