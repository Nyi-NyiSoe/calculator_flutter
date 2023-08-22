import 'package:calculator/components/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components/buttons.dart';
import 'package:calculator/components/constant_text.dart' as constants;
import 'package:calculator/basic_calculator/calculate.dart';

class BasicCalculator extends StatefulWidget {
  static const String id = 'Basic Calculator';
 
  const BasicCalculator({super.key});

  @override
  State<BasicCalculator> createState() => _BasicCalculatorState();
}

class _BasicCalculatorState extends State<BasicCalculator> {
    var userQuestion ='';
    var answer ='';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text('Basic Calculator')),
      drawer: const NavigationDrawerScreen(),
      body: Column(children: [
        Expanded(
            child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text(userQuestion,style: const TextStyle(fontSize: 20),),),
                Container(
                  padding: const EdgeInsets.all(5),
                   alignment: Alignment.centerRight,
                  
                  child: Text(answer,style: const TextStyle(fontSize: 20),),)
              ],
            ),
          ),
        )),
        Expanded(
            flex: 6,
            child: Container(
              //padding: EdgeInsets.all(11),
              color: Colors.white,
              child: GridView.builder(
                
                itemCount: constants.basicCalculatorText.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 8,
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                 if(index == 0){
                   return ButtonsComponent(
                    onTap: () {
                      setState(() {
                        userQuestion = '';
                      });
                    },
                    buttonText: constants.basicCalculatorText[index],
                    buttonColor:Colors.green,
                    textColor: Colors.white,
                  );
                 }else if (index==1){
                   return ButtonsComponent(
                    onTap: () {
                      setState(() {
                        userQuestion = userQuestion.substring(0,userQuestion.length-1);
                      });
                    },
                    buttonText: constants.basicCalculatorText[index],
                    buttonColor:Colors.red,
                    textColor: Colors.white,
                  );
                  
                 }else if(index == constants.basicCalculatorText.length-1){
                  return ButtonsComponent(
                    onTap: () {
                      setState(() {
                        answer = calculate(userQuestion);
                      });
                    },
                    buttonText: constants.basicCalculatorText[index],
                    buttonColor:Colors.blue,
                    textColor: Colors.white,
                  );
                 }else{
                   return ButtonsComponent(
                    onTap: () {
                      setState(() {
                        userQuestion += constants.basicCalculatorText[index];
                      });
                    },
                    buttonText: constants.basicCalculatorText[index],
                    buttonColor:isOperator(constants.basicCalculatorText[index]) ? Colors.blue : Colors.grey.shade200,
                    textColor: isOperator(constants.basicCalculatorText[index]) ? Colors.white : Colors.blue,
                  );
                 }
                },
              ),
            ))
      ]),
    ));
  }
}


bool isOperator(String x ){
  if (x == '%' || x== '/' || x=='x' || x=='-' || x=='+' || x== '='){
    return true;
  }
  return false;
}