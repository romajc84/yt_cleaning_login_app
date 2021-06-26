import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yt_cleaning_login_app/coolors.dart';
import 'package:yt_cleaning_login_app/login/login_page1.dart';
import 'package:yt_cleaning_login_app/onboarding/onboarding_page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingPage1(),
      theme: ThemeData(
        accentColor: Coolors.purplish,
        primaryColor: Coolors.orangish,
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}