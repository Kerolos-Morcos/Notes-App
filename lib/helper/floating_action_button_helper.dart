import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

FloatingActionButton floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        showModalBottomSheet(
          context: context,
          builder: (context){
          return const AddNoteBottomSheet();
        });
      },
      tooltip: 'Add A Note',
      backgroundColor: Colors.grey.shade800,
      child: const Icon(
        Icons.add,
      ),
    );

  }