// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class VerificationButton extends StatelessWidget {
  final Widget widget;
  final String buttonText;
  final double width;
  final Color bgcolor;
  final Color fgcolor;
  const VerificationButton(
      {Key? key,
      required this.widget,
      required this.buttonText,
      required this.width,
      required this.bgcolor,
      required this.fgcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: SizedBox(
        height: 50,
        width: width,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => widget));
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(
              bgcolor,
            ),
            foregroundColor: MaterialStateProperty.all(fgcolor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  width: 2.0,
                ),
              ),
            ),
          ),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
