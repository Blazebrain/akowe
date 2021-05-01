import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final text;
  final Color color;
  final double size;
  final FontWeight weight;

  const CustomText({
    Key key,
    this.text,
    this.color,
    this.size,
    this.weight,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: size,
      ),
    );
  }
}
