part of 'add_note_cubit.dart';
abstract class AddNotesState{}
class AddNoteInitial extends AddNotesState{}
class AddNoteLoading extends AddNotesState{}
class AddNoteSuccess extends AddNotesState{}
class AddNoteFailure extends AddNotesState{
  final String errMassage;
  AddNoteFailure(this.errMassage);


}
