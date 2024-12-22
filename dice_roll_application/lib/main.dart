import 'package:flutter/material.dart';
import 'dart:math';

void addTwoNumber({required double number1,required double number2}){
    double answer = number1 + number2;
    print(answer); 
}

void main(){
  addTwoNumber(number1: 3.2, number2: 2.3);
  runApp(MaterialApp(
    home: DiceRollApp(),
  ));
}

//enum BodyColor {grey, red}

class DiceRollApp extends StatefulWidget {
  const DiceRollApp({super.key});

  @override
  State<DiceRollApp> createState() => _DiceRollAppState();
}

class _DiceRollAppState extends State<DiceRollApp> {
  String filePath = 'assets/images/dice 1.png';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade300
        ),
        width: MediaQuery.of(context).size.width ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(  // here text is a widget
              'DICE ROLL APP',
               style: TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.w800,
               color:Colors.black.withOpacity(0.41))
           ),
            Image.asset(filePath, height:225 , width: 225,), // image is a widget
           // ElevatedButton(onPressed: () {}, child: Text('ROLL DICE'), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.green.shade900)),)
           GestureDetector(
             onTap: printRunning,
             child: Container(
              height: 51,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: Color.fromARGB(255,29,46,29),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(child: Text('ROLL DICE', style: TextStyle(color: Colors.white, fontSize: 28),)),
             ),
           )
          ]
        ),
      ),
      );
  }

  void printRunning(){
      int randNumber = Random().nextInt(6) + 1;
      //print('the image path is $filePath');
      
      //print('the new image path is $filePath' );
      setState(() {
        filePath = 'assets/images/dice $randNumber.png';
      });
     // print('number is : $randNumber');
    }
}
