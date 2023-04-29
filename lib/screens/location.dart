import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shalet/main.dart';
import 'package:shalet/screens/add_item.dart';
import 'package:shalet/screens/apartmentMoveType.dart';
import 'package:shalet/screens/item_details.dart';
import 'package:shalet/utils/utils.dart';

class Location extends StatefulWidget {
  final type;
  final user;
  const Location({super.key, required this.user, required this.type});

  @override
  State<Location> createState() => _LocationState(user: user, type: type);
}

class _LocationState extends State<Location> {
  final pickUp = TextEditingController();
  final dropOff = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  final user;
  final type;
  _LocationState({required this.user, required this.type});

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pickUp.dispose();
    dropOff.dispose();
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    final ref = FirebaseDatabase.instance.ref(user);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 250,
        flexibleSpace: Container(
          padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
          color: new Color.fromRGBO(255, 216, 49, 1),
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
                              borderSide: BorderSide(color: Colors.black),
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
                        .then((value) => Utils().toastMessage("Location Added"))
                        .onError((error, stackTrace) =>
                            Utils().toastMessage(error.toString()));

                    if (type.toString() == 'Store Delivery') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Item_details(
                                    user: user,
                                    id: id,
                                    type: type,
                                  )));
                    } else if (type.toString() == 'Move a Few Items') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Item_details(
                                    user: user,
                                    id: id,
                                    type: type,
                                  )));
                    } else if (type.toString() == 'Move an Apartment') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ApartmentMoveType(
                                id: id,
                                user: user,
                              )));
                    }
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
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
