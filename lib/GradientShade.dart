// ignore_for_file: file_names

import 'package:dice_roll/RollDice.dart';
import 'package:flutter/material.dart';

class GradientShade extends StatelessWidget {
  const GradientShade({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red,
            Colors.pinkAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const RollDice(),
    );
  }
}


