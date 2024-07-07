import 'package:flutter/material.dart';

FloatingActionButton floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Add A Note',
      backgroundColor: Colors.grey.shade800,
      child: const Icon(
        Icons.add,
      ),
    );
  }