// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:namma_metro/components/confirmationTicket.dart';
import 'package:namma_metro/components/verificationButton.dart';
import 'package:namma_metro/pages/ticketBooking/ticketBooking.dart';

class paymentMethod extends StatelessWidget {
  const paymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        elevation: 0,
        title: Text(
          "Payment Method",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerificationButton(
                          widget: paymentMethod(),
                          isoneSidedPadding: true,
                          buttonText: "Payment Amount : 17 ₹",
                          width: MediaQuery.of(context).size.width,
                          isIcon: false,
                          bgcolor:
                              Theme.of(context).colorScheme.primaryContainer,
                          fgcolor: Theme.of(context).colorScheme.background),
                      VerificationButton(
                          widget: paymentMethod(),
                          buttonText: "Quick Pay",
                          width: MediaQuery.of(context).size.width,
                          isoneSidedPadding: true,
                          isIcon: false,
                          bgcolor: Theme.of(context).colorScheme.background,
                          fgcolor:
                              Theme.of(context).colorScheme.primaryContainer),
                      VerificationButton(
                          widget: paymentMethod(),
                          buttonText: "Credit Card",
                          width: MediaQuery.of(context).size.width,
                          isoneSidedPadding: true,
                          isIcon: false,
                          bgcolor: Theme.of(context).colorScheme.background,
                          fgcolor:
                              Theme.of(context).colorScheme.primaryContainer),
                      VerificationButton(
                          widget: paymentMethod(),
                          buttonText: "Debit Card",
                          width: MediaQuery.of(context).size.width,
                          isIcon: false,
                          bgcolor: Theme.of(context).colorScheme.background,
                          isoneSidedPadding: true,
                          fgcolor:
                              Theme.of(context).colorScheme.primaryContainer),
                      VerificationButton(
                          widget: paymentMethod(),
                          buttonText: "Internet Banking",
                          width: MediaQuery.of(context).size.width,
                          isoneSidedPadding: true,
                          isIcon: false,
                          bgcolor: Theme.of(context).colorScheme.background,
                          fgcolor:
                              Theme.of(context).colorScheme.primaryContainer),
                      VerificationButton(
                          widget: paymentMethod(),
                          buttonText: "Wallet",
                          width: MediaQuery.of(context).size.width,
                          isoneSidedPadding: true,
                          isIcon: false,
                          bgcolor: Theme.of(context).colorScheme.background,
                          fgcolor:
                              Theme.of(context).colorScheme.primaryContainer),
                      VerificationButton(
                          widget: paymentMethod(),
                          buttonText: "UPI",
                          width: MediaQuery.of(context).size.width,
                          isIcon: false,
                          bgcolor: Theme.of(context).colorScheme.background,
                          isoneSidedPadding: true,
                          fgcolor:
                              Theme.of(context).colorScheme.primaryContainer),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}