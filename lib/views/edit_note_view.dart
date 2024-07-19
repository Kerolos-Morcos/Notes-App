import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/helper/app_bar_helper.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_notes_view_body.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key});
  static const id = 'EditNoteView';

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  @override
  Widget build(BuildContext context) {
    NoteModel noteModel =
        ModalRoute.of(context)!.settings.arguments as NoteModel;
    String? title, subTitle;
    void saveNote() {
      noteModel.title = title ?? noteModel.title;
      noteModel.subTitle = subTitle ?? noteModel.subTitle;
      noteModel.save();
      BlocProvider.of<GetNotesCubit>(context).fetchAllNotes();
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: customAppBar(
        onPressed: saveNote,
        title: 'Edit Note',
        icon: Icons.check,
        appBarBottomLineOpacity: 0,
        automaticallyImplyLeading: false,
        tooltip: 'Save Edits',
      ),
      body: EditNoteViewBody(
        noteModel: noteModel,
        onTitleChanged: (value) => title = value,
        onSubTitleChanged: (value) => subTitle = value,
      ),
    );
  }
}
