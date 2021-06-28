import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget Button(var num) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            result = result + num;
          });
        },
        child: Text(num));
  }

  Clear() {
    setState(() {
      result = "";
    });
  }

  Calculation() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      result = eval.toString();
    });
  }

  var result = "";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button("1"),
              Button("2"),
              Button("3"),
              Button("4"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button("5"),
              Button("6"),
              Button("7"),
              Button("8"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button("9"),
              Button("0"),
              Button("+"),
              Button("-"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button("*"),
              Button("/"),
              ElevatedButton(
                  onPressed: () {
                    Clear();
                  },
                  child: Text("Clear")),
              ElevatedButton(
                  onPressed: () {
                    Calculation();
                  },
                  child: Text("=")),
            ],
          )
        ],
      ),
    );
  }
}
