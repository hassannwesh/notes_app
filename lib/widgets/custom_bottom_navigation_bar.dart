import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';
import 'custom_icon_button.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomIconButton(
            icon: Icons.book_outlined,
            isSelected: selectedIndex == 0,
            onPressed: () => onItemTapped(0),
            selectedColor: selectedIndex == 0 ? kPrimaryColor : Colors.white,          ),
          CustomIconButton(
            icon: Icons.check_box_outlined,
            isSelected: selectedIndex == 1,
            onPressed: () => onItemTapped(1),
            selectedColor: selectedIndex == 1 ? kPrimaryColor : Colors.white,          ),

        ],
      ),
    );
  }
}