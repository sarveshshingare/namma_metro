// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Theme.of(context)
                                .colorScheme
                                .primaryContainer
                                .withOpacity(0.4),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone_android),
                              hintText: "Enter Mobile Number",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            VerificationButton(widget: VerifyOtpScreen(), buttonText: "Get OTP")
          ],
        ),
      ),
    );
  }
}
