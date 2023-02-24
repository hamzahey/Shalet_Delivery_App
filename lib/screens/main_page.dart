import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:shalet/screens/alert.dart';
import 'package:shalet/screens/dashboard.dart';
import 'package:shalet/screens/drafts.dart';
import 'package:shalet/screens/inbox.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [Dashboard(), Draft(), Inbox(), Alert()];
  int currentIndex = 0;
  void Tap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: Tap,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          elevation: 0,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Draft", icon: Icon(Boxicons.bx_package)),
            BottomNavigationBarItem(label: "Inbox", icon: Icon(Icons.message)),
            BottomNavigationBarItem(label: "Alert", icon: Icon(Icons.warning))
          ]),
    );
  }
}
