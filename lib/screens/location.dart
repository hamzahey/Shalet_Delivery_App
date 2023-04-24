import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shalet/main.dart';
import 'package:shalet/screens/add_item.dart';
import 'package:shalet/screens/item_details.dart';
import 'package:shalet/utils/utils.dart';

class Location extends StatefulWidget {
  final user;
  const Location({super.key, required this.user});

  @override
  State<Location> createState() => _LocationState(user: user);
}

class _LocationState extends State<Location> {
  String stAdress = "";
  final pickUp = TextEditingController();
  final dropOff = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  final user;
  _LocationState({required this.user});

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pickUp.dispose();
    dropOff.dispose();
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(33.6844, 73.0479),
    zoom: 14,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final id = DateTime.now().millisecond.toString();
    final ref = FirebaseDatabase.instance.ref(user);
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
                height: 300,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(255, 216, 49, 1),
                ),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Location",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 250,
                            child: TextFormField(
                                controller: pickUp,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: "Pick-up location",
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter Pick-up loaction";
                                  }
                                  return null;
                                }),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 250,
                            child: TextFormField(
                              controller: dropOff,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintText: "Drop-off location"),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Drop-off loaction";
                                }
                                return null;
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          if (pickUp.text == "" && dropOff.text == "") {
                            Utils().toastMessage("Please Enter the location");
                          } else {
                            ref
                                .child(id)
                                .child('Location')
                                .set({
                                  'pickup': pickUp.text.toString(),
                                  'dropoff': dropOff.text.toString()
                                })
                                .then((value) =>
                                    Utils().toastMessage("Location Added"))
                                .onError((error, stackTrace) =>
                                    Utils().toastMessage(error.toString()));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Item_details(
                                          user: user,
                                          id: id,
                                        )));
                          }
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color.fromRGBO(255, 216, 49, 1),
                        ),
                        backgroundColor: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                    height: 450,
                    width: double.infinity,
                    child: GoogleMap(initialCameraPosition: _kGooglePlex)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
