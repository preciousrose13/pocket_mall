import 'package:flutter/material.dart';
import 'package:practiceapp/view/customappbar.dart';
import 'package:practiceapp/view/customdrawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
   );
  }
}