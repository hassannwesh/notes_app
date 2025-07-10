part of 'notes_cubit.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {}

class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure(this.errorMessage);
}
