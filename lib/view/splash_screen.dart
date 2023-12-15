import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:practiceapp/view/Auth/login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 3000,
        splash: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image.asset(
              "images/pocketmalllogo.png",
               height: 100,
               width: 250,
               ),
            ],
          ),
        ),
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.pink,
        )
    );
  }
}
