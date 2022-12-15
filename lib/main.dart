import 'package:flutter/material.dart';
import 'package:td_flutter/footer.dart';
import 'package:td_flutter/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 24,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final heightMax = constraints.maxHeight;
            return Column(
              children: [
                Header(height: heightMax * 0.8),
                Footer(height: heightMax * 0.2),
              ],
            );
          },
        ),
      ),
    );
  }
}
