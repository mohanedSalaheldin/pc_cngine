import 'package:computer_engine/src/screens/account_screen.dart';
import 'package:computer_engine/src/screens/ask_doc_screen.dart';
import 'package:computer_engine/src/screens/categories_screen.dart';
import 'package:computer_engine/src/screens/home_screen.dart';
import 'package:flutter/material.dart';

List<Widget> screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const AskDocScreen(),
    const AccountScreen(),
  ];

  List<Widget> titles = [
    const Column(
      key: Key('Home'),
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Welcome back, Mohaned",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Text(
          "Stay healthy!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ],
    ),
    const Text(
      'Categories',
      key: Key('Categories'),
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    const Text(
      'Ask doctor',
      key: Key('Ask doctor'),
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    const Text(
      "Account",
      key: Key('account'),
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  ];
