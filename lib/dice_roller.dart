import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
  var activeImage = 'assets/images/dice-2.png';
  void rollDice(){
    activeImage='asset/images/dice-4.png';
    print("Rolling Dice");
    print("Active Image");
  }
}