import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 168, 120, 223),
          Color.fromARGB(255, 88, 23, 240),
          Color.fromARGB(255, 197, 0, 164),
        ]),
      ),
    ),
  );
}
