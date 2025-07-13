import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_appBar.dart';
import 'Custom_text_filed.dart';
import 'edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppbar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          CustomTextFiled(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
            maxLines: 1,
          ),
          const SizedBox(height: 18),
          CustomTextFiled(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subtitle,
            maxLines: 5,
          ),
          const SizedBox(height: 18),
          EditNoteColorList(
            note: widget.note,
          ),

        ],
      ),
    );
  }
}
