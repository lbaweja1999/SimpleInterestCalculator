import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  String labeltxt, hinttxt;
  IconData iconData;
  Function function;

  Textbox(this.labeltxt, this.hinttxt, this.iconData, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(10),
      child: TextField(
        onChanged: (str) {
          function(str);
        },
        decoration: InputDecoration(
          labelText: labeltxt,
          hintText: hinttxt,
          prefixIcon: Icon(iconData, color: Colors.white, size: 30),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.limeAccent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.lightGreenAccent),
          ),
        ),
      ),
    );
  }
}
