import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class Draft extends StatefulWidget {
  const Draft({super.key});

  @override
  State<Draft> createState() => _DraftState();
}

class _DraftState extends State<Draft> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drafts",
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
            Container(
              height: 20,
              child: Center(
                child: Text(
                  "Drafts",
                  style: TextStyle(color: Colors.grey[700], fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Card(
                elevation: 2,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Move a Few Items",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      leading: Icon(
                        Boxicons.bxs_package,
                        color: Colors.black,
                        size: 35,
                      ),
                      trailing: Text(
                        "8 items",
                        style: TextStyle(color: Colors.grey[600], fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ListTile(
                        title: Row(
                          children: [
                            Text("2/13",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15)),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Monday",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 15))
                          ],
                        ),
                        leading: Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ListTile(
                        title: Row(
                          children: [
                            Text("10:30a.m - 2:30p.m",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15)),
                            SizedBox(
                              width: 5,
                            ),
                            Text("GMT-05:00",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 15))
                          ],
                        ),
                        leading: Icon(
                          Icons.access_time,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ListTile(
                        title: Row(
                          children: [
                            Text("581 Atwood St SW",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15)),
                          ],
                        ),
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      child: ListTile(
                        trailing: SizedBox(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Delete",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey[600]),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Continue",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        title: Text(
                          "DRAFT",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
