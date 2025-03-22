import 'package:flutter/material.dart';

import 'gradient_container.dart';

// similar to 'public static void main()' in Java
// defining a function by its signature & body
void main() {
    const List<Color> backgroundColours = [
        Color.fromARGB(255, 26, 2, 80),
        Color.fromARGB(255, 10, 98, 7),
        Color.fromARGB(255, 98, 7, 34)
    ];

    // executing/invoking/calling a function
    runApp(
        const MaterialApp(
            home: Scaffold(
                // body: GradientContainer(backgroundColours) - works only for positional args
                body: GradientContainer(backgroundColours: backgroundColours)
            )
        )
    );
}
