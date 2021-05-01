import 'package:akowe/pages/class_select_page.dart';
import 'package:akowe/pages/registration_page.dart';
import 'package:akowe/utilities/change_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../utilities/styles.dart';
import '../widgets/custom_pin_code_input.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textFields.dart';
import '../widgets/custom_text_button.dart';

class LoginPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 84),
              CustomText(
                text: 'Welcome Back',
                weight: FontWeight.w500,
                size: 24,
                color: darkPurpleThemeColor,
              ),
              SizedBox(height: 4),
              CustomText(
                text: '''Haha, we are glad to have\n'''
                    '''you with us again.''',
                color: lightPurpleThemeColor,
                size: 16,
                weight: FontWeight.w400,
              ),
              SizedBox(height: 40),
              CustomTextFields(hintText: 'Phone number'),
              SizedBox(height: 24),
              CustomText(
                text: 'Enter Pin',
                color: lightPurpleThemeColor,
                size: 16,
                weight: FontWeight.w400,
              ),
              SizedBox(height: 16),
              CustomPinCodeInput(formKey: formKey),
              SizedBox(height: 40),
              CustomTextButton(
                  text: 'Login',
                  containerColor: deeperPurpleColor,
                  textColor: white,
                  onTap: () {
                    changeScreen(ClassSelectPage(), context);
                  }),
              SizedBox(height: 24),
              Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Don\'t have an account yet? ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: deeperPurpleColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Create Account',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          print('create account inline button clicked');
                          changeScreen(RegistrationPage(), context);
                        },
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: orangeThemeColor,
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
