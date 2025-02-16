import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startingAlignment = Alignment.center;
const endingAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 98, 0, 255),
        color2 = const Color.fromARGB(255, 0, 157, 255);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          color1,
          color2,
        ],
        begin: startingAlignment,
        end: endingAlignment,
      )),
      child: Center(child: DiceRoller()),
    );
  }
}
