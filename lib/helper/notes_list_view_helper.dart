import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

Padding notesListView() {
    return const Padding(
      padding: NotesView.bodyPadding,
      child: NotesListView(),
    );
  }