import 'package:akowe/utilities/styles.dart';
import 'package:flutter/material.dart';

import '../custom_text.dart';

class CustomCardType1 extends StatelessWidget {
  final className;
  const CustomCardType1({
    Key key,
    this.className,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Expanded(
        child: Container(
          height: 60,
          width: (MediaQuery.of(context).size.width - 72) / 3,
          // padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
          alignment: Alignment.center,
          child: CustomText(
            text: className,
            color: lightPurpleThemeColor,
            size: 12,
            weight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
