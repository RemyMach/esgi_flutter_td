import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String text;
  final double sizeText;
  final Color backgroundColor;
  final Color textColor;

  const ChoiceItem({
    Key? key,
    required this.text,
    required this.sizeText,
    required this.textColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: sizeText,
        ),
      ),
    );
  }
}
