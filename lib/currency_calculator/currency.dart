import 'package:calculator/components/buttons.dart';
import 'package:calculator/components/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components/dropdown.dart';
import 'currency_data.dart' as currency_data;

class Currency extends StatefulWidget {
  static const String id = 'Currency Converter';
  

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  String? selectedValue1 = 'THB';
  String? selectedValue2 = 'MMK';
  double result =0;
  double c1=0;
  double c2=0;




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Currency Converter'),
          backgroundColor: Colors.orangeAccent,
        ),
        drawer: const NavigationDrawerScreen(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Row(
            children: [
               Padding(
              padding: EdgeInsets.all(20),
              child: DropDown(
                  items: currency_data.currencies,
                  selectedValue: selectedValue1,
                  color: Colors.orangeAccent,
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue1 = newValue;
                    });
                  }),
            ),
           Expanded(child: TextField(onChanged: (value) {
             setState(() {
               c1=double.parse(value);
             });
           },keyboardType: TextInputType.number,))
            ],
           ),
            Row(
            children: [
               Padding(
              padding: EdgeInsets.all(20),
              child: DropDown(
                  items: currency_data.currencies,
                  selectedValue: selectedValue2,
                  color: Colors.orangeAccent,
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue1 = newValue;
                    });
                  }),
            ),
           Expanded(child: Text(c2.toString(),style: TextStyle(fontSize: 30),))
            ],
           ),
           const SizedBox(height: 10,),
           ButtonsComponent(buttonText: 'Convert',buttonColor: Colors.orangeAccent,onTap: ()async{
           var multiplyer = await currency_data.CurrencyData().exchange(selectedValue1,selectedValue2);
            result = c1 * multiplyer ;
            print(result);
            setState(() {
              c2 = result;
            });

           },)
          ],
        ),
      ),
    );
  }
}
