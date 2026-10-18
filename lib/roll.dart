import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
class Roll extends StatefulWidget {
  const Roll({super.key});
  @override
  State<Roll> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<Roll> {
  var currentRoll = 1;
  void roll() {
    setState(() {
      currentRoll = randomizer.nextInt(3) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/$currentRoll.jpg',
          width: 300,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: roll,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: const Color.fromARGB(255, 197, 240, 117),
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const Text("Roll"),
        ),
      ],
    );
  }
}