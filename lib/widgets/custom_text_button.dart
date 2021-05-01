import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final text;
  final containerColor;
  final textColor;
  final onTap;

  const CustomTextButton({
    Key key,
    this.text,
    this.containerColor,
    this.textColor,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: GestureDetector(
        onTap: onTap,
        child: new Container(
          height: 50.0,
          decoration: new BoxDecoration(
              color: containerColor,
              borderRadius: new BorderRadius.all(
                Radius.circular(10.0),
              ),
              border: Border.all(color: Color(0xff322644))),
          child: new Center(
            child: new Text(
              text,
              style: new TextStyle(
                color: textColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
