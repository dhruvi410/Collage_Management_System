import 'package:college_managment/teacher/teacher_zone.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'timeutils.dart';
import 'TodayText.dart';
import 'ActiveTime.dart';
import 'CurrentPeriod.dart';
import 'RemainingPeriods.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return TeacherZone();
                }));
              },
              child: Icon(Icons.arrow_back, size: 30,),
            ),
            backgroundColor:  Color(0xfff5435d),
            centerTitle: true,
            title: Text(
              'TIME TABLE',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16),
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            asyncDayChooser(context);
                          },
                          child: TodayText())
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 13.5),
                  child: Center(
                    child: Column(
                      children: <Widget>[CurrentPeriod()],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Center(
                    child: Column(
                      children: <Widget>[ActiveTime()],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.grey,
                    )),
                Expanded(child: RemainingPeriods())
              ],
            ),
          ),
        ));
  }
}