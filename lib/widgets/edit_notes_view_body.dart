import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.noteModel,
    required this.onTitleChanged,
    required this.onSubTitleChanged,
  });
  final NoteModel noteModel;
  final void Function(String)? onTitleChanged, onSubTitleChanged;

  static const _editNotesViewPadding =
      EdgeInsets.only(top: 50, right: 16, left: 16);

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EditNoteViewBody._editNotesViewPadding,
      children: [
        CustomTextField(
          hintText: widget.noteModel.title,
          onChanged: widget.onTitleChanged,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          hintText: widget.noteModel.subTitle,
          maxLines: 6,
          onChanged: widget.onSubTitleChanged,
        ),
      ],
    );
  }
}
