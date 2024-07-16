part of 'get_notes_cubit.dart';

sealed class GetNotesState {}

final class GetCubitInitial extends GetNotesState {}

final class GetNoteLoading extends GetNotesState {}

final class GetNoteSuccess extends GetNotesState {
  final List<NoteModel> notes;
  GetNoteSuccess(this.notes);
}

final class GetNoteFailure extends GetNotesState {
  final String errorMessage;

  GetNoteFailure(this.errorMessage);
}
