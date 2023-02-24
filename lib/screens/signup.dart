import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'main_page.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                      "assets/logo.png",
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
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
              child: Text(
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
