import 'package:flutter/material.dart';
import 'package:shalet/screens/apartmentSize.dart';
import 'package:shalet/screens/item_details.dart';

class ApartmentMoveType extends StatefulWidget {
  final id;
  final user;
  const ApartmentMoveType({super.key, required this.id, required this.user});

  @override
  State<ApartmentMoveType> createState() =>
      _ApartmentMoveTypeState(id: id, user: user);
}

class _ApartmentMoveTypeState extends State<ApartmentMoveType> {
  final id;
  final user;
  _ApartmentMoveTypeState({required this.id, required this.user});

  int _isTapped = 0;

  void _isChanged(int index) {
    setState(() {
      _isTapped = index;
    });
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
            "Choose Move Type",
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
                  Text("Moving made easy with Shalet",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: Text(
                      'Doing an in-city move? Let our helpers do all the work for a low price! With thousands of 5 star reviews and free damage protection you can rest easy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Choose your move type:",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isChanged(1);
                        },
                        trailing: _isTapped == 1
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        leading: Icon(
                          Icons.apartment,
                          color: Colors.black,
                          size: 40,
                        ),
                        title: Text(
                          "Whole Apartment",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                            "Need to move a whole apartment? Select your apartment size to get a flat rate in seconds."),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isChanged(2);
                        },
                        trailing: _isTapped == 2
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        leading: Icon(
                          Icons.bed,
                          color: Colors.black,
                          size: 40,
                        ),
                        title: Text(
                          "Just the big stuff",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                            "Only need help with few things, like furniture? Enter your items for a custom price"),
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ApartmentSize(
                                      id: id,
                                      user: user,
                                    )));
                      } else if (_isTapped == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Item_details(
                                    user: user,
                                    id: id,
                                    type: "Move an Apartment")));
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
