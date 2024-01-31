// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:namma_metro/common_widgets/components/checkTrains.dart';
import 'package:namma_metro/common_widgets/components/fromTo.dart';
import 'package:namma_metro/common_widgets/components/normalElevatedButton.dart';
import 'package:namma_metro/common_widgets/components/verificationButton.dart';
import 'package:namma_metro/features/ticketBooking/confirmation.dart';
import 'package:namma_metro/features/ticketBooking/ticketBooking.dart';

class buyTickets extends StatelessWidget {
  const buyTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        elevation: 0,
        title: Text(
          "Details",
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
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            NormalElevatedButton(buttonText: "Routes"),
                            NormalElevatedButton(buttonText: "Route Map"),
                            NormalElevatedButton(buttonText: "Google Map")
                          ],
                        ),
                      ),
                      FromTo(),
                      Container(
                        padding: EdgeInsets.all(14),
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "14",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Kilometers")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "17",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Rupees")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Stations")
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "B",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Platform")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Interchange")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "25",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Minutes")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            VerificationButton(
                widget: ticketBooking(),
                isIcon: false,
                buttonText: "Buy Ticket ",
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
