import 'package:college_managment/admin/admin_zone.dart';
import 'admin_zone.dart';
import 'package:college_managment/utils/ZoneImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Teacher extends StatefulWidget {
  @override
  _TeacherState createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return AdminZone();
              }));
            },
            child: Icon(Icons.arrow_back, size: 30,),
          ),
          backgroundColor: Color(0xfffe5722),
          centerTitle: true,
          title: Text(
            'ADMIN ZONE',
            style: TextStyle(fontSize: 20),
          ),
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
                        child: ZoneImage("assets/register.png", "REGISTER"),
                        onTap:  () {
                        }
                    ),
                    SizedBox(width: 14,),
                    InkWell(
                        child: ZoneImage("assets/salary.png", "SALARY"),
                        onTap:  () {}
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}


