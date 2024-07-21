import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
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
  late Color currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = Color(widget.noteModel.color);
  }

  Future<void> showPicker() async {
    final initialColor = currentColor;
    final colorChanged = await ColorPicker(
      showColorName: true,
      color: currentColor,
      onColorChanged: (Color color) {
        setState(() {
          currentColor = color;
        });
      },
    ).showPickerDialog(context);

    colorChanged != true
        ? setState(() {
            currentColor = initialColor;
          })
        : widget.noteModel.color = currentColor.value;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EditNoteViewBody._editNotesViewPadding,
      children: [
        buildColorPicker(),
        const SizedBox(
          height: 20,
        ),
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

  Row buildColorPicker() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Pick A New Color !',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        ElevatedButton(
          onPressed: showPicker,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(kPrimaryColor),
          ),
          child: const Text(
            'Pick',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
