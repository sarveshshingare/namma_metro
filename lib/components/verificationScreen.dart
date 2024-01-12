import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  final String heading;
  final String part1;
  final String part2;
  const VerificationScreen(
      {Key? key,
      required this.heading,
      required this.part1,
      required this.part2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(
        height: 150,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Image.asset("lib/assets/smartphone.png"),
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        heading,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      SizedBox(
        height: 25,
      ),
      Text(
        part1,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      Text(
        part2,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.secondary,
        ),
      )
    ]);
  }
}
