import 'package:flutter/material.dart';

import 'package:first_app/src/widgets/hum_cont.dart';

final backgroundColors = {
  'primary': Colors.purple[900],
  'secondary': Colors.purple[200],
};

void main() {
  runApp(
    MaterialApp(
      title: 'Dice roller App', // used by the OS task switcher
      home: Scaffold(
        backgroundColor: backgroundColors['secondary'],
        appBar: AppBar(
          backgroundColor: backgroundColors['primary'],
          title: const Text('Dice roller'),
        ),
        body:  HumCont(customColors: const [Colors.deepOrange,Colors.purple,]),
      ),
    )
  );
}
