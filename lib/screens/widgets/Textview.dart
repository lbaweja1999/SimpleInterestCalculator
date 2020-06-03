import 'package:flutter/material.dart';

class Textview extends StatelessWidget {
  String str;

  Textview(this.str);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text(
        str ?? "0",
        style: new TextStyle(color: Colors.lightBlue, fontSize: 40),
      ),
    );
  }
}
