import 'package:flutter/material.dart';

class MyTextwidget extends StatelessWidget{
const MyTextwidget(this.text,{super.key});
final String text;

@override
  Widget build(BuildContext context){
    return Center(
      child: Text(
      text, 
      style:TextStyle(
        fontSize: 50,
        color: Colors.white,
      ) ,
    )
  );


 }
  

}