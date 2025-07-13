
import 'package:flutter/cupertino.dart';

import '../constant.dart';
import '../models/note_model.dart';
import 'color_list_view.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;
  @override
  @override
  void initState() {
    super.initState();
    currentIndex=kColor.indexOf(Color(widget.note.color));

  }
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20*2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColor.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child:  GestureDetector(
                onTap: (){
                  currentIndex=index;
                  widget.note.color=kColor[index].value;

                  setState(() {});
                },
                child: ColorItem(
                  color: kColor[index],
                  isActive: currentIndex==index,
                ),
              ),
            );
          }),
    );
  }
}
