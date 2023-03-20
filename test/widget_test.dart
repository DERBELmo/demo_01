// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:demo_01/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    expect(find.byType(FloatingActionButton), findsNWidgets(1));
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

// verifer le conteur commence par 1
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('2'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
   // await tester.tap(find.byKey(const Key("keyboutton")));
    await tester.pump();

    //tester msg sur 1er champs
    expect(find.text("Please enter your NAME").first,findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    //tester msg sur 2eme  champs
    expect(find.text("Please enter your FIRSTNAME").first,findsOneWidget);

// tester le titre de la page home
    final titleFinder=find.text('Flutter DERBEL Home Page');
    expect((titleFinder), findsOneWidget);

    // tester saisir champs
    await tester.enterText(find.byType(TextField).first, "mohamed");
    expect(find.text("mohamed"), findsOneWidget);

// tester saisir champs
    await tester.enterText(find.byType(TextField).last, "derbel");
    expect(find.text("derbel"), findsOneWidget);

 // tester click buttnc
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    // tester avoir un msg
    expect(find.text("Bienvenue mohamed derbel"), findsOneWidget);


   // final itemFinder = find.byKey(const ValueKey("keyboutton"));
// findby keys , 
//  find.byKey(key)

    //key:ValueKey("monWidget")
    //ListView

  });


}
