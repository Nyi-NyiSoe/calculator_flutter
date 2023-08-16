import 'package:calculator/screens/navigation_drawer.dart';
import 'package:flutter/material.dart';

class ProgrammerCalculator extends StatelessWidget {
  const ProgrammerCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('Programmer Calculator'),
      backgroundColor: Colors.black,
      ),drawer: NavigationDrawerScreen(),
    ));
  }
}
