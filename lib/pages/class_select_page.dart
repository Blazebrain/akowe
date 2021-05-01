import 'package:akowe/pages/day_time_selection.dart';
import 'package:akowe/utilities/change_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/styles.dart';
import '../widgets/cards/custom_card_type1.dart';
import '../widgets/cards/custom_card_type2.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_button.dart';

class ClassSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 68),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xff556080),
                    child: Icon(Icons.person),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Hello Chris!',
                        size: 16,
                        weight: FontWeight.w500,
                        color: darkPurpleThemeColor,
                      ),
                      CustomText(
                        text: 'Welcome to Akowe',
                        size: 14,
                        weight: FontWeight.w300,
                        color: lightPurpleThemeColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 516,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Color(0xffe5e5e9),
                  // purplishWhiteColor,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'What class would you\nlike to teach',
                          color: deeperPurpleColor,
                          size: 16,
                          weight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'Max of 2',
                          color: lightPurpleThemeColor,
                          size: 14,
                          weight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        CustomCardType1(className: 'Primary One'),
                        CustomCardType1(className: 'Primary Two'),
                        CustomCardType1(className: 'Primary Three'),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        CustomCardType1(className: 'Primary Four'),
                        CustomCardType1(className: 'Primary Five'),
                        CustomCardType1(className: 'Primary Six'),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        CustomCardType2(className: 'Junior Secondary One'),
                        CustomCardType2(className: 'Junior Secondary Two'),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        CustomCardType2(className: 'Junior Secondary Three'),
                        CustomCardType2(className: 'Senior Secondary One'),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        CustomCardType2(className: 'Senior Secondary Two'),
                        CustomCardType2(className: 'Senior Secondary Three'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32),
            CustomTextButton(
                text: 'Next',
                containerColor: Colors.deepPurple[100],
                textColor: white,
                onTap: () {
                  changeScreen(DayTimeSelectPage(), context);
                }),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
