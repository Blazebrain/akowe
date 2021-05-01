import 'package:flutter/material.dart';
import '../utilities/styles.dart';

class CustomTextFields extends StatelessWidget {
  final hintText;

  const CustomTextFields({
    Key key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      height: 64,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: purplishWhiteColor,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: lightPurpleThemeColor,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
