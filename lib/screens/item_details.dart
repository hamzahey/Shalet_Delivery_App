import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shalet/screens/add_item.dart';
import 'package:shalet/screens/helpers.dart';
import 'package:shalet/utils/utils.dart';

class Item_details extends StatefulWidget {
  final type;
  final id;
  final user;

  const Item_details(
      {super.key, required this.user, required this.id, required this.type});

  @override
  State<Item_details> createState() =>
      _Item_detailsState(user: user, id: id, type: this.type);
}

class _Item_detailsState extends State<Item_details> {
  final id;
  final user;
  final type;

  _Item_detailsState({required this.user, required this.id, this.type});

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

  List list1 = [];

  void update() {
    setState(() {
      list1.toSet().toList();
    });
    print(list1);
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    final ref2 = FirebaseDatabase.instance.ref(user.toString()).child(id);
    ref2.onValue.listen((event) {
      final data = event.snapshot.value as Map<dynamic, dynamic>?;
      if (data != null) {
        // Use the forEach() method to iterate over the child2 node's values
        data.forEach((key, value) {
          if (value["value"] != null) {
            print('Key: $key, Value: ${value["value"]}');
            list1.add(value["value"].toString());
            print(list1);
          }
        });
      }
    });
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
                      ref
                          .child(id)
                          .child("Shalet")
                          .set({'type': type.toString()})
                          .then((value) {})
                          .onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });

                      if (_n != 0 && list != "") {
                        if (list == "couch") {
                          ref.child(id).child('couch').set(
                              {'value': "Couch", "count": _n}).then((value) {
                            update();

                            Utils().toastMessage("Couch Added");

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                          user: user,
                                          id: id,
                                          list: list1,
                                        )));
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "box") {
                          ref
                              .child(id)
                              .child('box')
                              .set({'value': "Box", "count": _n}).then((value) {
                            update();
                            Utils().toastMessage("Box Added");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                        user: user, id: id, list: list1)));
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "desk") {
                          ref.child(id).child('desk').set(
                              {'value': "Desk", "count": _n}).then((value) {
                            update();
                            Utils().toastMessage("Desk Added");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                        user: user, id: id, list: list1)));
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "dinning") {
                          ref.child(id).child('dinning').set({
                            'value': "Dinning Table",
                            "count": _n
                          }).then((value) {
                            update();
                            Utils().toastMessage("Dinning Table Added");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                        user: user, id: id, list: list1)));
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "tv") {
                          ref
                              .child(id)
                              .child('tv')
                              .set({'value': "TV", "count": _n}).then((value) {
                            update();
                            Utils().toastMessage("TV Added");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                        user: user, id: id, list: list1)));
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "mattress") {
                          ref.child(id).child('mattress').set(
                              {'value': "Mattress", "count": _n}).then((value) {
                            update();
                            Utils().toastMessage("Mattress Added");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                        user: user, id: id, list: list1)));
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "file cabinet") {
                          ref
                              .child(id)
                              .child('file cabinet')
                              .set({'value': "File Cabinet", "count": _n}).then(
                                  (value) {
                            update();
                            Utils().toastMessage("File Cabinet Added");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                        user: user, id: id, list: list1)));
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "chair") {
                          ref.child(id).child('chair').set(
                              {'value': "Chair", "count": _n}).then((value) {
                            update();
                            Utils().toastMessage("Chair Added");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                        user: user, id: id, list: list1)));
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "bed frame") {
                          ref
                              .child(id)
                              .child('bed frame')
                              .set({'value': "Bed Frame", "count": _n}).then(
                                  (value) {
                            update();
                            Utils().toastMessage("Bed Frame Added");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                        user: user, id: id, list: list1)));
                          }).onError((error, stackTrace) {
                            Utils().toastMessage(error.toString());
                          });
                        } else if (list == "kitchen") {
                          ref
                              .child(id)
                              .child('kitchen')
                              .set({'value': "Refrigenator", "count": _n}).then(
                                  (value) {
                            update();
                            Utils().toastMessage("Refrigenator Added");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Add_Items(
                                        user: user, id: id, list: list1)));
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
