import 'package:flutter/material.dart';
import '../data/onboarding_screen_model.dart';
import '../utilities/change_screen.dart';
import '../utilities/onboarding_screen_controller.dart';
import '../utilities/styles.dart';
import 'registration_page.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: OnboardingScreen(
        bgColor: white,
        themeColor: orangeThemeColor,
        pages: pages,
        getStartedClicked: (value) {
          print("Get Started");
          changeScreen(RegistrationPage(), context);
        },
      ),
    );
  }
}
