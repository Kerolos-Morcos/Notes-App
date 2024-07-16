import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListViewBody extends StatelessWidget {
  const NotesListViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 6,
      padding: const EdgeInsets.only(bottom: 5),
      itemBuilder: (context, index) {
        return const CustomNoteItem();
      },
    );
  }
}
