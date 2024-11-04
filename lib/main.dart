import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quran_app/views/screens/home.dart';

void main() {
  //statage bar
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff1d3f5e), // Change to your desired color
    statusBarBrightness: Brightness.light, // For iOS (light or dark)
    statusBarIconBrightness:
    Brightness.light, // For Android (light or dark icons)
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: Home(),
    );
  }
}


