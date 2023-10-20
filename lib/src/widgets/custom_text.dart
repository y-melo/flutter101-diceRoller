import 'package:flutter/material.dart';

// Create a custom widget with that return a style text widget
class CustomText extends StatelessWidget {
  const CustomText(
      this.text,
      {super.key,this.color = Colors.white, this.size = 18});

  final String text;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
