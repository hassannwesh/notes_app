import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit.dart';
import '../models/note_model.dart';
import '../views/Tasks_View.dart';
import 'custom_appBar.dart';
import 'custom_bottom_navigation_bar.dart';
import 'note_list_view.dart';

class CustomViewBody extends StatefulWidget {
  const CustomViewBody({super.key, required this.title, required this.itemWidgetBuilder});
  final Widget Function(BuildContext context, NoteModel note) itemWidgetBuilder;
  final String title;
  @override
  State<CustomViewBody> createState() => _CustomViewBodyState();
}

class _CustomViewBodyState extends State<CustomViewBody> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
           CustomAppbar(
             title:widget.title,icon: Icons.settings,),
          Expanded(child: CustomListView(
            itemBuilderForNote: widget.itemWidgetBuilder,
          )),
        ],
      ),
    );
  }
}
