import 'package:calculator_todo_ecom_app/calculator.dart';
import 'package:calculator_todo_ecom_app/ecomapp.dart';
import 'package:calculator_todo_ecom_app/todo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // body: Calculator(),
          // body: Todo(),
          body: EcomApp(),
        ));
  }
}
