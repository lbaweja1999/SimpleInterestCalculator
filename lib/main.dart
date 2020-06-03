import 'package:flutter/material.dart';

import './screens/SIcalc.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData.dark(),
    title: "SI Calculator",
    home: new SIcalc(),
  ));
}
