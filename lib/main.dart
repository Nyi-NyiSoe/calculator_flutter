import 'package:calculator/currency_calculator/currency.dart';
import 'package:calculator/length_calculator/length.dart';
import 'package:calculator/screens/programmer_screen.dart';
import 'package:calculator/screens/scientific_calculator.dart';
import 'package:calculator/temperature_calculator/temperature.dart';
import 'package:flutter/material.dart';
import 'basic_calculator/basic_calculator.dart';

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
        BasicCalculator.id:(context) => const BasicCalculator(),
        ScientificCalculator.id:(context) =>const ScientificCalculator(),
        ProgrammerCalculator.id:(context) =>const ProgrammerCalculator(),
        Currency.id:(context) => Currency(),
         Length.id:(context) =>const Length(),
         Temperature.id:(context) =>const Temperature()
      },
    );
  }
}
