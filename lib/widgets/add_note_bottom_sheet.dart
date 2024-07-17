import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/helper/show_snack_bar.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    var bottomSheetBodyPadding = EdgeInsets.only(
      top: 50,
      right: 20,
      left: 20,
      bottom: MediaQuery.of(context).viewInsets.bottom,
    );
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<GetNotesCubit>(context).fetchAllNotes();
            Navigator.of(context).pop();
            showSnackBar(context, 'Note Added Successfully !',
                backgroundColor: Colors.green);
          }

          if (state is AddNoteFailure) {
            log('failed ${state.errorMessage}');
            showSnackBar(context, 'Something Went Wrong, Try Again !',
                backgroundColor: Colors.red);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: bottomSheetBodyPadding,
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
