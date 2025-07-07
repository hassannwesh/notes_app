import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_note_cubit.dart';
import 'add_note_form.dart';

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
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNotesState>(
          listener: (context, state) {
            if(state is AddNoteFailure){
              print("filed ${state.errMassage}");
            }
             if(state is AddNoteSuccess){
               Navigator.pop(context);
             }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              //عشان متعملش متغير
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
