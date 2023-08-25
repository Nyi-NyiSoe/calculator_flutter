import 'package:calculator/basic_calculator/basic_calculator.dart';
import 'package:calculator/currency_calculator/currency.dart';
import 'package:calculator/length_calculator/length.dart';

import 'package:calculator/temperature_calculator/temperature.dart';
import 'package:flutter/material.dart';


const List<String> basicCalculatorText = [
  'CE' , 'DEL' , '(' , ')',
  '9' , '8' , '7' , 'x',
  '6' , '5' , '4' , '-',
  '3' , '2' , '1' , '+',
  '0' , '.' , '/' , '='
];

const List<String> temperatureText = [
  '9',   '8',   '7' ,  'CE',
  '6',   '5' ,  '4' ,  'DEL',
  '3',   '2' ,  '1' ,  '',
  '-',   '.', '0',  '='
];

const List<String> temperatures = [
  'Celcius','Fahrenheit','Kelvin'
];

const List<String> measurements = [
  'Nanometers','Micrometers','Millimeters','Centimeters','Meters','Kilometers','Inches','Feet','Yards','Miles', 'Nauctical Miles'
];

const Map<String,Icon> calculatorRouteIcons = {
  BasicCalculator.id : Icon(Icons.calculate),
  
};

const Map<String,Icon> converterRouteIcons ={
  Currency.id : Icon(Icons.currency_exchange),
  Length.id : Icon(Icons.design_services),
  Temperature.id: Icon(Icons.thermostat)
};