import 'package:flutter/material.dart';
import 'package:td_flutter/choice_item.dart';

class Header extends StatelessWidget {
  final int heightFlex;
  final List<String> selectedHobbies;

  const Header(
      {Key? key, required this.heightFlex, required this.selectedHobbies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: heightFlex,
      child: Container(
        width: double.maxFinite,
        color: Colors.purple,
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Vos choix :',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: selectedHobbies.isEmpty
                      ? const Text(
                          'Cliquez sur les choix en dessous !',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      : Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: selectedHobbies.map((element) {
                            return ChoiceItem(
                              text: element,
                              sizeText: 18,
                              textColor: Colors.black,
                              backgroundColor: Colors.grey,
                            );
                          }).toList(),
                        ),
                )
              ],
            )),
      ),
    );
  }
}
