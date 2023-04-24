import 'package:flutter/material.dart';
import 'package:shalet/utils/utils.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({super.key});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  DateTime today = DateTime.now();

  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  TimeOfDay _timeOfDay2 = TimeOfDay(hour: 8, minute: 30);
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  void _onDaySelected2(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  void _showTimePicker() {
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData(
              primaryColor:
                  Color.fromRGBO(255, 216, 49, 1), // Change the color here
              accentColor: Color.fromRGBO(255, 216, 49, 1),
              colorScheme:
                  ColorScheme.light(primary: Color.fromRGBO(255, 216, 49, 1)),
              buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
            ),
            child: child ?? SizedBox.shrink(),
          );
        }).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
    });
  }

  void _showTimePicker2() {
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData(
              primaryColor:
                  Color.fromRGBO(255, 216, 49, 1), // Change the color here
              accentColor: Color.fromRGBO(255, 216, 49, 1),
              colorScheme:
                  ColorScheme.light(primary: Color.fromRGBO(255, 216, 49, 1)),
              buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
            ),
            child: child ?? SizedBox.shrink(),
          );
        }).then((value) {
      setState(() {
        _timeOfDay2 = value!;
      });
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
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
          "Helpers & Vehicles",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(255, 216, 49, 1),
      ),
      body: Container(
        child: Column(
          children: [
            TableCalendar(
              focusedDay: today,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              firstDay: DateTime.utc(2010, 10, 10),
              lastDay: DateTime.utc(2030, 10, 10),
              onDaySelected: _onDaySelected,
            ),
            SizedBox(height: 20),
            Text(
              'Select a Time Window for your Shalet to start:',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: GestureDetector(
                onTap: () {
                  _showTimePicker();
                },
                child: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Column(children: [
                    Text('EARLIEST START TIME'),
                    SizedBox(
                      height: 5,
                    ),
                    Text(_timeOfDay.format(context).toString())
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                _showTimePicker2();
              },
              child: Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text('LATEST START TIME'),
                      SizedBox(
                        height: 5,
                      ),
                      Text(_timeOfDay2.format(context).toString())
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
