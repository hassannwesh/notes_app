import 'package:flutter/material.dart';
import 'package:notesapp/views/edit_note_view.dart';

import '../models/note_model.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 18, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
