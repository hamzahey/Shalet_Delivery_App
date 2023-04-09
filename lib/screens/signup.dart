import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shalet/screens/forms_data.dart';
import 'package:shalet/utils/utils.dart';

import 'dashboard.dart';
import 'main_page.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phone = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    firstName.dispose();
    lastName.dispose();
    phone.dispose();
  }

  Future<void> SignIn() async {
    final email = emailController.text.toString().trim();
    final password = passwordController.text.toString().trim();

    try {
      setState(() {
        loading = true;
      });
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        setState(() {
          loading = false;
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainPage()));
        });
      });
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      // handle the error
      Utils().toastMessage(e.code);
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: new Color.fromRGBO(255, 216, 49, 1),
              gradient: LinearGradient(
                colors: [
                  (new Color.fromRGBO(255, 216, 49, 1)),
                  new Color.fromRGBO(255, 216, 49, 1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Image.asset(
                      "assets/shalet.png",
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: firstName,
                    cursorColor: Color.fromRGBO(255, 216, 49, 1),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Color.fromRGBO(255, 216, 49, 1),
                      ),
                      hintText: "First Name",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'First Name';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: lastName,
                    cursorColor: Color.fromRGBO(255, 216, 49, 1),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.account_circle,
                        color: Color.fromRGBO(255, 216, 49, 1),
                      ),
                      hintText: "Last Name",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'Enter Last Name';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    cursorColor: Color.fromRGBO(255, 216, 49, 1),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Color.fromRGBO(255, 216, 49, 1),
                      ),
                      hintText: "Enter Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter email';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    cursorColor: Color.fromRGBO(255, 216, 49, 1),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color.fromRGBO(255, 216, 49, 1),
                      ),
                      hintText: "Enter Password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter password';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: phone,
                    cursorColor: Color.fromRGBO(255, 216, 49, 1),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.phone,
                        color: Color.fromRGBO(255, 216, 49, 1),
                      ),
                      hintText: "Phone Number",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'Enter phone';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                // Write Click Listener Code Here
              },
              child: Text("Forget Password?"),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Forms()));

                SignIn();
              }
              // Write Click Listener Code Here.
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  (new Color.fromRGBO(255, 216, 49, 1)),
                  new Color.fromRGBO(255, 216, 49, 1)
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: loading
                  ? CircularProgressIndicator(
                      strokeWidth: 3,
                      color: Colors.black,
                    )
                  : Text(
                      "REGISTER",
                      style: TextStyle(color: Colors.black),
                    ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have Any Account?  "),
                GestureDetector(
                  child: Text(
                    "Login Now",
                    style: TextStyle(color: Color.fromRGBO(255, 216, 49, 1)),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    // Write Tap Code Here.
                  },
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
