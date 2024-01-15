// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  child: Image.asset("lib/assets/logo.png"),
                ),
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
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
