import 'package:calculator/components/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Currency extends StatelessWidget {
  static const String id = 'Currency Converter';
  const Currency({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title:const Text('Currency Converter'),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: NavigationDrawerScreen(),
    ));
  }
}
