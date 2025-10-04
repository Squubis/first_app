
import 'package:first_app/my_text_widget.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{
   GradientContainer(this.startColor, this.endColor, {super.key});
    final Alignment startAlignment = Alignment.topLeft;
    final Alignment endAlignment = Alignment.bottomRight;
    final Color startColor;
    final Color endColor;

    void rollDice(){

    }

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
          child: Column(
            children: [
              SizedBox(
              height: 250,
                ),
              Image.asset(
               "assets/images/dice-1.png",
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
        ),
        ),
      );
  }
} 