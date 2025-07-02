import 'package:flutter/material.dart';

import 'Custom_text_filed.dart';
import 'custom_bottom.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 16,
        left: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,//بيخلي المحتوى يترفع تلقائياً لما الكيبورد تظهر
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 30),
            CustomTextFiled(hintText: 'Title', maxLines: 1),
            SizedBox(height: 18),
            CustomTextFiled(hintText: 'Content', maxLines: 5),
            SizedBox(height: 60),
            CustomBottom(),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
