import 'package:flutter/material.dart';

class NormalElevatedButton extends StatelessWidget {
  final String buttonText;
  const NormalElevatedButton({Key? key, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(buttonText),
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
              Theme.of(context).colorScheme.primaryContainer),
          minimumSize: const MaterialStatePropertyAll(Size(80, 30))),
    );
  }
}
