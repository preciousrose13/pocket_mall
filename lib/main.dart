import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/view/login.dart';
import 'package:practiceapp/view/register.dart';
import 'package:practiceapp/view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: SplashScreen()

    );
  }
}
