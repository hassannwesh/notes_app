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
        bottom:
            MediaQuery.of(context)
                .viewInsets
                .bottom, //بيخلي المحتوى يترفع تلقائياً لما الكيبورد تظهر
      ),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 30),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
            maxLines: 1,
          ),
          SizedBox(height: 18),
          CustomTextFiled(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 60),
          CustomBottom(
onTap: (){
  if(formKey.currentState!.validate()){
    formKey.currentState!.save();
  }
  else{
    autoValidateMode=AutovalidateMode.always;
    setState(() {

    });
  }
},
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
