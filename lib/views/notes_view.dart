import 'package:flutter/material.dart';
import 'package:notes_app/helper/app_bar_helper.dart';
import 'package:notes_app/helper/floating_action_button_helper.dart';
import 'package:notes_app/helper/notes_list_view_helper.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(
        title: 'Notes',
        icon: Icons.search,
        tooltip: 'Search A Note',
      ),
      body: notesListViewBody(),
      floatingActionButton: floatingActionButton(context),
    );
  }
}
