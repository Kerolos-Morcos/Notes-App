import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListViewBody extends StatefulWidget {
  const NotesListViewBody({
    super.key,
  });

  @override
  State<NotesListViewBody> createState() => _NotesListViewBodyState();
}

class _NotesListViewBodyState extends State<NotesListViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetNotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<GetNotesCubit>(context).notes!;
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: notes.length,
          padding: const EdgeInsets.only(bottom: 5),
          itemBuilder: (context, index) {
            return CustomNoteItem(noteModel: notes[index],);
          },
        );
      },
    );
  }
}
