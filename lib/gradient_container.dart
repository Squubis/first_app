
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{
   GradientContainer(this.startColor, this.endColor, {super.key});
    final Alignment startAlignment = Alignment.topLeft;
    final Alignment endAlignment = Alignment.bottomRight;
    final Color startColor;
    final Color endColor;
    

    @override
    Widget build(context){
      return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
               startColor,
               endColor,
            ],
              begin: startAlignment,
              end: endAlignment,
            )
          ),
        
        child: Center(
          child: DiceRoller()
        ),
      );
  }
} 