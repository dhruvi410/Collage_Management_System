import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'student_zone.dart';

// ignore: must_be_immutable
class FeePage extends StatelessWidget{

  List<String> semesters = ["Semester 1", "Semester 2", "Semester 3", "Semester 4", "Semester 5", "Semester 6", "Semester 7", "Semester 8"];
  String title = 'Student Fees';

  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
          leading: InkWell(
          onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return StudentZone();
                   }));
                   },
            child: Icon(Icons.arrow_back, size: 30,),
          ),
            title: Text(title, style: TextStyle(fontSize: 20),),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Color(0xff002c51),
          ),
        ),
        body: Scrollbar(
          child: ListView.builder(
              itemCount: semesters.length,
              itemBuilder: (context, index){
                return ExpansionTile(title: Text(semesters[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10),
                      child:Text(semesters[index], style: TextStyle(fontSize: 18),textAlign: TextAlign.left),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child:Text("Total Fees: 50,000", style: TextStyle(fontSize: 18),textAlign: TextAlign.left),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child:Text("Received Fees: ", style: TextStyle(fontSize: 18),textAlign: TextAlign.left),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child:Text("Pending Fees: " , style: TextStyle(fontSize: 18),textAlign: TextAlign.left),
                    ),
                  ],
                );
              }),
        )
    );
  }
}