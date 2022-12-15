import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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