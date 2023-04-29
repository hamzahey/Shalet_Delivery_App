import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:shalet/Widgets/appbar.dart';
import 'package:shalet/screens/help.dart';
import 'package:shalet/screens/item_details.dart';
import 'package:shalet/screens/location.dart';
import 'package:shalet/screens/login.dart';


import '../utils/utils.dart';
import 'drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _auth = FirebaseAuth.instance;

  Future<void> signOut() async {
    try {
      await _auth.signOut().then((value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      });
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      // handle the error
      Utils().toastMessage(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    final id = DateTime.now().millisecond.toString();
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        drawer: myDrawer(),
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ));
          }),
          title: Text(
            "Book a Service",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromRGBO(255, 216, 49, 1),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Help()));
                },
                icon: Icon(
                  Icons.help,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {
                  signOut();
                },
                icon: Icon(
                  Icons.logout_outlined,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: ListView(
            padding: EdgeInsets.only(top: 10),
            children: [
              Card(
                elevation: 2,
                child: Container(
                  height: 110,
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 8),
                  child: ListTile(
                    title: Text(
                      "Store Delivery",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    subtitle: Text(
                      "chair, box, mattres, couch, dinning table, refrigerator, desk, bed frame, tv , piano, machine...",
                      style: TextStyle(fontSize: 15),
                    ),
                    leading: Icon(
                      Icons.store,
                      color: Colors.black,
                      size: 50,
                    ),
                    onTap: () {
                      if (_auth.currentUser?.email == null) {
                        Utils().toastMessage(
                            "Please Sign-In to avail the services");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Location(
                                      user: _auth.currentUser?.uid,
                                      type: 'Store Delivery',
                                    )));
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              Card(
                elevation: 2,
                child: Container(
                  height: 110,
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 8),
                  child: ListTile(
                    title: Text(
                      "Move a Few Items",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    subtitle: Text(
                      "chair, box, mattres, couch, dinning table, refrigerator, desk, bed frame, tv , piano, machine...",
                      style: TextStyle(fontSize: 15),
                    ),
                    leading: Icon(
                      Boxicons.bx_package,
                      color: Colors.black,
                      size: 50,
                    ),
                    onTap: () {
                      if (_auth.currentUser?.email == null) {
                        Utils().toastMessage(
                            "Please Sign-In to avail the services");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Location(
                                      user: _auth.currentUser?.uid,
                                      type: 'Move a Few Items',
                                    )));
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              Card(
                elevation: 2,
                child: Container(
                  height: 110,
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 15),
                  child: ListTile(
                    title: Text(
                      "Move an Apartment",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    subtitle: Text(
                      "Move or rearrange an apartment",
                      style: TextStyle(fontSize: 15),
                    ),
                    leading: Icon(
                      Icons.apartment,
                      color: Colors.black,
                      size: 50,
                    ),
                    onTap: () {
                      if (_auth.currentUser?.email == null) {
                        Utils().toastMessage(
                            "Please Sign-In to avail the services");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Location(
                                      user: _auth.currentUser?.uid,
                                      type: 'Move an Apartment',
                                    )));
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              Card(
                elevation: 2,
                child: Container(
                  height: 110,
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 8),
                  child: ListTile(
                    title: Text(
                      "Muscle Only",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    subtitle: Text(
                      "labour or unload items, move withing the building, event set up, storage organisation, other..",
                      style: TextStyle(fontSize: 15),
                    ),
                    leading: Icon(
                      Icons.fitness_center,
                      color: Colors.black,
                      size: 50,
                    ),
                    onTap: () {
                      if (_auth.currentUser?.email == null) {
                        Utils().toastMessage(
                            "Please Sign-In to avail the services");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Location(
                                      user: _auth.currentUser?.uid,
                                      type: 'Muscle Only',
                                    )));
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              Card(
                elevation: 2,
                child: Container(
                  height: 110,
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 15),
                  child: ListTile(
                    title: Text(
                      "Truck Only",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    subtitle: Text(
                      "Type of truck and location",
                      style: TextStyle(fontSize: 15),
                    ),
                    leading: Icon(
                      Icons.local_shipping,
                      color: Colors.black,
                      size: 50,
                    ),
                    onTap: () {
                      if (_auth.currentUser?.email == null) {
                        Utils().toastMessage(
                            "Please Sign-In to avail the services");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Location(
                                      user: _auth.currentUser?.uid,
                                      type: 'Truck Only',
                                    )));
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
