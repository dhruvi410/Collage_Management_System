import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'teacher_zone.dart';

class salary extends StatelessWidget{

  List<String> month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ];
  String title = 'Salaries';

  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return TeacherZone();
                }));
              },
              child: Icon(Icons.arrow_back, size: 30,),
            ),
            title: Text(title, style: TextStyle(fontSize: 20),),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Color(0xfff5435d),
          ),
        ),
        body: Scrollbar(
          child: ListView.builder(
              itemCount: month.length,
              itemBuilder: (context, index){
                return ExpansionTile(title: Text(month[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10),
                      child:Text(month[index], style: TextStyle(fontSize: 18),textAlign: TextAlign.left),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child:Text("Total salary: 60,000", style: TextStyle(fontSize: 18),textAlign: TextAlign.left),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child:Text("Received: ", style: TextStyle(fontSize: 18),textAlign: TextAlign.left),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child:Text("Pending: " , style: TextStyle(fontSize: 18),textAlign: TextAlign.left),
                    ),
                  ],
                );
              }),
        )
    );
  }
}