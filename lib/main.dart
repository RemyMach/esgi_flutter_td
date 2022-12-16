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

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> selectedHobbies = [];
  List<HobbiesUi> hobbies = [
    HobbiesUi(text: "Football", backgroundColor: Colors.black12),
    HobbiesUi(text: "Basketball", backgroundColor: Colors.black12),
    HobbiesUi(text: "Volleyball", backgroundColor: Colors.black12),
    HobbiesUi(text: "Tennis", backgroundColor: Colors.black12),
    HobbiesUi(text: "Chess", backgroundColor: Colors.black12),
    HobbiesUi(text: "Ping Pong", backgroundColor: Colors.black12),
    HobbiesUi(text: "Bodybuilding", backgroundColor: Colors.black12),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(
              heightFlex: 2,
              selectedHobbies: selectedHobbies,
            ),
            Footer(
              heightFlex: 1,
              selectHobby: _selectHobby,
              hobbiesItemsUi: hobbies,
            ),
          ],
        ),
      ),
    );
  }

  void _selectHobby(String textTapped) {
    setState(() {
      if (!selectedHobbies.contains(textTapped)) {
        selectedHobbies.add(textTapped);
      } else {
        selectedHobbies.remove(textTapped);
      }
    });
  }
}
