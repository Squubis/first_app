import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold( 
          body: GradientContainer(
            Color.fromARGB(255, 222, 2,23),
            Color.fromARGB(32, 0, 0, 0,),
          ),
   ),
  ),
  );
}
