
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  List<Color> color=[
    Color(0xFFADD8E6), // Light Blue
    Color(0xFFB0E0E6), // Powder Blue
    Color(0xFFAFEEDE), // Pale Turquoise
    Color(0xFF8FBC8F), // Dark Sea Green
    Color(0xFF98FB98), // Pale Green
    Color(0xFFB2AC88), // Sage
    Color(0xFFFFFFE0), // Light Yellow
    Color(0xFFFFE4B5), // Moccasin
    Color(0xFFFFDAB9), // Peach Puff
    Color(0xFFFFB6C1), // Light Pink
    Color(0xFFDDA0DD), // Plum
    Color(0xFFE6E6FA), // Lavender
    Color(0xFFD8BFD8), // Thistle
    Color(0xFFC0C0C0), // Silver
    Color(0xFFD3D3D3), // Light Gray
    Color(0xFFF5DEB3), // Wheat
    Color(0xFFFFEBCD), // Blanched Almond
    Color(0xFFCDB7B5), // Rosy Brown (muted)
    Color(0xFFB0C4DE), // Light Steel Blue
    Color(0xFFF08080), // Light Coral (muted)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20*2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: color.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child:  GestureDetector(
                onTap: (){
                  currentIndex=index;
                  BlocProvider.of<AddNoteCubit>(context).color=color[index];
                  setState(() {});
                },
                child: ColorItem(
                  color: color[index],
                  isActive: currentIndex==index,
                ),
              ),
            );
          }),
    );
  }
}
