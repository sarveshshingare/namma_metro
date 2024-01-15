// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  const MyTextfield({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color:
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: TextField(
          keyboardType: TextInputType.phone,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.phone_android),
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
      
    );
  }
}
