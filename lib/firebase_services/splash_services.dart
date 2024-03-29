import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shalet/screens/dashboard.dart';
import 'package:shalet/screens/login.dart';
import 'package:shalet/screens/main_page.dart';

class SplashServices{

  void isLogin(BuildContext context){

    final auth = FirebaseAuth.instance;

    final user =  auth.currentUser ;

    if(user != null){
      Timer(const Duration(seconds: 3),
              ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()))
      );
    }else {
      Timer(const Duration(seconds: 3),
              ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
      );
    }


  }
}