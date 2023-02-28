import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shalet/screens/dashboard.dart';
import 'package:shalet/screens/main_page.dart';

class Fifa_Card extends StatefulWidget {
  const Fifa_Card({super.key});

  @override
  State<Fifa_Card> createState() => _Fifa_CardState();
}

class _Fifa_CardState extends State<Fifa_Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Congratulations",
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(255, 216, 49, 1),
      ),
      body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: ListView(
            padding: EdgeInsets.only(top: 10),
            children: [
              Card(
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.only(top: 20, bottom: 25),
                  color: Color.fromRGBO(255, 216, 49, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sports_soccer,
                        size: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Congratulations!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "You have won a Fifa Card",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Score:",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "80",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      padding:
                          EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                      color: Color.fromRGBO(255, 216, 49, 1),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage()));
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ))))
            ],
          )),
    );
  }
}
