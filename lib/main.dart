import 'package:akowe/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akowe',
      home: OnboardingPage(),
      theme: ThemeData(
        fontFamily: 'GTWalsheimPro',
        // textTheme: TextTheme(bodyText2: )
        scaffoldBackgroundColor: Color(0xffe5e5e5),
        backgroundColor: Color(0xffe5e5e5),
      ),
    );
  }
}
