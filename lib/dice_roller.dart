import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); //store random object

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      currentDiceRoll = diceRoll;
    });

    print("Changing Image");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice$currentDiceRoll.jpg',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text("RollDice"))
      ],
    );
  }
}
