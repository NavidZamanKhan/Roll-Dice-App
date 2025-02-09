import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-1.png";
  void rollDice() {
    activeDiceImage = "assets/images/dice-2.png";
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-1.png",
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(
              14.0,
            ),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            textStyle: const TextStyle(fontSize: 14),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}
