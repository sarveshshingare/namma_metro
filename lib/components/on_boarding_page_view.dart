// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  final String path;
  final String headingText;
  final String firstText;
  final String secondText;
  OnBoardingPageView(
      {Key? key,
      required this.path,
      required this.headingText,
      required this.firstText,
      required this.secondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(path),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          headingText,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          firstText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.secondary),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          secondText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.secondary),
        ),
      ],
    );
  }
}
