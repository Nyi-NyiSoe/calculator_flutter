import 'package:calculator/components/navigation_drawer.dart';
import 'package:flutter/material.dart';

class ScientificCalculator extends StatelessWidget {
  static const String id = 'Scientific Calculator';
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
