import 'package:device_preview/device_preview.dart';
import "package:flutter/material.dart";


import 'main_ui/onboarding/get_started.dart';

void main() => runApp(
  MyApp(), // Wrap your app
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrart',
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnbordingScreen(),
    );
  }

}



