import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_appBar.dart';

import 'Custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextFiled(hintText: 'Title', maxLines: 1),
          SizedBox(height: 18),
          CustomTextFiled(hintText: 'Content', maxLines: 5),

        ],
      ),
    );
  }
}
