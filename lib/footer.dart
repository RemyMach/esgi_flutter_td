import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final double height;

  const Footer({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      color: Colors.white,
      child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Footer',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          )),
    );
  }
}
