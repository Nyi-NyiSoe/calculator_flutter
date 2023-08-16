import 'package:calculator/screens/navigation_drawer.dart';
import 'package:flutter/material.dart';

class ScientificCalculator extends StatelessWidget {
  const ScientificCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('Scientific Calculator'),
      backgroundColor: Colors.greenAccent.shade400
      ),drawer: NavigationDrawerScreen(),
    ));
  }
}
