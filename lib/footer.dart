import 'package:flutter/material.dart';
import 'package:td_flutter/choice_item.dart';

class Footer extends StatelessWidget {
  final double height;
  final List<String> hobbies = [
    "Football",
    "Basketball",
    "Volleyball",
    "Tennis",
    "Chess",
    "Ping Pong",
    "Bodybuilding",
  ];

  Footer({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: hobbies.map((element) {
            return ChoiceItem(text: element);
          }).toList(),
        ),
      ),
    );
  }
}
