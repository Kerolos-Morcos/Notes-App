import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: NotesViewBody(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add A Note',
        backgroundColor: Colors.grey.shade800,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}



