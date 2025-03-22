import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

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
    const GradientContainer({required this.backgroundColours, super.key});

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
            child: const Center(
                child: StyledText('Evoluto 2.0!')
            )
        );
    }

}
