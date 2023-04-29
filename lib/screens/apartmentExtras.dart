import 'package:flutter/material.dart';
import 'package:shalet/screens/helpers.dart';
import 'package:shalet/utils/utils.dart';

class ApartmentExtras extends StatefulWidget {
  final id;
  final user;
  const ApartmentExtras({super.key, required this.id, required this.user});

  @override
  State<ApartmentExtras> createState() =>
      _ApartmentExtrasState(id: id, user: user);
}

class _ApartmentExtrasState extends State<ApartmentExtras> {
  final id;
  final user;
  _ApartmentExtrasState({required this.id, required this.user});

  bool treadmills = false;
  bool excerciseMachines = false;
  bool dishwasher = false;
  bool refrigerators = false;
  bool washer = false;
  bool oven = false;
  int _isSelect = 0;

  void _treadmills() {
    setState(() {
      treadmills = !treadmills;
    });
  }

  void _isSelected(int index) {
    setState(() {
      _isSelect = index;
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
            "Apartment Extras",
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
                      "Flat rate moves include items like beds, dresser, and couches, but some exceptionally heavy items like excercising equipment and appliances cost a bit more",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15)),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "I have following items to move:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      color: Colors.white,
                      child: ListTile(
                        onTap: () {
                          _treadmills();
                        },
                        trailing: treadmills == true
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "Treadmills",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
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
                          setState(() {
                            excerciseMachines = !excerciseMachines;
                          });
                        },
                        trailing: excerciseMachines == true
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "Excercise Machines",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
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
                          setState(() {
                            dishwasher = !dishwasher;
                          });
                        },
                        trailing: dishwasher == true
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "Dishwasher",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
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
                          setState(() {
                            refrigerators = !refrigerators;
                          });
                        },
                        trailing: refrigerators == true
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "Refrigerators",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
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
                          setState(() {
                            washer = !washer;
                          });
                        },
                        trailing: washer == true
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "Washer",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
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
                          setState(() {
                            oven = !oven;
                          });
                        },
                        trailing: oven == true
                            ? Icon(Icons.check_box)
                            : Icon(Icons.check_box_outline_blank),
                        title: Text(
                          "Oven",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Helpers_Vehicle(id: id, user: user)));
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
