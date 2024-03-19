// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:namma_metro/features/authentication/screens/getOtpScreen.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:namma_metro/constants/image_path.dart';
import 'package:namma_metro/features/onBoarding/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  startAnimation() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool onboardingShown = prefs.getBool('onboardingShown') ?? false;

    // Add your delay here if needed
    await Future.delayed(Duration(seconds: 2));

    if (onboardingShown) {
      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const MobileVerificationScreen()), // Replace with your home screen
      );
    } else {
      // Navigate to the Onboarding screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          prefs.setBool('onboardingShown', true);
          return Onboarding();
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 200,
              child: Image.asset(tSplashIcon),
            ),
          ],
        ),
      ),
    );
  }
}
