import 'package:flutter/material.dart';
import 'package:notes_app/helper/app_bar_helper.dart';
import 'package:notes_app/widgets/edit_notes_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static const id = 'EditNoteView';
  static const _editNotesViewPadding =
      EdgeInsets.only(top: 50, right: 16, left: 16);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Edit Note',
        icon: Icons.check,
        appBarBottomLineOpacity: 0,
        automaticallyImplyLeading: false,
        tooltip: 'Save Edits',
      ),
      body: const EditNoteViewBody(
        editNotesViewPadding: _editNotesViewPadding,
      ),
    );
  }
}
