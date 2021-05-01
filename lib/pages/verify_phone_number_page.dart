import 'package:flutter/material.dart';
import '../utilities/change_screen.dart';
import '../utilities/styles.dart';
import '../widgets/custom_pin_code_input.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_button.dart';
import 'generate_pin_page.dart';

class VerifyPhoneNumberPage extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  final formKey = GlobalKey<FormState>();
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
              'Step 2 of 2',
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
                text: 'Verify Your Phone Number',
                weight: FontWeight.w500,
                size: 24,
                color: darkPurpleThemeColor,
              ),
              SizedBox(height: 4),
              CustomText(
                text: '''A 4-digit code has been sent to\n'''
                    '''the number you provided.''',
                color: lightPurpleThemeColor,
                size: 16,
                weight: FontWeight.w400,
              ),
              SizedBox(height: 40),
              CustomPinCodeInput(formKey: formKey),
              SizedBox(height: 24),
              Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Did not receive the code? ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: deeperPurpleColor,
                    ),
                  ),
                  TextSpan(
                    text: 'Resend',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: orangeThemeColor,
                    ),
                  ),
                ])),
              ),
              SizedBox(height: 40),
              CustomTextButton(
                text: 'Verify Number',
                textColor: white,
                containerColor: deeperPurpleColor,
                onTap: () {
                  changeScreen(GeneratePinPage(), context);
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
