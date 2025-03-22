import 'package:flutter/material.dart';

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
    var activeDiceImage = 'assets/images/dice-3.png';   // bc of this, class cannot be const anymore

    void rollDice() {
        // anonymous function
        setState(() {
                activeDiceImage = 'assets/images/dice-4.png';
            }
        );
    }

    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Image.asset(
                    activeDiceImage,
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
