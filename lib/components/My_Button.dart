// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final int currentPage;
  final PageController pageController;
  const MyButton(
      {Key? key, required this.currentPage, required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (currentPage < 3) {
          pageController.nextPage(
              duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
        } else {}
      },
      child: Container(
        margin: EdgeInsets.all(25),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.primaryContainer),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              currentPage < 3 ? "Next" : "Get Started",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )),
      ),
    );
  }
}
