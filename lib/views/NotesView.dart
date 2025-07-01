import 'package:flutter/material.dart';

import '../widgets/bottomsheetaddnotes.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(
       onPressed:()
       {
         showModalBottomSheet(context: context, builder:(context)
         {
           return AddNotesBottomSheet();
         });
       },
       child: Icon(Icons.add,color: Colors.black,),),
     body:NotesViewBody() ,
    );
  }
}

