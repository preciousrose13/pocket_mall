import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),

              child: Text(
                "User ID: 123456",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),


            ListTile(
              leading: Icon(Icons.history,
              color: Colors.pink,
              ),
              title: Text('Order History'),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.local_offer,
              color: Colors.pink,
              ),
              title: Text('Vouchers & Offers'),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.person,
              color: Colors.pink,
              ),
              title: Text("View Profile"),
              onTap: () {},
            ),
            
            ListTile(
              leading: Icon(Icons.help,
              color: Colors.pink,
              ),
              title: Text("Help Center"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.policy,
              color: Colors.pink,
              ),
              title: Text("Terms & Conditions"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.settings,
              color: Colors.pink,
              ),
              title: Text("Settings"),
              onTap: () {},
            ),
            

            ListTile(
              leading: Icon(Icons.logout,
              color: Colors.pink,
              ),
              title: Text("Logout"),
              onTap: () {},
            ),

          ],
        ),
    );
  }
}