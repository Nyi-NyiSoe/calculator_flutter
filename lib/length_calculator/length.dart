import 'package:calculator/components/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Length extends StatelessWidget {
  static const String id = 'Length Converter';
  const Length({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Length Converter'),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: NavigationDrawerScreen(),
    ));
  }
}
