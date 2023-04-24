import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:shalet/screens/helpers.dart';
import 'package:shalet/screens/item_details.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shalet/utils/utils.dart';

class Add_Items extends StatefulWidget {
  final id;
  final user;
  
  final List list;
  const Add_Items(
      {super.key,
      required this.user,
      required this.id,
      
      required this.list});

  @override
  State<Add_Items> createState() => _Add_ItemsState(
      user: user, id: id, list: list);
}

class _Add_ItemsState extends State<Add_Items> {
  final id;
  final user;
  
  _Add_ItemsState(
      {required this.user,
      required this.id,
      
      required this.list});

  final _auth = FirebaseAuth.instance;

  List list;
  List newList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newList = list.toSet().toList();
  }

  @override
  Widget build(BuildContext context) {
    final ref = FirebaseDatabase.instance.ref(user.toString());
    // List newList = list.toSet().toList();
    print(newList);
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
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: newList.length,
            itemBuilder: (context, index) {
              if (newList.isEmpty) {
                return Center(
                  child: Text("Add Items"),
                );
              } else {
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    trailing: GestureDetector(
                        onTap: () {
                          print(newList);
                          if (newList[index].toString() == "Couch") {
                            ref.child(id).child("couch").remove().then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("Couch");

                              list.remove("Couch");
                              list.clear();
                            });
                          } else if (newList[index].toString() ==
                              "Refrigenator") {
                            ref
                                .child(id)
                                .child("kitchen")
                                .remove()
                                .then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("Refrigenator");

                              list.remove("Refrigenator");
                              list.clear();
                            });
                          } else if (newList[index].toString() == "Chair") {
                            ref.child(id).child("chair").remove().then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("Chair");
                              list.remove("Chair");
                              list.clear();
                            });
                          } else if (newList[index].toString() ==
                              "File Cabinet") {
                            ref
                                .child(id)
                                .child("file cabinet")
                                .remove()
                                .then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("File Cabinet");
                              list.remove("File Cabinet");
                              list.clear();
                            });
                          } else if (newList[index].toString() == "Box") {
                            ref.child(id).child("box").remove().then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("Box");
                              list.remove("Box");
                              list.clear();
                            });
                          } else if (newList[index].toString() == "Bed Frame") {
                            ref
                                .child(id)
                                .child("bed frame")
                                .remove()
                                .then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("Bed Frame");
                              list.remove("Bed Frame");
                              list.clear();
                            });
                          } else if (newList[index].toString() == "Mattress") {
                            ref
                                .child(id)
                                .child("mattress")
                                .remove()
                                .then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("Mattress");
                              list.remove("Mattress");
                              list.clear();
                            });
                          } else if (newList[index].toString() == "TV") {
                            ref.child(id).child("tv").remove().then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("TV");
                              list.remove("TV");
                              list.clear();
                            });
                          } else if (newList[index].toString() ==
                              "Dinning Table") {
                            ref
                                .child(id)
                                .child("dinning")
                                .remove()
                                .then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("Dinning Table");
                              list.remove("Dinning Table");
                              list.clear();
                            });
                          } else if (newList[index].toString() == "Desk") {
                            ref.child(id).child("desk").remove().then((value) {
                              Utils().toastMessage("Item Removed");
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            setState(() {
                              newList.remove("Desk");
                              list.remove("Desk");
                              list.clear();
                            });
                          }
                        },
                        child: Icon(Icons.delete)),
                    title: Text("${newList[index]}"),
                  ),
                );
              }
            }),
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
                            builder: ((context) => Helpers_Vehicle(
                                  user: user,
                                  id: id,
                                ))));
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
