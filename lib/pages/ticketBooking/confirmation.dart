// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:namma_metro/components/confirmationTicket.dart';
import 'package:namma_metro/components/verificationButton.dart';
import 'package:namma_metro/pages/ticketBooking/paymentMethod.dart';
import 'package:namma_metro/pages/ticketBooking/ticketBooking.dart';

class confirmation extends StatelessWidget {
  const confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        elevation: 0,
        title: Text(
          "Confirmation",
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
                      ConfirmationTicket(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Refund Information",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "In case of Booking failure , any amount deducted will be refunded within 4-5 business days",
                      )
                    ],
                  ),
                ),
              ),
            ),
            VerificationButton(
                myicon: Icons.paypal,
                widget: paymentMethod(),
                isIcon: false,
                buttonText: "Continue Payment ",
                width: 200,
                isoneSidedPadding: false,
                bgcolor: Theme.of(context).colorScheme.primaryContainer,
                fgcolor: Theme.of(context).colorScheme.background)
          ],
        ),
      ),
    );
  }
}
