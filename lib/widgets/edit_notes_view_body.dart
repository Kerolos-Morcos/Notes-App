import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
    required EdgeInsets editNotesViewPadding,
  }) : _editNotesViewPadding = editNotesViewPadding;

  final EdgeInsets _editNotesViewPadding;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: _editNotesViewPadding,
      children: const [
        CustomTextField(hintText: 'Title'),
        SizedBox(
          height: 20,
        ),
        CustomTextField(hintText: 'Content', maxLines: 6),
      ],
    );
  }
}