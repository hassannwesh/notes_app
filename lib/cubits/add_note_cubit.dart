import 'package:bloc/bloc.dart';
import '../models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNoteInitial());
  void addNote(NoteModel note) {}
}