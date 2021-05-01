import 'package:akowe/pages/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../utilities/change_screen.dart';
import '../utilities/styles.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textFields.dart';
import '../widgets/custom_text_button.dart';
import 'verify_phone_number_page.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: deeperPurpleColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 24.0,
              top: 24,
            ),
            child: Text(
              'Step 1 of 2',
              style: TextStyle(color: orangeThemeColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 37),
              CustomText(
                text: 'Welcome To Akowe',
                weight: FontWeight.w500,
                size: 24,
                color: darkPurpleThemeColor,
              ),
              SizedBox(height: 4),
              CustomText(
                text: '''We are delighted you decided\n'''
                    '''to join us. Let’s get started''',
                color: lightPurpleThemeColor,
                size: 16,
                weight: FontWeight.w400,
              ),
              SizedBox(height: 40),
              CustomTextFields(hintText: 'First name'),
              SizedBox(height: 16),
              CustomTextFields(hintText: 'Last name'),
              SizedBox(height: 16),
              CustomTextFields(hintText: 'Phone number'),
              SizedBox(height: 16),
              CustomTextFields(hintText: 'Country'),
              SizedBox(height: 16),
              CustomTextFields(hintText: 'State'),
              SizedBox(height: 40),
              CustomTextButton(
                text: 'Continue',
                textColor: white,
                containerColor: darkPurpleThemeColor,
                onTap: () {
                  changeScreen(VerifyPhoneNumberPage(), context);
                },
              ),
              SizedBox(height: 20),
              Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: deeperPurpleColor,
                    ),
                  ),
                  TextSpan(
                    text: 'Login',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        print('login inline button clicked');
                        changeScreen(LoginPage(), context);
                      },
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: orangeThemeColor,
                    ),
                  ),
                ])),
              ),
              SizedBox(height: 36),
            ],
          ),
        ),
      ),
    );
  }
}
