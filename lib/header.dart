import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double height;

  const Header({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      color: Colors.purple,
      child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Vos choix :',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
