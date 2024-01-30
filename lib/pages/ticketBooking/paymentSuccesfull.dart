// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:namma_metro/components/verificationButton.dart';
import 'package:namma_metro/pages/homescreen/homeScreen.dart';
import 'package:namma_metro/pages/ticketBooking/ticketBooking.dart';
import 'package:qr_flutter/qr_flutter.dart';

class paymentSuccessful extends StatelessWidget {
  const paymentSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        elevation: 0,
        title: Text(
          "Successfull",
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("lib/assets/logo.png"))),
                      ),
                      Text(
                        "QR Ticket Purchased",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₹ 15",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.check_circle_outline_outlined,
                            size: 40,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Scan this QR at metro Entry & Exit point",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      QrImageView(
                        data: "This project is done by sarvesh and team",
                        version: QrVersions.auto,
                        size: 200,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  VerificationButton(
                      isIcon: false,
                      widget: paymentSuccessful(),
                      buttonText: "Share this via ",
                      isoneSidedPadding: true,
                      width: MediaQuery.of(context).size.width,
                      bgcolor: Theme.of(context).colorScheme.primaryContainer,
                      fgcolor: Theme.of(context).colorScheme.background),
                  VerificationButton(
                      isIcon: false,
                      widget: HomeScreen(),
                      buttonText: "Back to home screen ",
                      isoneSidedPadding: true,
                      width: MediaQuery.of(context).size.width,
                      bgcolor: Theme.of(context).colorScheme.background,
                      fgcolor: Theme.of(context).colorScheme.primaryContainer),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
