import 'package:flutter/material.dart';
import 'package:notes_app/helper/app_bar_helper.dart';
import 'package:notes_app/helper/floating_action_button_helper.dart';
import 'package:notes_app/helper/notes_list_view_helper.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: notesListView(),
      floatingActionButton: floatingActionButton(context),
    );
  }
}
