import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapp/view/splash_screen.dart';
import 'firebase_options.dart';

void main(List<String> args) async {   WidgetsFlutterBinding.ensureInitialized();   
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

runApp(MyApp()); }

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




