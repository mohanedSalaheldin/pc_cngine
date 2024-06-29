import 'package:computer_engine/src/screens/layout_screen.dart';
import 'package:computer_engine/src/shared/configs/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: getAppTheme(),
      home:  LayoutScreen(),
    );
  }
}
