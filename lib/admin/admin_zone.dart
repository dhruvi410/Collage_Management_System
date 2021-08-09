import 'package:college_managment/Home_page.dart';
import 'package:college_managment/admin/s_register.dart';
import 'package:college_managment/admin/t_register.dart';
import 'package:college_managment/utils/ZoneImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'student.dart';
import 'Teacher.dart';

class AdminZone extends StatefulWidget {
  @override
  _AdminZoneState createState() => _AdminZoneState();
}

class _AdminZoneState extends State<AdminZone> {
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
                        child: ZoneImage("assets/student.png", "STUDENT"),
                        onTap:  () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return  SRegister();
                          }));
                        }
                    ),
                    SizedBox(width: 14,),
                    InkWell(
                        child: ZoneImage("assets/faculty.png", "TEACHER"),
                        onTap:  () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return  TRegister();
                          }));
                        }
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

