import 'package:flutter/material.dart';

class DefualtText extends StatelessWidget {
  DefualtText({
    required this.text,
     this.fontSize,
    Key? key,
  }) : super(key: key);

  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, color: Colors.grey),
    );
  }
}