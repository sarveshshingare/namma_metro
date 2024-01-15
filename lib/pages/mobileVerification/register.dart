// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Container(
                      height: 200, child: Image.asset("lib/assets/otp.jpg"),),),
            ],
          ),
        ),
      ),
    );
  }
}
