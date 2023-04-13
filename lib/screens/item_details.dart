import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shalet/screens/helpers.dart';

class Item_details extends StatefulWidget {
  final user;
  const Item_details({super.key, required this.user});

  @override
  State<Item_details> createState() => _Item_detailsState(user: user);
}

class _Item_detailsState extends State<Item_details> {
  final user;
  _Item_detailsState({required this.user});

  final item = TextEditingController();

  final ref = FirebaseDatabase.instance.ref("Data");

  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }

  void decrease() {
    if (_n > 0) {
      setState(() {
        _n--;
      });
    }
  }

  void dispose() {
    super.dispose();
    item.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 20),
              child: Column(
                children: [
                  Text(
                    "What can we move for you?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)),
                      ],
                    ),
                    child: TextFormField(
                      controller: item,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: "Enter an Item",
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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "or",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Select a popular item from the list",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        ref
                            .child(user.toString())
                            .child("Store Delivery")
                            .set({'item1': 'chair'});
                      },
                      leading: Icon(Icons.chair),
                      title: Text("Chair"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        ref
                            .child(user.toString())
                            .child("Item")
                            .set({'item2': 'Box'});
                      },
                      leading: Icon(Icons.add_box),
                      title: Text("Box"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        ref
                            .child(user.toString())
                            .child("Item")
                            .set({'item3': 'Desk'});
                      },
                      leading: Icon(Icons.desk),
                      title: Text("Desk"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        ref
                            .child(user.toString())
                            .child("Item")
                            .set({'item4': 'Dinning Table'});
                      },
                      leading: Icon(Icons.dining),
                      title: Text("Dinning Table"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        ref
                            .child(user.toString())
                            .child("Item")
                            .set({'item5': 'Tv'});
                      },
                      leading: Icon(Icons.tv),
                      title: Text("TV"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            decrease();
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.black,
                          )),
                      Text(
                        "$_n",
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                          onPressed: () {
                            add();
                          },
                          icon: Icon(Icons.add, color: Colors.black)),
                    ],
                  )
                ],
              ),
            ),
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
                              builder: (context) => Helpers_Vehicle()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ));
  }
}
