import 'package:flutter/material.dart';

import 'Custom_text_filed.dart';
class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        SizedBox(height: 30,),
        CustomTextFiled(),
      ],),
    );
  }
}
