import 'package:flutter/material.dart';


class VerificationButton extends StatelessWidget {
  final Widget widget;
  final String buttonText;
const VerificationButton({ Key? key, required this.widget, required this.buttonText }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>widget));
                  },
                  child: Text(buttonText),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.primaryContainer,
                    ),
                  ),
                ),
              ),
            );
  }
}