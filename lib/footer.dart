import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final double height;
  const Footer({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      color: Colors.purple,
      child: LayoutBuilder(builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        return const Text(
          'Footer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        );
      }),
    );
  }
}