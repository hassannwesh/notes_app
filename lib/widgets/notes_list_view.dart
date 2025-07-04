import 'package:flutter/material.dart';
import 'package:notesapp/widgets/notes_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: const NotesItem(),
        );
      }),
    );
  }
}
