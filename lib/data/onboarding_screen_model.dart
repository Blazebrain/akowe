import 'package:akowe/models/onboarding_model.dart';
import 'package:flutter/material.dart';

final pages = [
  OnboardingModel(
      title: 'Help Tutor The Next Gen',
      description: '''Join us to help make '''
          '''quality \n     education '''
          '''accessible to \n                everyone.''',
      titleColor: Color(0xff483467),
      descripColor: const Color(0xff5f4b7d),
      imagePath: 'images/Download.png'),
  OnboardingModel(
      title: 'Join The Community',
      description:
          'We are a community of like\n minded commited people,\n    improving education.',
      titleColor: Color(0xff483467),
      descripColor: const Color(0xff5f4b7d),
      imagePath: 'images/Welcome.png'),
];
