import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:shalet/screens/item_details.dart';
import 'package:firebase_database/firebase_database.dart';

class Add_Items extends StatefulWidget {
  final user;
  const Add_Items({super.key, required this.user});

  @override
  State<Add_Items> createState() => _Add_ItemsState(user: user);
}

class _Add_ItemsState extends State<Add_Items> {
  final user;
  _Add_ItemsState({required this.user});

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final ref = FirebaseDatabase.instance.ref(user.toString());
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Add Items",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(255, 216, 49, 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(margin: EdgeInsets.all(5), child: Text("data")),
          )
        ],
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
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Back",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 40,
              width: 120,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Item_details(
                                  user: user,
                                )));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
