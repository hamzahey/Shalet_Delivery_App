import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shalet/screens/alert.dart';
import 'package:shalet/screens/dashboard.dart';
import 'package:shalet/screens/drafts.dart';
import 'package:shalet/screens/inbox.dart';
import 'package:shalet/screens/main_page.dart';
import 'package:shalet/screens/signup.dart';

import '../utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  final emailcontoller = TextEditingController();
  final passwordcontoller = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontoller.dispose();
    passwordcontoller.dispose();
  }

  Future<void> login() async {
    final email = emailcontoller.text.toString().trim();
    final password = passwordcontoller.text.toString().trim();

    try {
      setState(() {
        loading = true;
      });
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Utils().toastMessage(value.user!.email.toString());
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainPage()));

        setState(() {
          loading = false;
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
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(90)),
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
                            "Login",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 70),
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
                          controller: emailcontoller,
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
                              return 'Enter Email';
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
                          controller: passwordcontoller,
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
                    login();
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MainPage()));
                    // Write Click Listener Code Here.
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            (new Color.fromRGBO(255, 216, 49, 1)),
                            new Color.fromRGBO(255, 216, 49, 1)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
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
                            "LOGIN",
                            style: TextStyle(color: Colors.black),
                          ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have Any Account?  "),
                      GestureDetector(
                        child: Text(
                          "Register Now",
                          style:
                              TextStyle(color: Color.fromRGBO(255, 216, 49, 1)),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                          // Write Tap Code Here.
                        },
                      ),
                    ],
                  ),
                ),
                  
              ],
            ),
          ),
          bottomNavigationBar: Container(
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonMinWidth: 100,
              children: [
                SizedBox(
                  height: 40,
                  width: 120,
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(255, 216, 49, 1)),
                      ),
                      onPressed: () {
                        if (_auth.currentUser?.email == null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage()));
                        }
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
