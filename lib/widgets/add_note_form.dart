import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  late Color selectedColor;

  @override
  void initState() {
    super.initState();
    selectedColor = BlocProvider.of<AddNoteCubit>(context).color;
  }

  Future<void> showPicker() {
    return ColorPicker(
      showColorName: true,
      color: selectedColor,
      onColorChanged: (Color color) {
        setState(() {
          selectedColor = color;
        });
      },
    ).showPickerDialog(context).then((_) {
      BlocProvider.of<AddNoteCubit>(context).color = selectedColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Pick A Color !',
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
          ),
          const SizedBox(height: 12),
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 24),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                buttonText: 'Add Note',
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate =
                        DateFormat.yMMMMd().format(DateTime.now());
                    var noteModel = NoteModel(
                      color: selectedColor.value,
                      date: currentDate,
                      subTitle: subTitle!,
                      title: title!,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
