import 'package:calculator/components/navigation_drawer.dart';

import 'package:flutter/material.dart';
import 'package:calculator/components/buttons.dart';
import 'package:calculator/components/constant_text.dart' as constants;
import 'package:calculator/components/dropdown.dart';


class Temperature extends StatefulWidget {
  
  static const String id = 'Temperature Converter';
  const Temperature({super.key});

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
   var userInput = '';
   double celResult=0;
   double fahResult=0;
   double kelResult=0;
   late String selectedTemp = 'Celcius';

    List<String> temps = ['Celsius', 'Fahrenheit', 'Kelvin'];
  @override
  Widget build(BuildContext context) {
   
   void calculate(String temp,double userInput){
    if(temp == 'Celcius'){
      //to Cel
      celResult = userInput;
      //to Fah
      fahResult =(userInput * 9 / 5) + 32;
      //to kel
      kelResult =  userInput + 273.15;
    } else if(temp=='Fahrenheit'){
      //to cel
      celResult =(userInput - 32) * 5 / 9;
      // to fah
      fahResult = userInput;
      // to kel
      kelResult = (userInput + 459.67) * 5 / 9;
    }else{
      //to cel
      celResult = userInput - 273.15;
    //to fah
    fahResult = userInput * 9 / 5 - 459.67;
    //to kel
    kelResult = userInput;
    }
   }
  
    

   
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Temperature Converter'),
          backgroundColor: Colors.pinkAccent,
        ),
        drawer: const NavigationDrawerScreen(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      DropDown(

                      items: constants.temperatures,
                      selectedValue: selectedTemp ,
                      color: Colors.pinkAccent,
                      onChanged: (newValue){
                       setState(() {
                          selectedTemp = newValue ?? 'Celcius';
                       });
                      },
                      ),
                      Text(userInput,style:const  TextStyle(fontSize: 20)),
                      
                    ],
                  ),
                  const Icon(Icons.double_arrow,size: 50,color: Colors.pinkAccent,),
                  Column(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     const Text('Celcius',style: TextStyle(fontSize: 20),),
                     Text(celResult.toStringAsFixed(2),style: const TextStyle(fontSize: 20),),
                     const Text('Fahrenheit',style: TextStyle(fontSize: 20)),
                     Text(fahResult.toStringAsFixed(2),style: const TextStyle(fontSize: 20)),
                      const Text('Kelvin',style: TextStyle(fontSize: 20)),
                     Text(kelResult.toStringAsFixed(2),style: const TextStyle(fontSize: 20)),
                    ],
                  )
                ],
              ),
            ),
            //const SizedBox(height: 30),
            Expanded(
                flex: 2,
                child: GridView.builder(
                    itemCount: constants.temperatureText.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      if (constants.temperatureText[index] == 'CE') {
                        return ButtonsComponent(
                          buttonText: constants.temperatureText[index],
                          buttonColor: Colors.green,
                          onTap: () {
                            setState(() {
                              userInput = '';
                            });
                          },
                        );
                      } else if (constants.temperatureText[index] == 'DEL') {
                        return ButtonsComponent(
                          buttonText: constants.temperatureText[index],
                          buttonColor: Colors.red,
                          onTap: () {
                            setState(() {
                              userInput= userInput.substring(0,userInput.length-1);
                            });
                          },
                        );
                      }else if(constants.temperatureText[index] == '='){
                         return ButtonsComponent(
                          buttonText: constants.temperatureText[index],
                          buttonColor: isBlank(constants.temperatureText[index])
                              ? Colors.white
                              : Colors.pinkAccent,
                              onTap: () {
                               setState(() {
                                 calculate(selectedTemp, double.parse(userInput));
                               });
                              },
                        );

                      } else if(constants.temperatureText[index] == '-'){
                          return ButtonsComponent(
                          buttonText: constants.temperatureText[index],
                          buttonColor: isBlank(constants.temperatureText[index])
                              ? Colors.white
                              : Colors.pinkAccent,
                              onTap: () {
                               setState(() {
                                 userInput = constants.temperatureText[index] + userInput;
                               });
                              },
                        );

                      }else {
                        return ButtonsComponent(
                          buttonText: constants.temperatureText[index],
                          buttonColor: isBlank(constants.temperatureText[index])
                              ? Colors.white
                              : Colors.pinkAccent,
                              onTap: () {
                                setState(() {
                                  userInput+= constants.temperatureText[index];
                                  
                                });
                              },
                        );
                      }
                    })),
          ],
        ),
      ),
    );
  }
}

bool isBlank(String x) {
  if (x == '') {
    return true;
  }
  return false;
}
