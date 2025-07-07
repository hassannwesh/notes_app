import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constant.dart';
import '../models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNoteInitial());
   addNote(NoteModel note) async{
     emit(AddNoteLoading());
     try{
       var noteBox=Hive.box<NoteModel>(kNotesBox);
       emit(AddNoteSuccess());
       await noteBox.add(note);
     }catch(e){
       AddNoteFailure(e.toString());
     }
   }
}