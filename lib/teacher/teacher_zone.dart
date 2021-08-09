import 'package:college_managment/Home_page.dart';
import 'package:college_managment/teacher/schedule/schedule.dart';
import 'teacher_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:college_managment/utils/ZoneImage.dart';
import 'salary.dart';

class TeacherZone extends StatefulWidget {
  @override
  _TeacherZoneState createState() => _TeacherZoneState();
}

class _TeacherZoneState extends State<TeacherZone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return HomePage();
              }));
            },
            child: Icon(Icons.arrow_back, size: 30,),
          ),
          backgroundColor:  Color(0xfff5435d),
          centerTitle: true,
          title: Text(
            'TEACHER ZONE',
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.logout,color: Colors.white,),

            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 15.0, bottom: 16.0),
            child: Column(children: <Widget>[
              SizedBox(height: 24),
              InkWell(
                child:Row(
                  children: <Widget>[
                    InkWell(
                        child: ZoneImage("assets/schedule.png", "Schedule"),
                        onTap:  () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return main();
                          }));
                        }
                    ),
                    SizedBox(width: 14,),
                    InkWell(
                        child: ZoneImage("assets/student_attendance_faculty.png", "Attendance"),
                        onTap:  () {}
                    )
                  ],
                ),
              ),
              SizedBox(height: 14,),
              Row(
                children: <Widget>[
                  InkWell(
                      child: ZoneImage("assets/salary.png", "Salary"),
                      onTap:  () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return salary();
                        }));
                      }
                  ),
                  SizedBox(width: 14,),
                  InkWell(
                      child: ZoneImage("assets/faculty_profile.png", "Profile"),
                      onTap:  () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return TeacherProfile();
                        }));
                      }
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}


