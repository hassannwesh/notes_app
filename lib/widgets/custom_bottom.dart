import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';
class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key,this.onTap});
  final void Function()? onTap;
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text('Add',style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}
