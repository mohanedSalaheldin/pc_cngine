
import 'package:computer_engine/src/shared/consts.dart';
import 'package:flutter/material.dart';

class NavBarBotton extends StatelessWidget {
  const NavBarBotton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
    required this.isSelected,
  });
  final Function() onPressed;
  final String text;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? mainColor : Colors.black,
          ),
          Text(
            text,
            style: TextStyle(
              color: isSelected ? mainColor : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}