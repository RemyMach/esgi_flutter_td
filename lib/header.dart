import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final int heightFlex;

  const Header({Key? key, required this.heightFlex}) : super(key: key);

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
              children: const [
                Padding(
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
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Cliquez sur les choix en dessous !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
