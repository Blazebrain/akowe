import 'package:flutter/material.dart';
import '../utilities/change_screen.dart';
import '../utilities/styles.dart';
import '../widgets/custom_pin_code_input.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_button.dart';
import 'login_page.dart';

class GeneratePinPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 37),
              CustomText(
                text: 'Generate Pin',
                weight: FontWeight.w500,
                size: 24,
                color: darkPurpleThemeColor,
              ),
              SizedBox(height: 4),
              CustomText(
                text: '''Let’s help you keep your\n'''
                    '''account protected.''',
                color: lightPurpleThemeColor,
                size: 16,
                weight: FontWeight.w400,
              ),
              SizedBox(height: 40),
              CustomPinCodeInput(formKey: formKey),
              SizedBox(height: 40),
              CustomText(
                text: 'Confirm Pin',
                color: lightPurpleThemeColor,
                size: 16,
                weight: FontWeight.w400,
              ),
              SizedBox(height: 16),
              CustomPinCodeInput(formKey: formKey1),
              SizedBox(height: 48),
              CustomTextButton(
                text: 'Complete Account Setup',
                containerColor: deeperPurpleColor,
                textColor: white,
                onTap: () {
                  changeScreen(LoginPage(), context);
                },
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
