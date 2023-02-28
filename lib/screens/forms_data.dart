import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shalet/screens/fifacard.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  int _value1 = 0;
  int _value2 = 0;
  int _value3 = 0;
  int _value4 = 0;
  int _value5 = 0;
  int _value6 = 0;
  int _value7 = 0;
  int _value8 = 0;
  int _value9 = 0;
  int _value10 = 0;
  int _value11 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fill the Form",
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(255, 216, 49, 1),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(10),
        child: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select your primary position?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Center Attacking Midfielder",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Center Back",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Center Defending Midfielder",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 4,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Center Midfielder",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 5,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Left Back",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 6,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Left Midfielder",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 7,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Left-wing",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 8,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Right Back",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 9,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Right Midfielder",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 10,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Right Wing",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 11,
                          groupValue: _value1,
                          onChanged: (value) {
                            setState(() {
                              _value1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Stricker",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select your secondary position?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Center Attacking Midfielder",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Center Back",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Center Defending Midfielder",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 4,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Center Midfielder",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 5,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Left Back",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 6,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Left Midfielder",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 7,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Left-wing",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 8,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Right Back",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 9,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Right Midfielder",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 10,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Right Wing",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 11,
                          groupValue: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Stricker",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Speed",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value3,
                              onChanged: (value) {
                                setState(() {
                                  _value3 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("0")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value3,
                              onChanged: (value) {
                                setState(() {
                                  _value3 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("20")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _value3,
                              onChanged: (value) {
                                setState(() {
                                  _value3 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("40")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _value3,
                              onChanged: (value) {
                                setState(() {
                                  _value3 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("60")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 5,
                              groupValue: _value3,
                              onChanged: (value) {
                                setState(() {
                                  _value3 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("80")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 6,
                              groupValue: _value3,
                              onChanged: (value) {
                                setState(() {
                                  _value3 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("100")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shooting",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("0")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("20")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("40")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("60")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 5,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("80")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 6,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("100")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Passing",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value5,
                              onChanged: (value) {
                                setState(() {
                                  _value5 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("0")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value5,
                              onChanged: (value) {
                                setState(() {
                                  _value5 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("20")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _value5,
                              onChanged: (value) {
                                setState(() {
                                  _value5 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("40")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _value5,
                              onChanged: (value) {
                                setState(() {
                                  _value5 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("60")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 5,
                              groupValue: _value5,
                              onChanged: (value) {
                                setState(() {
                                  _value5 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("80")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 6,
                              groupValue: _value5,
                              onChanged: (value) {
                                setState(() {
                                  _value5 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("100")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dribbling",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("0")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("20")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("40")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("60")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 5,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("80")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 6,
                              groupValue: _value4,
                              onChanged: (value) {
                                setState(() {
                                  _value4 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("100")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Centering",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value6,
                              onChanged: (value) {
                                setState(() {
                                  _value6 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("0")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value6,
                              onChanged: (value) {
                                setState(() {
                                  _value6 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("20")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _value6,
                              onChanged: (value) {
                                setState(() {
                                  _value6 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("40")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _value6,
                              onChanged: (value) {
                                setState(() {
                                  _value6 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("60")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 5,
                              groupValue: _value6,
                              onChanged: (value) {
                                setState(() {
                                  _value6 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("80")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 6,
                              groupValue: _value6,
                              onChanged: (value) {
                                setState(() {
                                  _value6 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("100")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Free Kicks",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value7,
                              onChanged: (value) {
                                setState(() {
                                  _value7 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("0")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value7,
                              onChanged: (value) {
                                setState(() {
                                  _value7 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("20")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _value7,
                              onChanged: (value) {
                                setState(() {
                                  _value7 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("40")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _value7,
                              onChanged: (value) {
                                setState(() {
                                  _value7 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("60")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 5,
                              groupValue: _value7,
                              onChanged: (value) {
                                setState(() {
                                  _value7 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("80")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 6,
                              groupValue: _value7,
                              onChanged: (value) {
                                setState(() {
                                  _value7 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("100")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Defense",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value8,
                              onChanged: (value) {
                                setState(() {
                                  _value8 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("0")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value8,
                              onChanged: (value) {
                                setState(() {
                                  _value8 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("20")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _value8,
                              onChanged: (value) {
                                setState(() {
                                  _value8 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("40")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _value8,
                              onChanged: (value) {
                                setState(() {
                                  _value8 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("60")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 5,
                              groupValue: _value8,
                              onChanged: (value) {
                                setState(() {
                                  _value8 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("80")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 6,
                              groupValue: _value8,
                              onChanged: (value) {
                                setState(() {
                                  _value8 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("100")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 2,
              child: Container(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 25),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Grinta",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _value9,
                              onChanged: (value) {
                                setState(() {
                                  _value9 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("0")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value9,
                              onChanged: (value) {
                                setState(() {
                                  _value9 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("20")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _value9,
                              onChanged: (value) {
                                setState(() {
                                  _value9 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("40")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _value9,
                              onChanged: (value) {
                                setState(() {
                                  _value9 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("60")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 5,
                              groupValue: _value9,
                              onChanged: (value) {
                                setState(() {
                                  _value9 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("80")
                          ],
                        ),
                        Column(
                          children: [
                            Radio(
                              value: 6,
                              groupValue: _value9,
                              onChanged: (value) {
                                setState(() {
                                  _value9 = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("100")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                    color: Color.fromRGBO(255, 216, 49, 1),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fifa_Card()));
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ))))
          ],
        ),
      ),
    );
  }
}
