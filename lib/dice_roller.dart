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
 final randomizer = Random();
 var currentDiceRoll= 2;
 void rollDice(){
    setState((){
    currentDiceRoll = randomizer.nextInt(6)+1;
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
               'assets/images/dice-$currentDiceRoll.png',
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