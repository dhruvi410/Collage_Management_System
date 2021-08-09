import 'package:flutter/material.dart';
import 'globals.dart';
import 'timeutils.dart';

class CurrentPeriod extends StatefulWidget {
  CurrentState createState() => currentPeriodState;
}

class CurrentState extends State<CurrentPeriod> {
  void refresh() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Text(determinePeriod(),
        );
  }
}