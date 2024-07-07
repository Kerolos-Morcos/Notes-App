import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

Padding notesListView() {
  const EdgeInsets bodyPadding = EdgeInsets.only(left: 15, right: 15, top: 13);
  return const Padding(
    padding: bodyPadding,
    child: NotesListView(),
  );
}
