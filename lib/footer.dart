import 'package:flutter/material.dart';
import 'package:td_flutter/choice_item.dart';

class HobbiesUi {
  final String text;
  Color backgroundColor;

  HobbiesUi({
    required this.text,
    required this.backgroundColor,
  });
}

class Footer extends StatefulWidget {
  final int heightFlex;
  final Function selectHobby;
  final List<HobbiesUi> hobbiesItemsUi;

  const Footer({
    Key? key,
    required this.heightFlex,
    required this.selectHobby,
    required this.hobbiesItemsUi,
  }) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.heightFlex,
      child: Container(
        width: double.maxFinite,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: widget.hobbiesItemsUi.map((element) {
              return GestureDetector(
                  onTap: () {
                    _onTapOnChoiceItem(element);
                  },
                  child: ChoiceItem(
                    text: element.text,
                    sizeText: 18,
                    textColor: Colors.black,
                    backgroundColor: element.backgroundColor,
                  ));
            }).toList(),
          ),
        ),
      ),
    );
  }

  void _onTapOnChoiceItem(HobbiesUi hobbiesUi) {
    setState(() {
      var choiceItemIsAlreadySelected =
          hobbiesUi.backgroundColor == Colors.orange;
      if (!choiceItemIsAlreadySelected) {
        hobbiesUi.backgroundColor = Colors.orange;
        widget.selectHobby(hobbiesUi.text);
      } else if (choiceItemIsAlreadySelected) {
        hobbiesUi.backgroundColor = Colors.black12;
        widget.selectHobby(hobbiesUi.text);
      }
    });
  }
}
