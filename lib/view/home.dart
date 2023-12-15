import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:practiceapp/view/customappbar.dart';
import 'package:practiceapp/view/customdrawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: const Color.fromARGB(255, 211, 211, 211),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
          ),
      )
   );
  }
}