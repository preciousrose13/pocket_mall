import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practiceapp/utils/utils.dart';
import 'package:practiceapp/view/home.dart';
import 'package:practiceapp/view/Auth/login.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool loading = false;
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void signUp(){

    if(_formKey.currentState!.validate()){
                                setState(() {
                                  loading = true;
                                });

                                  _auth .createUserWithEmailAndPassword(
                                    email: emailController.text.toString(),
                                    password: passwordController.text.toString(),
                                  ).then((value){
                                    setState(() {
                                      loading = false;
                                });

                                  }).onError((error, stackTrace){
                                    Utils().toastMessage(error.toString());
                                    setState(() {
                                      loading = false;
                                });
                                  });
                                };
  }

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
          
               
                Form(
                  key: _formKey,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return "Please enter your name";
                              }
                              return null;
                            },
                            controller: nameController,
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                            ),
                          ),

                          TextFormField(
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return "Please enter your Email";
                              }
                              return null;
                            },
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                          ),

                          // PASSWORD
                          
                          TextFormField(
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return "Please enter your password";
                              }
                              return null;
                            },
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                          
                          
                          SizedBox(height: 20),
                          
                        // REGISTER BUTTON

                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.pink),
                              fixedSize: MaterialStateProperty.all(Size(150, 50)),
                            ),
                            onPressed: () {

                              signUp();

                            },
                            child: Text(
                              "Register",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          
                          SizedBox(height: 10),
                          Text(
                            "Already have an account?",
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                        
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
