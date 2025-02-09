import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startingAlignment = Alignment.center;
const endingAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

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
      child: const Center(
        child: StyledText("Navid"),
      ),
    );
  }
}
