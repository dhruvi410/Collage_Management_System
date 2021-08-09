import 'package:carousel_pro/carousel_pro.dart';
import 'package:college_managment/admin/admin_zone.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:college_managment/utils/ZoneImage.dart';
import 'package:college_managment/student/student_zone.dart';
import 'package:college_managment/teacher/teacher_zone.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          leading: InkWell(
            onTap: () {
            },
            child: Icon(Icons.menu, size: 30,),
          ),
          backgroundColor: Color(0xff009788),
          centerTitle: true,
          title: Text(
            'HOME',
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
              SizedBox(height: 24,),
              SizedBox(height: 230.0,
              width:double.infinity,
              child:Carousel(
                dotSize: 4.0,
                dotSpacing :15.0,
                dotColor: Color(0xff009788),
                indicatorBgPadding:5.0,
                dotBgColor: Colors.transparent,
                dotVerticalPadding: 5.0,
                dotPosition: DotPosition.bottomCenter,
                images:
                 [
                   Image.asset('assets/img1.jpg', fit: BoxFit.cover,),
                   Image.asset('assets/img2.jpg', fit: BoxFit.cover,),
                   Image.asset('assets/img3.jpg', fit: BoxFit.cover),
                   Image.asset('assets/img4.jpg', fit: BoxFit.cover),
                   Image.asset('assets/img5.jpg', fit: BoxFit.cover),
                   Image.asset('assets/img6.jpg', fit: BoxFit.cover),
                ]
              ),
              ),
              InkWell(
                child:Row(
                  children: <Widget>[
                    InkWell(
                        child: ZoneImage("assets/student.png", "STUDENT"),
                        onTap:  () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return StudentZone();
                          }));
                        }
                    ),
                    SizedBox(width: 14,),
                    InkWell(
                        child: ZoneImage("assets/faculty.png", "TEACHER"),
                        onTap:  () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return TeacherZone();
                          }));
                        }
                    )
                  ],
                ),
              ),
              SizedBox(height: 14,),
              SizedBox(width: 250,),
              Row(
                children: <Widget>[
                  InkWell(
                      child: ZoneImage("assets/admin.png", "ADMIN"),
                      onTap:  () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return AdminZone();
                        }));
                      }
                  ),
                  SizedBox(width: 14,),
                  InkWell(
                      child: ZoneImage("assets/logo.png", "ABOUT"),
                      onTap:  () {}
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}


