import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String txt;
  Function function;

  Button(this.txt, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new RaisedButton(
        onPressed: function,
        padding: EdgeInsets.all(5),
        color: Colors.white,
        elevation: 10,
        textColor: Colors.black,
        child: new Text(
          txt,
          textAlign: TextAlign.center,
          maxLines: 1,
        ),
      ),
    );
  }
}
