import 'package:calculator/screens/currency.dart';
import 'package:calculator/screens/length.dart';
import 'package:calculator/screens/programmer_screen.dart';
import 'package:calculator/screens/scientific_calculator.dart';
import 'package:calculator/screens/temperature.dart';
import 'package:flutter/material.dart';
import 'screens/basic_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: BasicCalculator.id,
      routes: {
        BasicCalculator.id:(context) => BasicCalculator(),
        ScientificCalculator.id:(context) => ScientificCalculator(),
        ProgrammerCalculator.id:(context) => ProgrammerCalculator(),
        Currency.id:(context) => Currency(),
         Length.id:(context) => Length(),
         Temperature.id:(context) => Temperature()
      },
    );
  }
}
