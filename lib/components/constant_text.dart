import 'package:calculator/screens/basic_calculator.dart';
import 'package:calculator/screens/currency.dart';
import 'package:calculator/screens/length.dart';
import 'package:calculator/screens/scientific_calculator.dart';
import 'package:calculator/screens/programmer_screen.dart';
import 'package:calculator/screens/temperature.dart';
import 'package:flutter/material.dart';


const List<String> basicCalculatorText = [
  'C' , 'DEL' , '(' , ')',
  '9' , '8' , '7' , 'x',
  '6' , '5' , '4' , '-',
  '3' , '2' , '1' , '+',
  '0' , '.' , '/' , '='
];

const List<String> temperatureText = [
  '7',   '8',   '9' ,  'CE',
  '4',   '5' ,  '6' ,  'DEL',
  '1',   '2' ,  '3' ,  '-',
  '',   ' . ', ' 0',  ''
];

const Map<String,Icon> calculatorRouteIcons = {
  BasicCalculator.id : Icon(Icons.calculate),
  ScientificCalculator.id : Icon(Icons.science),
  ProgrammerCalculator.id : Icon(Icons.code)
};

const Map<String,Icon> converterRouteIcons ={
  Currency.id : Icon(Icons.currency_exchange),
  Length.id : Icon(Icons.rule),
  Temperature.id: Icon(Icons.thermostat)
};