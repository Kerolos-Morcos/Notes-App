import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;
  static const _editNotesViewPadding =
      EdgeInsets.only(top: 50, right: 16, left: 16);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: _editNotesViewPadding,
      children: [
        CustomTextField(hintText: noteModel.title),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(hintText: noteModel.subTitle, maxLines: 6),
      ],
    );
  }
}
