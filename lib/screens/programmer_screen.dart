import 'package:calculator/components/navigation_drawer.dart';
import 'package:flutter/material.dart';

class ProgrammerCalculator extends StatelessWidget {
  static const String id = 'Programmer Calculator';
  const ProgrammerCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Programmer Calculator'),
        backgroundColor: Colors.black,
      ),
      drawer: const NavigationDrawerScreen(),
    ));
  }
}
