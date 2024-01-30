// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:namma_metro/components/verificationButton.dart';
import 'package:namma_metro/components/verificationScreen.dart';
import 'package:namma_metro/pages/mobileVerification/register.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                          part2: "Sent to 9815487959"),
                      SizedBox(
                        height: 20,
                      ),
                      OtpTextField(
                          mainAxisAlignment: MainAxisAlignment.center,
                          numberOfFields: 6,
                          fillColor: Colors.black.withOpacity(0.1),
                          filled: true,
                          onSubmit: (code) => print("OTP is => $code")),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn't receive any OTP ? ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Resend",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: VerificationButton(
                widget: Register(),isIcon: false,
                buttonText: "Verify",
                width: double.infinity,isoneSidedPadding: false,
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
