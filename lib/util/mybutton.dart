import 'package:flutter/material.dart';

class MyButoon extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButoon({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(text),
      textColor: Colors.white,
      color: Theme.of(context).primaryColor,
    );
  }
}
