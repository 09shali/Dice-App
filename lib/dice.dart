
import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({ Key key }) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade300,
      appBar: AppBar (
        title: const Center(
          child: Text("Dice",
          style: TextStyle (fontFamily:'TheNautigal',color: Colors.white, fontSize: 60.0), 
          ),
        ),
        elevation: 5,
        backgroundColor: Colors.purple.shade300,
        ),
        body: DicePage(),
      );
  }
}

class DicePage extends StatefulWidget {
  DicePage({ Key key }) : super(key: key);
  
  
  
  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 2;

   void OnClicked (){
    setState (() {

      var random = new Random();

      leftDice = random.nextInt(6) + 1; 
      rightDice = random.nextInt(6) + 1;
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Row(
          children:[
            Expanded(
          child: InkWell(
            child: TextButton (
              onPressed: () {
                OnClicked();
              },
              child: Image.asset('assets/dice$leftDice.png', color: Colors.white,)
            ),
          ),
              ),
              const SizedBox(
                width: 3.0,
              ),
                Expanded(
          child: InkWell(
            child: TextButton (
              onPressed: () {
                OnClicked();
              },
              child: Image.asset('assets/dice$rightDice.png',color: Colors.white,),
            ),
          )
              ),              
          ],
        ),
      ),
    );
  }  
}



