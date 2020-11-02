import 'package:flutter/material.dart';
import 'package:test_application/colorChangingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Application',
      home: ColorChangingScreen(),
    );
  }
}
