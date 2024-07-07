import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
      child: Column(
        children: [
          CustomTextField(hintText: 'Title'),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: 'Content',
            contentPadding: 65,
          )
        ],
      ),
    );
  }
}
