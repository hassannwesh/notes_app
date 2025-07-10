import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit.dart';
import 'custom_appBar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override

  State<NotesViewBody> createState() => _NotesViewBodyState();
}


class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState(){
  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppbar(title: 'Notes',icon: Icons.search,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
