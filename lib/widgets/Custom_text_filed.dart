import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText, required this.maxLines});
  final String hintText;

  final int maxLines ;

  @override

  Widget build(BuildContext context) {
    return TextField(
      maxLines:maxLines ,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      )

    );
  }
  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color:color ?? Colors.white
      )

    );
}
}
