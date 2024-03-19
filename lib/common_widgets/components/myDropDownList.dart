// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDropDownList extends StatefulWidget {
  const MyDropDownList({Key? key}) : super(key: key);

  @override
  State<MyDropDownList> createState() => _MyDropDownListState();
}

class _MyDropDownListState extends State<MyDropDownList> {
  String dropDownValue = "Select Your Station";
  var items = [
    'Select Your Station',
    'PCMC',
    'SANT TUKARAM NAGAR',
    'BHOSARI',
    'KASARWADI',
    'PHUGEWADI',
    'DAPODI',
    'SHIVAJINAGAR',
    'CIVIL COURT',
    'VANAZ',
    'ANAD NAGAR',
    'IDEAL COLONY',
    'NAL STOP',
    'DECCAN'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(12)),
      width: double.maxFinite,
      // height: 60,
      child: DropdownButtonFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.location_on_sharp),
            suffix: SizedBox(
              width: 20,
            )),
        value: dropDownValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropDownValue = newValue!;
          });
        },
      ),
    );
  }
}
