// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:namma_metro/components/myTextfield.dart';
import 'package:namma_metro/components/verificationButton.dart';
import 'package:namma_metro/components/verificationScreen.dart';
import 'package:namma_metro/pages/mobileVerification/verifyOtpScreen.dart';

class MobileVerificationScreen extends StatelessWidget {
  const MobileVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      VerificationScreen(
                          heading: "Mobile Verification",
                          part1: "we will send you One Time Password ",
                          part2: "on this phone number"),
                      SizedBox(
                        height: 30,
                      ),
                      MyTextfield(
                        hintText: 'Enter Mobile Number',
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: VerificationButton(
                widget: VerifyOtpScreen(),
                buttonText: "Get OTP",
                width: double.infinity,
                bgcolor: Theme.of(context).colorScheme.primaryContainer,
                fgcolor: Theme.of(context).colorScheme.background,
              ),
            )
          ],
        ),
      ),
    );
  }
}
