// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:namma_metro/components/checkTrains.dart';
import 'package:namma_metro/components/fromTo.dart';
import 'package:namma_metro/components/myseprator.dart';
import 'package:namma_metro/components/normalElevatedButton.dart';
import 'package:namma_metro/components/verificationButton.dart';
import 'package:namma_metro/pages/ticketBooking/confirmation.dart';

class ticketBooking extends StatelessWidget {
  const ticketBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        elevation: 0,
        title: Text(
          "Ticket Booking",
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
                      Text(
                        "Fare Type",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          VerificationButton(
                              widget: ticketBooking(),
                              buttonText: "One Way",
                              isIcon: false,
                              isoneSidedPadding: false,
                              width: 165,
                              bgcolor: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              fgcolor:
                                  Theme.of(context).colorScheme.background),
                          VerificationButton(
                              widget: ticketBooking(),
                              buttonText: "One Way",
                              isIcon: false,
                              isoneSidedPadding: false,
                              width: 165,
                              bgcolor: Theme.of(context).colorScheme.background,
                              fgcolor: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer),
                        ],
                      ),
                      const Myseprator(),
                      FromTo(),
                      Myseprator(),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tickets"),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.remove_circle_outline),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                        child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.remove_circle_outline),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Myseprator(),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Ticket entry is valid for 8 hours from the time of booking .By tapping 'Pay Now', you agree to the \nTerms and Conditions",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TOTAL FARE",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$ 15",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  VerificationButton(
                      isIcon: false,
                      widget: confirmation(),
                      buttonText: "Buy Ticket ",
                      isoneSidedPadding: false,
                      width: 200,
                      bgcolor: Theme.of(context).colorScheme.primaryContainer,
                      fgcolor: Theme.of(context).colorScheme.background),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
