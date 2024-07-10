import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  static const _editNotesViewPadding =
      EdgeInsets.only(top: 50, right: 16, left: 16);

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
