import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
      backgroundColor: Color(Colors.pink.value),
      title: Text(
        "Pocket Mall",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
      ),
      centerTitle: true,

      // bottom: PreferredSize(
      //   preferredSize: Size.fromHeight(50.0),
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: TextField(
      //       decoration: InputDecoration(
      //         hintText: 'Search...',
      //         filled: true,
      //         fillColor: Colors.white,
      //         border: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(10.0),
      //           borderSide: BorderSide.none,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
