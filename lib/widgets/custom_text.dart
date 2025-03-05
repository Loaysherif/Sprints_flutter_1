import 'package:flutter/material.dart';

// A customizable text widget
class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize = 16.0,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = 'Arial',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
