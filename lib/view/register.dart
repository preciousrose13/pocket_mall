import 'package:flutter/material.dart';
import 'package:practiceapp/view/login.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage("images/bg2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 400,
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "HOME!",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Hello, this is my Store",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
          
               
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                          ),
                        ),
                        // SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
          
          
                        SizedBox(height: 20),
          
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.pink),
                            fixedSize: MaterialStateProperty.all(Size(150, 50)),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Register Now",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
          
                        SizedBox(height: 10),
                        Text(
                          "Already have an account?",
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
          
                        // Text(
                        //   "Log In",
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(
                        //     fontSize: 18,
                        //     fontWeight: FontWeight.bold
                        //   ), 
                        // ),
          
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                           );
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
