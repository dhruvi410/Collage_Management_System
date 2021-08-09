import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'timeutils.dart';
import 'globals.dart';
import 'timetable.dart';

main() {
  var currentDay = DateFormat('EEEE').format(DateTime.now());
  if(currentDay == "Saturday") collegeEnd = DateTime(now.year, now.month, now.day, 14, 10, 0, 0, 0);


  if (DateTime.now().hour > 16) {
    switch (currentDay) {
      case "Monday":
        currentDay = "Tuesday";
        break;

      case "Tuesday":
        currentDay = "Wednesday";
        break;

      case "Wednesday":
        currentDay = "Thursday";
        break;

      case "Thursday":
        currentDay = "Friday";
        break;

      case "Friday":
        currentDay = "Saturday";
        break;

      case "Saturday":
        currentDay = "Monday";
        break;

      case "Sunday":
        currentDay = "Monday";
        break;
    }
  }

  assignTimeTable(currentDay);
  today = currentDay;
  runApp(
      MaterialApp(home: Home(), theme: ThemeData(fontFamily: 'ProductSans')));
}