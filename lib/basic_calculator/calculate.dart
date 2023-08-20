import 'package:math_expressions/math_expressions.dart';
String calculate(String finalQues){
  String userQues = finalQues;

  var final_result ;
 userQues = userQues.replaceAll('x', '*');
  Parser p = Parser();
  Expression exp = p.parse(userQues);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);
  final_result = eval.toString();

  return final_result;
}