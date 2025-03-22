import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();  // defined only once when DiceRoller is built

class DiceRoller extends StatefulWidget {
    const DiceRoller({super.key});

    @override
    State<DiceRoller> createState() {
        return _DiceRollerState();
    }

}

// private class bc of _
// meant to be used internally only here
class _DiceRollerState extends State<DiceRoller> {
    var currentDiceRoll = 2;

    void rollDice() {
        // anonymous function
        setState(() {
                currentDiceRoll = randomizer.nextInt(6) + 1;
            }
        );
    }

    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Image.asset(
                    'assets/images/dice-$currentDiceRoll.png',
                    width: 200
                ),
                const SizedBox(
                    height: 20
                ),
                TextButton(
            /* anonymous function (no name) that can only be used and called here
                            onPressed: () {},*/
                    onPressed: rollDice,
                    style: TextButton.styleFrom(
                /* OR USE THE SizedBox widget as above (line 49)
                                padding: const EdgeInsets.only(
                                    top: 20
                                ),*/
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                            fontSize: 28
                        )
                    ),
                    child: const Text('Roll Dice')
                )
            ]);
    }

}
