import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String data;
  final double fontSize;
  final FontWeight? fontWeight;
  const TextWidget(
      {super.key, required this.data, required this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: fontSize,
          color: const Color(0xFF88D59B),
          fontFamily: 'Fredoka-VariableFont_wdth,wght',
          fontWeight: fontWeight),
    );
  }
}

class TextWidget1 extends StatelessWidget {
  final String data;
  final double fontSize;
  const TextWidget1(
      {super.key, required this.data, required this.fontSize, });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: fontSize,
          color: const Color(0xFF062525),
          fontFamily: 'Fredoka-VariableFont_wdth,wght',
          fontWeight: FontWeight.w600),
    );
  }
}