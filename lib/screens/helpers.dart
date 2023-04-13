import 'package:flutter/material.dart';

class Helpers_Vehicle extends StatefulWidget {
  const Helpers_Vehicle({super.key});

  @override
  State<Helpers_Vehicle> createState() => _Helpers_VehicleState();
}

class _Helpers_VehicleState extends State<Helpers_Vehicle> {
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
                  color: Colors.white,
                  child: ListTile(
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
                Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.fitness_center,
                      color: Colors.black,
                    ),
                    title: Text(
                      "1 Helper + You",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text(
                        "If your package needs two people to carry, you can save money by helping"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
