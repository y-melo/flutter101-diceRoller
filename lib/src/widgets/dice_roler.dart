import 'dart:math';

import 'package:flutter/material.dart';

import 'custom_text.dart';

final Random rand = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = rand.nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Image.asset('assets/images/dice-$diceNumber.png',
          width: 200,
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
            onPressed: () {
              setState(() {
                diceNumber = rand.nextInt(6) + 1;
              });
            },
            child:  const CustomText('Roll dice!'))
      ],
    );
  }
}
