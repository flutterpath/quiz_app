import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";

import 'Detail_quiz1.dart';
import 'Detail_quiz2.dart';
import 'aboutScreen.dart';
import 'all_course.dart';
import 'detail_syuying.dart';
import 'main_ui/onboarding/get_started.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, //
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



