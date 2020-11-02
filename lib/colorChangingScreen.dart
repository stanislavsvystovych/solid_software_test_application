import 'dart:math';
import 'package:flutter/material.dart';

class ColorChangingScreen extends StatefulWidget {
  @override
  _ColorChangingScreenState createState() => _ColorChangingScreenState();
}

class _ColorChangingScreenState extends State<ColorChangingScreen> {
  final Random random = new Random();
  final int rgbMax = 255;
  Color backgroundColor;
  Color textColor;

  void initState() {
    super.initState();
    generateRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Test task")),
        body: GestureDetector(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: backgroundColor,
              child: Center(
                  child: Text(
                "Hey there",
                style: TextStyle(fontSize: 33, color: textColor),
              )),
            ),
            onTap: () => generateRandomColor()));
  }

  void generateRandomColor() {
    var red = random.nextInt(rgbMax);
    var green = random.nextInt(rgbMax);
    var blue = random.nextInt(rgbMax);

    setState(() {
      backgroundColor = Color.fromRGBO(red, green, blue, 1);
      textColor = backgroundColor.computeLuminance() > 0.4
          ? Colors.black
          : Colors.white;
    });
  }
}
