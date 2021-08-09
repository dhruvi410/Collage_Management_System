import 'package:flutter/material.dart';
import 'globals.dart';
import 'dart:async';

class ActiveTime extends StatefulWidget {
  @override
  _ActiveTimeState createState() => _ActiveTimeState();
}

class _ActiveTimeState extends State<ActiveTime> {
   String _timeString;

  @override
  void initState() {
    if (displayTimer) {
      _timeString =
          '~' + _formatDateTime(relativeEnding.difference(DateTime.now()));
      Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    } else {
      _timeString = " ";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _timeString,
    );
  }

  void _getTime() {
    DateTime now = DateTime.now();
    final String formattedDateTime =
    _formatDateTime(relativeEnding.difference(now));
    setState(() {
      _timeString = '~' + formattedDateTime;
    });
  }

  String _formatDateTime(Duration duration) {
    int hours = 0, minutes = 0, seconds = duration.inSeconds;
    String hoursStr, minutesStr, secondsStr;

    if (seconds > 60) minutes = seconds ~/ 60;
    if (minutes > 60) hours = minutes ~/ 60;

    seconds = seconds - 60 * minutes;
    minutes = minutes - 60 * hours;

    if (seconds < 10)
      secondsStr = "0" + seconds.toString();
    else
      secondsStr = seconds.toString();
    if (minutes < 10)
      minutesStr = "0" + minutes.toString();
    else
      minutesStr = minutes.toString();
    if (hours < 10)
      hoursStr = "0" + hours.toString();
    else
      hoursStr = hours.toString();

    if (seconds <= 0 && minutes <= 0 && hours <= 0) currentPeriodState.refresh();
    return hoursStr + ':' + minutesStr + ':' + secondsStr;
  }
}
