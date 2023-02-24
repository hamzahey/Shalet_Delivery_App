import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'drafts.dart';

class myDrawer extends StatefulWidget {
  const myDrawer({super.key});

  @override
  State<myDrawer> createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Bilal A.",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            accountEmail: Text(
              "bilal-amru@hotmail.com",
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            decoration: BoxDecoration(color: Color.fromRGBO(255, 216, 49, 1)),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Draft()));
            },
            leading: Icon(
              Boxicons.bx_package,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              "Drafts",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(
              Icons.payment,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              "Payments",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              "Invite Friends",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(
              Icons.card_giftcard,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              "Gift Shalet",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(
              Icons.currency_pound,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              "Shalet Credit",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(
              Icons.car_rental,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              "Become a Helper",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              "Help",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
