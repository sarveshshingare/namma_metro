// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:namma_metro/common_widgets/components/myTextfield.dart';
import 'package:namma_metro/common_widgets/components/verificationButton.dart';
import 'package:namma_metro/features/homescreen/homeScreen.dart';


class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
                    children: [
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: 100,
                              child: Image.asset("lib/assets/logo.png"),
                            ),
                            Text(
                              "7045879685",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      MyTextfield(hintText: "Name"),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextfield(hintText: "Email Id")
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerificationButton(
                  widget: HomeScreen(),
                  buttonText: "Save",
                  width: 150,
                  isIcon: false,isoneSidedPadding: false,
                  bgcolor: Theme.of(context).colorScheme.primaryContainer,
                  fgcolor: Theme.of(context).colorScheme.background,
                ),
                SizedBox(
                  width: 10,
                ),
                VerificationButton(
                  widget: HomeScreen(),
                  isIcon: false,isoneSidedPadding: false,
                  buttonText: "Close",
                  width: 150,
                  bgcolor: Theme.of(context).colorScheme.background,
                  fgcolor: Theme.of(context).colorScheme.primaryContainer,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
