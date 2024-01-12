// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:namma_metro/components/verificationButton.dart';
import 'package:namma_metro/components/verificationScreen.dart';
import 'package:namma_metro/pages/mobileVerification/register.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

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
                          heading: "OTP",
                          part1: "Enter the One Time Password",
                          part2: "Sent to 9815487959")
                    ],
                  ),
                ),
              ),
            ),
            VerificationButton(widget: Register(), buttonText: "Verify")
          ],
        ),
      ),
    );
  }
}
