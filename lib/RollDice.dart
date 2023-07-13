// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var currentDiceRoll = 4;

  void rollDice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/dice$currentDiceRoll.png',
              width: 200),
          const SizedBox(
            height: 30,
          ),
          TextButton(onPressed: (){
            rollDice();
          },
            child: const Text('Roll Dice',
              style: TextStyle(
                  fontSize: 30, color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

