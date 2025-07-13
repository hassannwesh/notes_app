
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/models/note_model.dart';

import '../constant.dart';
import '../cubits/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ? CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 17,
        backgroundColor: color,
      ),
    ):  CircleAvatar(
      backgroundColor: color,
      radius: 17,

    );
  }
}




class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}


class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;

  @override
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
                  BlocProvider.of<AddNoteCubit>(context).color=kColor[index];
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
