// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:namma_metro/components/checkTrains.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Date & Time",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                VerificationButton(
                    myicon: Icons.calendar_month_outlined,
                    widget: Trains(),
                    buttonText: "21/03/2024",isoneSidedPadding: false,
                    isIcon: false,
                    width: 150,
                    bgcolor: Theme.of(context).colorScheme.primaryContainer,
                    fgcolor: Theme.of(context).colorScheme.background),
                SizedBox(
                  width: 10,
                ),
                VerificationButton(
                    myicon: Icons.timer_outlined,
                    widget: Trains(),isoneSidedPadding: false,
                    isIcon: true,
                    buttonText: "11 : 52 AM",
                    width: 150,
                    bgcolor: Theme.of(context).colorScheme.background,
                    fgcolor: Theme.of(context).colorScheme.primaryContainer),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return CheckTrains();
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
