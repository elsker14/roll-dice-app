import 'package:flutter_test/flutter_test.dart';
import 'package:roll_dice_app/main.dart';

void main() {
  testWidgets('Verify text elements in MyApp', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that specific text elements exist.
    expect(find.text('Hello World!!'), findsOneWidget);
    expect(find.text('It\'s time to learn Flutter!'), findsOneWidget);

    // Verify that there's no unexpected text.
    expect(find.text('Counter'), findsNothing);
  });
}
