import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shalet/screens/helpers.dart';
import 'package:shalet/utils/utils.dart';

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

  String list = "";

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
                        setState(() {
                          list = "couch";
                        });
                        Utils().toastMessage("couch Selected");
                      },
                      leading: Icon(Icons.chair),
                      title: Text("Couch"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          list = "box";
                        });
                        Utils().toastMessage("Box Selected");
                      },
                      leading: Icon(Icons.add_box),
                      title: Text("Box"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          list = "desk";
                        });
                        Utils().toastMessage("Desk Selected");
                      },
                      leading: Icon(Icons.desk),
                      title: Text("Desk"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          list = "dinning";
                        });
                        Utils().toastMessage("Dinning Table Selected");
                      },
                      leading: Icon(Icons.dining),
                      title: Text("Dinning Table"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          list = "tv";
                        });

                        Utils().toastMessage("TV Selected");
                      },
                      leading: Icon(Icons.tv),
                      title: Text("TV"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          list = "bed frame";
                        });
                        Utils().toastMessage("Bed Frame Selected");
                      },
                      leading: Icon(Icons.bed),
                      title: Text("Bed Frame"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          list = "mattress";
                        });
                        Utils().toastMessage("Mattress Selected");
                      },
                      leading: Icon(Icons.bed),
                      title: Text("Mattress"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          list = "kitchen";
                        });
                        Utils().toastMessage("Refrigenator Selected");
                      },
                      leading: Icon(Icons.kitchen),
                      title: Text("Refrigenator"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          list = "file cabinet";
                        });
                        Utils().toastMessage("File Cabinet Selected");
                      },
                      leading: Icon(Icons.file_copy),
                      title: Text("File Cabinet"),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          list = "chair";
                        });
                        Utils().toastMessage("Chair Selected");
                      },
                      leading: Icon(Icons.event_seat),
                      title: Text("Chair"),
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
                    onPressed: () {
                      if (_n != 0 && list != "") {
                        if (list == "couch") {
                          ref.child("Store").child('couch').set(
                              {'value': "Couch", "count": _n}).then((value) {
                            Utils().toastMessage("Chair Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "box") {
                          ref
                              .child("Store")
                              .child('Box')
                              .set({'value': "Box", "count": _n}).then((value) {
                            Utils().toastMessage("Box Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "desk") {
                          ref.child("Store").child('Desk').set(
                              {'value': "Desk", "count": _n}).then((value) {
                            Utils().toastMessage("Desk Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "dinning") {
                          ref.child("Store").child('Dinning').set({
                            'value': "Dinning Table",
                            "count": _n
                          }).then((value) {
                            Utils().toastMessage("Dinning Table Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "tv") {
                          ref
                              .child("Store")
                              .child('TV')
                              .set({'value': "TV", "count": _n}).then((value) {
                            Utils().toastMessage("TV Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "mattress") {
                          ref.child("Store").child('mattress').set(
                              {'value': "Mattress", "count": _n}).then((value) {
                            Utils().toastMessage("Mattress Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "file cabinet") {
                          ref
                              .child("Store")
                              .child('file cabinet')
                              .set({'value': "File Cabinet", "count": _n}).then(
                                  (value) {
                            Utils().toastMessage("File Cabinet Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "chair") {
                          ref.child("Store").child('chair').set(
                              {'value': "Chair", "count": _n}).then((value) {
                            Utils().toastMessage("Chair Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "bed frame") {
                          ref
                              .child("Store")
                              .child('bed frame')
                              .set({'value': "Bed Frame", "count": _n}).then(
                                  (value) {
                            Utils().toastMessage("Bed Frame Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "kitchen") {
                          ref
                              .child("Store")
                              .child('kitchen')
                              .set({'value': "Refrigenator", "count": _n}).then(
                                  (value) {
                            Utils().toastMessage("Refrigenator Added");
                            Navigator.pop(context);
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        }
                      } else {
                        Utils().toastMessage("Select or add an Item");
                      }
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ));
  }
}
