import 'package:calculator/currency_calculator/currency.dart';
import 'package:calculator/length_calculator/length.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:calculator/temperature_calculator/temperature.dart';
import 'package:flutter/material.dart';
import 'basic_calculator/basic_calculator.dart';

void main() async{
  WidgetsBinding widgetsBinding =  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding:  widgetsBinding);
 
  runApp(MyApp());
   await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: BasicCalculator.id,
      routes: {
        BasicCalculator.id: (context) => const BasicCalculator(),
        Currency.id: (context) => Currency(),
        Length.id: (context) => const Length(),
        Temperature.id: (context) => const Temperature(),
        
      },
    );
  }
}
