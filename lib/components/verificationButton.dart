// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class VerificationButton extends StatelessWidget {
  final Widget widget;
  final String buttonText;
  final double width;
  final Color bgcolor;
  final Color fgcolor;
  final IconData? myicon;
  final bool isIcon;
  final bool isoneSidedPadding;
  const VerificationButton(
      {Key? key,
      required this.widget,
      required this.buttonText,
      required this.width,
      required this.bgcolor,
      required this.fgcolor,
      this.myicon,
      required this.isIcon,
      required this.isoneSidedPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isoneSidedPadding
          ? const EdgeInsets.only(bottom: 25.0)
          : const EdgeInsets.symmetric(vertical: 25.0),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isIcon
                  ? Row(
                      children: [
                        Icon(myicon),
                        SizedBox(
                          width: 10,
                        ),
                        Text(buttonText),
                      ],
                    )
                  : Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          buttonText,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
