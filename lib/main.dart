import "package:flutter/material.dart";
import 'Detail_quiz1.dart';
import 'Detail_quiz2.dart';
import 'checkout_screen.dart';
import 'payment_screen.dart';
import 'overlay_screen.dart';
import 'aboutScreen.dart';

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



