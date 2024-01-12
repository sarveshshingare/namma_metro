// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:namma_metro/pages/onBoarding/on_boarding.dart';
import 'package:namma_metro/theme/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Onboarding(),
        theme: lightMode);
  }
}
