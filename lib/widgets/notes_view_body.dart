import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_appBar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
