import 'package:flutter/material.dart';
import 'dart:math';

final rng = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 6;

  void rollDice() {
    setState(() {
      activeDice = rng.nextInt(5) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDice.png',
          width: 200,
        ),
        SizedBox(height: 50),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: Text('Roll  Dice'),
        ),
      ],
    );
  }
}
