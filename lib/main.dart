import 'package:flutter/material.dart';
import 'package:mission1/home.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
