import 'package:calculator/screens/basic_calculator.dart';
import 'package:calculator/screens/programmer_screen.dart';
import 'package:calculator/screens/scientific_calculator.dart';
import 'package:flutter/material.dart';
import 'constant_text.dart' as constants;

class NavigationDrawerScreen extends StatelessWidget {
  const NavigationDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SingleChildScrollView(
        child: Column(children: [buildHeader(), buildMenuItems()]),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.all(18),
            child: const Text(
              'Calculator',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        Calculator_tile(),
        
        Container(
            padding: const EdgeInsets.all(18),
            child: const Text(
              'Converter',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
            const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        Converter_tile()
      ],
    );
  }
}

class Calculator_tile extends StatelessWidget {
  const Calculator_tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        String route_name = constants.calculatorRouteIcons.keys.elementAt(index);
        return ListTile(
          leading: constants.calculatorRouteIcons[route_name],
          title: Text(route_name),
          onTap: () => Navigator.pushNamed(context, route_name),
        );
      },
      itemCount: constants.calculatorRouteIcons.length,
    );
  }
}


class Converter_tile extends StatelessWidget {
  const Converter_tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        String route_name = constants.converterRouteIcons.keys.elementAt(index);
        return ListTile(
          leading: constants.converterRouteIcons[route_name],
          title: Text(route_name),
          onTap: () => Navigator.pushNamed(context, route_name),
        );
      },
      itemCount: constants.converterRouteIcons.length,
    );
  }
}
