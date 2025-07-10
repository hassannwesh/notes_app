import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import '../constant.dart';
import '../models/note_model.dart';
part 'notes_state.dart';
class NotesCubit extends Cubit<NotesState>{
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      notes = noteBox.values.toList();
      print('Notes fetched: ${notes?.length} notes'); // هيطبع عدد الملاحظات
      if (notes != null && notes!.isNotEmpty) {
        print('First note title: ${notes![0].title}');}
        emit(NotesSuccess()); // إصدار حالة النجاح بعد جلب الملاحظات
    } catch (e) {
      emit(NotesFailure(e.toString())); // إصدار حالة الخطأ إذا حدثت مشكلة
    }
  }
}