import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
 var activeImage = 'assets/images/dice-1.png';
 void rollDice(){
  var rolledValue = Random().nextInt(6)+1;
  setState((){
    activeImage = 'assets/images/dice-$rolledValue.png';
    });
 }
   
  @override
   Widget build(context){
    return Column(
            children: [
              SizedBox(
              height: 250,
                ),
              Image.asset(
               activeImage,
               width: 200,
              ),
              SizedBox(
                height: 50,
                ),
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 120, 24, 120),
                  textStyle: const TextStyle(
                    fontSize: 28,
                  )
                ),
                child: Text("Roll the Dice!"),
              )
          ],
        );
 }
  
}