import 'package:calculator/screens/basic_calculator.dart';
import 'package:calculator/screens/programmer_screen.dart';
import 'package:calculator/screens/scientific_calculator.dart';
import 'package:flutter/material.dart';


class NavigationDrawerScreen extends StatelessWidget {
  const NavigationDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
     
      child: SingleChildScrollView(
        child: Column(children: [
          buildHeader(),
          buildMenuItems()
        ]),
      ),
    );
  }
}

class buildHeader extends StatelessWidget {
  const buildHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );
  }
}

class buildMenuItems extends StatelessWidget {
  const buildMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      
      ListTile(leading: const Icon(Icons.calculate),
        title: const Text('Basic Calculator'),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
          return BasicCalculator();
        })),
      ),
       ListTile(leading: const Icon(Icons.science),
        title: const Text('Scientific Calculator'),
        onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context){
          return ScientificCalculator();}),)
      ),
       ListTile(leading: const Icon(Icons.code),
        title: const Text('Programmer Calculator'),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
          return ProgrammerCalculator();
        }),
        ),
      )
    ],);
  }
}
