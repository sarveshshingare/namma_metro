// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:namma_metro/components/verificationButton.dart';

class Trains extends StatelessWidget {
  const Trains({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        elevation: 0,
        title: Text(
          "Trains",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              "Select Date & Time",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                VerificationButton(
                    myicon: Icons.calendar_month_outlined,
                    widget: Trains(),
                    buttonText: "21/03/2024",
                    width: 150,
                    bgcolor: Theme.of(context).colorScheme.primaryContainer,
                    fgcolor: Theme.of(context).colorScheme.background),
                SizedBox(
                  width: 10,
                ),
                VerificationButton(
                    myicon: Icons.timer_outlined,
                    widget: Trains(),
                    buttonText: "21/03/2024",
                    width: 150,
                    bgcolor: Theme.of(context).colorScheme.background,
                    fgcolor: Theme.of(context).colorScheme.primaryContainer),
              ],
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      )),
    );
  }
}
