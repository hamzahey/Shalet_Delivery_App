import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shalet/Widgets/appbar.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text(
          "Help",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(255, 216, 49, 1),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.grey[200],
        child: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            Container(
              color: Colors.white,
              child: Card(
                elevation: 2,
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Terms and Conditions",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Card(
                elevation: 2,
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Card(
                elevation: 2,
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Help",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
