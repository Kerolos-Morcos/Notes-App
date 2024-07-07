import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});
  static const _bottomSheetBodyPadding =
      EdgeInsets.only(top: 50, right: 20, left: 20);

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AddNoteBottomSheet._bottomSheetBodyPadding,
      child: Column(
        children: [
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 16),
          CustomTextField(hintText: 'Content', maxLines: 5),
          SizedBox(height: 24),
          CustomButton(buttonText: 'Add Note'),
        ],
      ),
    );
  }
}
