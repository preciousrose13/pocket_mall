import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:practiceapp/view/login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Column(
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 100,
            ),
            
            Text(
              "Pocket Mall",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ],
        ),
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.pink,
        )
    );
  }
}
