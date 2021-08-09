// TODO Implement this library.
import 'package:college_managment/student/result.dart';
import 'package:flutter/material.dart';
import 'result.dart';

class DetailsPage extends StatelessWidget {

  final int index;
  DetailsPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Result();
                }));
              },
              child: Icon(Icons.arrow_back, size: 30,),
            ),
            title: Text(
              'Result',
              style: TextStyle(fontSize: 20),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor:  Color(0xff002c51),
          ),
        ),
        body: Center(
          child: Text('Result Semester - $index'),
        )

    );
  }
}