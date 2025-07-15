import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final VoidCallback onPressed;
  final Color selectedColor;
  final Color unselectedColor;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onPressed,
    this.selectedColor = Colors.white,
    this.unselectedColor = kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, size: 28),
      color: isSelected ? selectedColor : Colors.white,
      onPressed: onPressed,
    );
  }
}