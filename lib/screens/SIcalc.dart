import 'package:SIcalculator/screens/widgets/Button.dart';
import 'package:SIcalculator/screens/widgets/Textbox.dart';
import 'package:SIcalculator/screens/widgets/Textview.dart';
import 'package:flutter/material.dart';

import '../utils/Format.dart';

class SIcalc extends StatefulWidget {
  _SIcalculator createState() => _SIcalculator();
}

class _SIcalculator extends State<SIcalc> {
  double _principle, _rate, _time, _amount;
  String _result;

  _takeprinciple(String str) {
    if (str != null && str.length > 0) {
      str = str.trim();
    }
    _principle = double.parse(str ?? "0");
  }

  _takerate(String str) => _rate = double.parse(str ?? "0");
  _taketime(String str) => _time = double.parse(str ?? "0");
  _calculateamt() {
    _amount = (_principle * _rate * _time) / 100;
    setState(() {
      _result = Format.numberformat(_amount);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Textbox("Enter the principle amount",
                "Enter the principle amount", Icons.home, _takeprinciple),
            new Textbox("Enter the rate of interest",
                "Enter the rate of interest", Icons.account_balance, _takerate),
            new Textbox("Enter the no of years", "Enter the no of years",
                Icons.access_time, _taketime),
            SizedBox(
              height: 20,
            ),
            new Button("Calculate", _calculateamt),
            SizedBox(
              height: 20,
            ),
            new Textview(_result)
          ],
        ),
      ),
    );
  }
}
