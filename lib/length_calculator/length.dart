import 'package:calculator/components/buttons.dart';
import 'package:calculator/components/dropdown.dart';
import 'package:calculator/components/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components/constant_text.dart' as constants;

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
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          lengthLayout(selectedValue1,TextField(),(newValue){
            setState(() {
              selectedValue1 = newValue;
            });
          }),
          const Icon(Icons.keyboard_double_arrow_down_sharp,size: 100,),
          lengthLayout(selectedValue2,Text(answer.toString(),style: TextStyle(fontSize: 40),),(newValue){
            setState(() {
              selectedValue2 = newValue;
            });
          }),
          
        ],
      ),
    ));
  }

  Padding lengthLayout(String? value,Widget widget,Function(String?)? onChanged) {
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
                  Container(width: 150,child: widget)
            ],
          ),
        );
  }
}
