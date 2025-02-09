import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startingAlignment = Alignment.center;
const endingAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(89, 37, 107, 212),
          Color.fromARGB(255, 255, 137, 3),
        ],
        begin: startingAlignment,
        end: endingAlignment,
      )),
      child: const Center(
        child: StyledText(""),
      ),
    );
  }
}
