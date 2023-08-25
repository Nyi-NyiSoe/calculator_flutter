import 'package:calculator/components/dropdown.dart';
import 'package:calculator/components/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components/constant_text.dart' as constants;
import 'package:units_converter/units_converter.dart';
import 'package:units_converter/units_converter.dart' as unit;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Length extends StatefulWidget {
  static const String id = 'Length Converter';
  const Length({super.key});

  @override
  State<Length> createState() => _LengthState();
}

class _LengthState extends State<Length> {
  String? selectedValue1 = 'Nanometers';
  String? selectedValue2 = 'Inches';
  double? answer = 0;

  Map<String, dynamic> length = {
    'Nanometers': LENGTH.nanometers,
    'Micrometers': LENGTH.micrometers,
    'Millimeters': LENGTH.millimeters,
    'Centimeters': LENGTH.centimeters,
    'Meters': LENGTH.meters,
    'Kilometers': LENGTH.kilometers,
    'Inches': LENGTH.inches,
    'Feet': LENGTH.feet,
    'Yards': LENGTH.yards,
    'Miles': LENGTH.miles,
    'Nauctical Miles': LENGTH.nauticalMiles
  };

  void calculate(String input, String? sourceUnit, String? targetedUnit) {
    setState(() {
      answer = double.parse(input)
          .convertFromTo(length[sourceUnit], length[targetedUnit]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Length Converter'),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: const NavigationDrawerScreen(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          lengthLayout(
              selectedValue1,
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  if (value.isEmpty) {
                    setState(() {
                      answer = 0;
                    });
                  }
                  try {
                    setState(() {
                      calculate(value, selectedValue1, selectedValue2);
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ), (newValue) {
            setState(() {
              selectedValue1 = newValue;
            });
          }),
          Transform.rotate(
            angle: 3.14159 / 2, // Rotate 90 degrees (π/2 radians)
            child: Icon(
              FontAwesomeIcons.rightLeft,
              size: 100,
            ),
          ),
          lengthLayout(
              selectedValue2,
              Text(
                answer!.toString(),
                style: const TextStyle(fontSize: 40),
              ), (newValue) {
            setState(() {
              selectedValue2 = newValue;
            });
          }),
        ],
      ),
    ));
  }

  Padding lengthLayout(
      String? value, Widget widget, Function(String?)? onChanged) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DropDown(
              color: Colors.grey,
              items: constants.measurements,
              selectedValue: value,
              onChanged: onChanged),
          const Icon(Icons.arrow_forward),
          Container(width: 100, child: widget)
        ],
      ),
    );
  }
}
