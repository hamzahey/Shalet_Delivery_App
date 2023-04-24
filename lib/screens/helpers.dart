import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shalet/screens/pick_date.dart';
import 'package:shalet/utils/utils.dart';

class Helpers_Vehicle extends StatefulWidget {
  final id;
  final user;
  const Helpers_Vehicle({super.key, required this.id, required this.user});

  @override
  State<Helpers_Vehicle> createState() =>
      _Helpers_VehicleState(user: user, id: id);
}

class _Helpers_VehicleState extends State<Helpers_Vehicle> {
  final id;
  final user;
  _Helpers_VehicleState({required this.id, required this.user});

  int _isTapped = 0;
  int _isVehicle = 0;

  void _isChanged(int index) {
    setState(() {
      _isTapped = index;
    });
  }

  void _isSelectVehicle(int index) {
    setState(() {
      _isVehicle = index;
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
            "Helpers & Vehicles",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromRGBO(255, 216, 49, 1),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "How many Helpers would you like?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Center(
                      child: ListTile(
                        onTap: () {
                          _isChanged(1);
                        },
                        trailing: _isTapped == 1
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        leading: Icon(
                          Icons.fitness_center,
                          color: Colors.black,
                        ),
                        title: Text(
                          "2 Helpers",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("Two Helpers with a pickup truck"),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      height: 80,
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isChanged(2);
                        },
                        trailing: _isTapped == 2
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        leading: Icon(
                          Icons.fitness_center,
                          color: Colors.black,
                        ),
                        title: Text(
                          "1 Helper + You",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                            "If your package needs two people to carry, you can save money by helping"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "What size vehicle do you prefer?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      height: 80,
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isSelectVehicle(1);
                        },
                        trailing: _isVehicle == 1
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        leading: Icon(
                          Icons.local_shipping,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Pickup Truck",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                            "Great for couple large items, or multiple small items"),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      height: 90,
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isSelectVehicle(2);
                        },
                        trailing: _isVehicle == 2
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        leading: Icon(
                          Icons.local_shipping,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Cargo Van",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                            "Upgrade to a covered vehicle for a low price! Speed up your move with fewer trips"),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(top: 8),
                      height: 80,
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isSelectVehicle(3);
                        },
                        trailing: _isVehicle == 3
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        leading: Icon(
                          Icons.local_shipping,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Box Truck",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                            "Upgrade to a covered vehicle and get everything moved in one trip"),
                      ),
                    ),
                  ),
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
                      if (_isTapped == 1) {
                        ref
                            .child(id)
                            .child('helpers')
                            .set({'helper': "2 Helpers"}).onError(
                                (error, stackTrace) {
                          Utils().toastMessage(error.toString());
                        });
                      } else if (_isTapped == 2) {
                        ref.child(id).child('helpers').set({
                          'helper': "1 Helper + You",
                        }).onError((error, stackTrace) {
                          Utils().toastMessage(error.toString());
                        });
                      } else {
                        Utils().toastMessage('Select Helpers');
                      }

                      if (_isVehicle == 1) {
                        ref.child(id).child('vehicle').set({
                          'vehicle': 'Pickup Truck',
                        }).onError((error, stackTrace) {
                          Utils().toastMessage(error.toString());
                        });
                      } else if (_isVehicle == 2) {
                        ref.child(id).child('vehicle').set({
                          'vehicle': 'Cargo Van',
                        }).onError((error, stackTrace) {
                          Utils().toastMessage(error.toString());
                        });
                      } else if (_isVehicle == 3) {
                        ref.child(id).child('vehicle').set({
                          'vehicle': 'Box Truck',
                        }).onError((error, stackTrace) {
                          Utils().toastMessage(error.toString());
                        });
                      } else {
                        Utils().toastMessage('Select Vehicle');
                      }

                      if (_isTapped != 0 && _isVehicle != 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SelectDate())));
                      }
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
