import 'package:flutter/material.dart';

/* other types: var, dynamic (unrecommended), const, final
when you dont want to assign a value, but want to have a type
Alignment? startAlignment; */

/* final = runtime constant, Value is assigned only once, but it can be determined at runtime
Useful when you want a variable that doesn’t change after assignment, but its value is computed dynamically. */

/* const = compiled time constant, Must be assigned a value at compile time.
The value is immutable and deeply constant (all its components must also be const).
Stored directly in memory, making it more performant than final. */
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
    final List<Color> backgroundColours;

    /* this approach uses positional argument
    const GradientContainer(this.backgroundColours, {super.key}); */

    /* if wanted to use named argument, use 'required' keyword in front of var
    inside the constructor {super.key, required this.backgroundColours} */
    // additional constructor defined as .bc
    const GradientContainer.bc({super.key, required this.backgroundColours});

    void rollDice() {

    }

    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: backgroundColours,
                    begin: startAlignment,
                    end: endAlignment
                )
            ),
            child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        Image.asset(
                            'assets/images/dice-3.png',
                            width: 200
                        ),
                        const SizedBox(
                            height: 20,
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
                    ])
            )
        );
    }

}
