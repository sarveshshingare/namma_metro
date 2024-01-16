// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:namma_metro/components/myDropDownList.dart';
import 'package:namma_metro/components/verificationButton.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  child: Image.asset("lib/assets/logo.png"),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_active_outlined,
                          color: Theme.of(context).colorScheme.primaryContainer,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.account_circle_outlined,
                          color: Theme.of(context).colorScheme.primaryContainer,
                          size: 30,
                        )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyDropDownList(),
            SizedBox(
              height: 20,
            ),
            MyDropDownList(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerificationButton(
                    widget: HomeScreen(),
                    buttonText: "Check Trains",
                    width: 150,
                    bgcolor: Theme.of(context).colorScheme.primaryContainer,
                    fgcolor: Theme.of(context).colorScheme.background),
                SizedBox(
                  width: 10,
                ),
                VerificationButton(
                    widget: HomeScreen(),
                    buttonText: "Check Trains",
                    width: 150,
                    bgcolor: Theme.of(context).colorScheme.background,
                    fgcolor: Theme.of(context).colorScheme.primaryContainer),
              ],
            ),
            Text(
              "Other Services",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary),
            )
          ],
        ),
      )),
    );
  }
}
