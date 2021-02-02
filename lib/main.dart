import "package:flutter/material.dart";
import 'Detail_quiz1.dart';
import 'Detail_quiz2.dart';
import 'Detail_quiz3.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Montserrart',
      primarySwatch: Colors.deepOrange,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: AboutScreen(),
  ));
}



