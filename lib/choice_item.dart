import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String text;

  const ChoiceItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        height: 30,
        decoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
      );
  }
}