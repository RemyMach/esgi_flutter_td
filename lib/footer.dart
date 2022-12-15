import 'package:flutter/material.dart';
import 'package:td_flutter/choice_item.dart';

class Footer extends StatefulWidget {
  final int heightFlex;

  const Footer({Key? key, required this.heightFlex}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState(heightFlex: heightFlex);
}

class _FooterState extends State<Footer> {
  final int heightFlex;

  /*List<String> hobbies = [
    "Football",
    "Basketball",
    "Volleyball",
    "Tennis",
    "Chess",
    "Ping Pong",
    "Bodybuilding",
  ];*/
  Map<String, Color> hobbies = {
    "Football": Colors.black12,
    "Basketball": Colors.black12,
    "Volleyball": Colors.black12,
    "Tennis": Colors.black12,
    "Chess": Colors.black12,
    "Ping Pong": Colors.black12,
    "Bodybuilding": Colors.black12,
  };

  _FooterState({Key? key, required this.heightFlex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: heightFlex,
      child: Container(
        width: double.maxFinite,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: hobbies.keys.map((elementValue) {
              return ChoiceItem(
                text: elementValue,
                sizeText: 18,
                textColor: Colors.black,
                backgroundColor: hobbies[elementValue]!,
                onTap: _onTap,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  void _onTap(String textTapped) {
    setState(() {
      hobbies[textTapped] = hobbies[textTapped] == Colors.black12
          ? Colors.orange
          : Colors.black12;
    });
  }
}
