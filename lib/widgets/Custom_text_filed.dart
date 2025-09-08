import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    this.onSaved,
    this.hint,
    this.maxLines = 1,
    this.onChanged,
    this.controller,
    this.validator,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.borderRadius = 16.0, // قيمة افتراضية للـ borderRadius
    this.fillColor, // لون الخلفية
  });

  final String? hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry padding; // للتحكم في الـ padding الداخلي
  final double borderRadius; // للتحكم في الـ borderRadius
  final Color? fillColor; // لون تعبئة الـ TextField

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator ??
              (value) {
            if (value?.isEmpty ?? true) {
              return 'Field is required';
            }
            return null;
          },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      style: const TextStyle(color: Colors.white), // لون النص المدخل
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
        filled: true, // لتفعيل خاصية fillColor
        fillColor: fillColor ?? Colors.white.withOpacity(0.05), // لون الخلفية الافتراضي
        contentPadding: padding, // تطبيق الـ padding هنا
        border: buildBorder(borderRadius), // استخدام الـ borderRadius
        enabledBorder: buildBorder(borderRadius),
        focusedBorder: buildBorder(borderRadius, kPrimaryColor),
        errorBorder: buildBorder(borderRadius, Colors.redAccent),
        focusedErrorBorder: buildBorder(borderRadius, Colors.red),
      ),
    );
  }

  OutlineInputBorder buildBorder(double radius, [Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(color: color ?? Colors.white.withOpacity(0.4)),
    );
  }
}