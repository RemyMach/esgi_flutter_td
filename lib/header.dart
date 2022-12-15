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
      child: LayoutBuilder(builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        return const Text(
          'Header',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        );
      }),
    );
  }
}
