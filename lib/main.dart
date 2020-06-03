import 'package:flutter/material.dart';

import './screens/SIcalc.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    title: "SI Calculator",
    home: new SIcalc(),
  ));
}
