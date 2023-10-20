import 'package:first_app/src/widgets/dice_roler.dart';
import 'package:flutter/material.dart';

class HumCont extends StatelessWidget {
  const HumCont({super.key, required this.customColors});

  final List<Color> customColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: customColors,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
