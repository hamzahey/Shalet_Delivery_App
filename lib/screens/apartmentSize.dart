import 'package:flutter/material.dart';
import 'package:shalet/screens/apartmentPhotos.dart';
import 'package:shalet/utils/utils.dart';

class ApartmentSize extends StatefulWidget {
  final id;
  final user;
  const ApartmentSize({super.key, required this.id, required this.user});

  @override
  State<ApartmentSize> createState() => _ApartmentSizeState(id: id, user: user);
}

class _ApartmentSizeState extends State<ApartmentSize> {
  final id;
  final user;
  _ApartmentSizeState({required this.id, required this.user});

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
            "Apartment Size",
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
                  Text("Choose your current apartment size:",
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
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isChanged(1);
                        },
                        trailing: _isTapped == 1
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "Studio",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("up to 650 sq ft"),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isChanged(2);
                        },
                        trailing: _isTapped == 2
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "1 Bedroom",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("up to 850 sq ft"),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isChanged(3);
                        },
                        trailing: _isTapped == 3
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "2 Bedroom",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("up to 1300 sq ft"),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _isChanged(4);
                        },
                        trailing: _isTapped == 4
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "3 Bedroom",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("up to 1800 sq ft"),
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
                      if (_isTapped != 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ApartmentPhotos(
                                  id: id,
                                  user: user,
                                )));
                      } else {
                        Utils().toastMessage("Please select aprtment size");
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
    ;
  }
}
