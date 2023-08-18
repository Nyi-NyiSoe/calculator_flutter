import 'package:calculator/components/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components/buttons.dart';
import 'package:calculator/components/constant_text.dart' as constants;

class Temperature extends StatelessWidget {
  static const String id = 'Temperature Converter';
  const Temperature({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Temperature Converter'),
          backgroundColor: Colors.red.shade900,
        ),
        drawer: NavigationDrawerScreen(),
        body: Container(
            child: Column(
          children: [
            Expanded(child: Text('data')),
            const SizedBox(height: 40),
            Expanded(
                flex: 3,
                child: Container(
                  child: GridView.builder(
                      itemCount: constants.temperatureText.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        if (constants.temperatureText[index] == 'CE') {
                          return ButtonsComponent(
                            buttonText: constants.temperatureText[index],
                            buttonColor: Colors.green,
                          );
                        } else if (constants.temperatureText[index] == 'DEL'){
                             return ButtonsComponent(
                            buttonText: constants.temperatureText[index],
                            buttonColor: Colors.red.shade900,
                          );
                        }else{
                          return ButtonsComponent(
                            buttonText: constants.temperatureText[index],
                            buttonColor: isBlank(constants.temperatureText[index]) ? Colors.white : Colors.red,
                          );
                        }
                      }),
                )),
          ],
        )),
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
