import 'package:flutter/material.dart';

import 'gradient_container.dart';

// similar to 'public static void main()' in Java
// defining a function by its signature & body
void main() {
    // executing/invoking/calling a function
    runApp(
        const MaterialApp(
            home: Scaffold(
                body: GradientContainer()
            )
        )
    );
}
