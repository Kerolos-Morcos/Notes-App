import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/helper/app_bar_helper.dart';
import 'package:notes_app/helper/floating_action_button_helper.dart';
import 'package:notes_app/helper/notes_list_view_helper.dart';
import 'package:notes_app/widgets/post_search_delegate.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(
        onPressed: () {
          showSearch(
            context: context,
            delegate: PostSearchDelegate(
                notes: BlocProvider.of<GetNotesCubit>(context).notes!),
          );
        },
        title: 'Notes',
        icon: Icons.search,
        tooltip: 'Search A Note',
      ),
      body: notesListViewBody(),
      floatingActionButton: floatingActionButton(context),
    );
  }
}
