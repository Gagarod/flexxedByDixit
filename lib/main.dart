import 'package:flexxed_by_dixit/fourth.dart';
import 'package:flexxed_by_dixit/second.dart';
import 'package:flexxed_by_dixit/third.dart';
import 'package:flutter/material.dart';
import 'first.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Objective Mk2'),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          First(),
          Second(),
          Third(),
          Fourth()
        ],),
      ),
    );
  }
}

