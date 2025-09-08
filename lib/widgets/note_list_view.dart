import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:notesapp/cubits/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/notes_item.dart';

class CustomListView extends StatelessWidget {
  final Widget Function(BuildContext context, NoteModel note) itemBuilderForNote;
  const CustomListView({super.key, required this.itemBuilderForNote});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final NoteModel note = notes[index];
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child:itemBuilderForNote(context, note),
              );
            },
          ),
        );
      },
    );
  }
}
