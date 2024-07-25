import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class PostSearchDelegate extends SearchDelegate {
  PostSearchDelegate({required this.notes});

  final List<NoteModel> notes;
  List<NoteModel> results = [];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query.isEmpty ? close(context, null) : query = '',
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) => results.isEmpty
      ? const Center(
          child: Text('No Results', style: TextStyle(fontSize: 24)),
        )
      : Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 13),
            child: Column(
              children: results
                  .map((note) => CustomNoteItem(noteModel: note))
                  .toList(),
            ),
          ),
        );

  @override
  Widget buildSuggestions(BuildContext context) {
    results = notes.where((NoteModel note) {
      final String title = note.title.toLowerCase();
      final String body = note.subTitle.toLowerCase();
      final String input = query.toLowerCase();

      return title.contains(input) || body.contains(input);
    }).toList();

    return results.isEmpty
        ? const Center(
            child: Text('No Results !', style: TextStyle(fontSize: 24)),
          )
        : Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 13),
            child: ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                return CustomNoteItem(noteModel: results[index]);
              },
            ),
          );
  }
}
