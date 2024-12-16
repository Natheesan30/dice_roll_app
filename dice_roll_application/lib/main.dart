import 'package:flutter/material.dart';

void addTwoNumber({required double number1,required double number2}){
    double answer = number1 + number2;
    print(answer); 
}

void main(){
  addTwoNumber(number1: 3.2, number2: 2.3);
  runApp(MaterialApp(
    home: HelloWorldApp(),
  ));
}

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('This is the App Bar!'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}