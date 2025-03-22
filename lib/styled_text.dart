import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
    const StyledText({
        super.key
    });

    @override
    Widget build(BuildContext context) {
        return Text(
            'Evoluto 2.0!',
            style: TextStyle(
                color: Colors.white,
                fontSize: 28
            )
        );
    }
}
