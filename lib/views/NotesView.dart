import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';
import '../widgets/bottom_sheet_add_notes.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset دا عشان لما تفتح الكيبورد ما يغطيش علي الbottom sheet لان الScaffold بتعدل حجم الbody تمم
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,// دا عشان ما يبقاغ ارتفاع ال (BOTTOM SHEET) ثابت تمم
            builder: (context) {
              return AddNotesBottomSheet();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: NotesViewBody(),
    );
  }
}
