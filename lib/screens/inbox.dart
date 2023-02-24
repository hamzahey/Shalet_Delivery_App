import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inbox",
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(255, 216, 49, 1),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Inbox Empty",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Only quick access messages from Helpers",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
