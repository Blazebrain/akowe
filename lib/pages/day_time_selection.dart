import 'package:akowe/utilities/styles.dart';
import 'package:akowe/widgets/cards/custom_card_type1.dart';
import 'package:akowe/widgets/cards/custom_card_type2.dart';
import 'package:akowe/widgets/cards/custom_card_type3.dart';
import 'package:akowe/widgets/custom_text.dart';
import 'package:akowe/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class DayTimeSelectPage extends StatelessWidget {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Select Your Preferred\nDays and Time',
                          color: deeperPurpleColor,
                          size: 16,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        CustomCardType1(className: 'Mondays'),
                        CustomCardType1(className: 'Tuesdays'),
                        CustomCardType1(className: 'Wednesdays'),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        CustomCardType1(className: 'Thursdays'),
                        CustomCardType1(className: 'Fridays'),
                        CustomCardType1(className: 'Saturdays'),
                      ],
                    ),
                    SizedBox(height: 40),
                    CustomText(
                      text: 'Preferred Time',
                      size: 16,
                      color: deeperPurpleColor,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        CustomCardType3(className: '8am'),
                        CustomCardType3(className: '9am'),
                        CustomCardType3(className: '10am'),
                        CustomCardType3(className: '11am'),
                        CustomCardType3(className: '12am'),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        CustomCardType3(className: '1pm'),
                        CustomCardType3(className: '2pm'),
                        CustomCardType3(className: '3pm'),
                        CustomCardType3(className: '4pm'),
                        CustomCardType3(className: '5pm'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32),
            CustomTextButton(
              text: 'Finish',
              containerColor: Colors.deepPurple[100],
              textColor: white,
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
