import 'dart:core';
import 'package:college_managment/admin/admin_zone.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepOrange,
        accentColor: Colors.deepOrangeAccent),
  ));
}
class TRegister extends StatefulWidget {
  @override
  _TRegisterState createState() => _TRegisterState();
}

class _TRegisterState extends State<TRegister> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String FirstName, LastName, MiddleName,  Mobilnumber, AadharcardNumber,Experience,
      Address, Pincode;


  getFirstName(fname) {
    this.FirstName = fname;
  }
  getMiddleName(mname) {
    this.MiddleName = mname;
  }
  getLastName(lname) {
    this.LastName = lname;
  }
  getAddress(address) {
    this.Address = address;
  }
  getPincode(pincode) {
    this.Pincode = pincode;
  }
  getMobileNumber(mno) {
    this.Mobilnumber = mno;
  }
  getAadharcardNumber(ano) {
    this.AadharcardNumber = ano;
  }
  getExperience(exp) {
    this.Experience = exp;
  }

  createData() {
    DocumentReference documentReference =
    FirebaseFirestore.instance.collection("Information").doc(FirstName);
    Map<String, dynamic> Information = {
      'FirstName': FirstName,
      'MiddleName': MiddleName,
      'LastName': LastName,
      'Address': Address,
      'Pincode': Pincode,
      'MobilNumber':Mobilnumber,
      'AadharcardNumber':AadharcardNumber,
      'Experience': Experience

    };
    documentReference.set(Information).whenComplete(() {
      print('$FirstName created');
    });
  }

  updateData() {
    DocumentReference documentReference =
    FirebaseFirestore.instance.collection("Information").doc(FirstName);
    Map<String, dynamic> Information = {
      'FirstName': FirstName,
      'MiddleName': MiddleName,
      'LastName': LastName,
      'Address': Address,
      'Pincode': Pincode,
      'MobilNumber':Mobilnumber,
      'AadharcardNumber':AadharcardNumber,
      'Experience': Experience
    };
    documentReference.set(Information).whenComplete(() {
      print('$FirstName updated');
    });
  }

  deleteData() {
    DocumentReference documentReference =
    FirebaseFirestore.instance.collection("Information").doc(FirstName);

    documentReference.delete().whenComplete(() => print('$FirstName deleted'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return AdminZone();
              }));
            },
            child: Icon(Icons.arrow_back, size: 50,),
          ),
          backgroundColor: Color(0xfffe5722),
          centerTitle: true,
          title: Text(
            'TEACHER DATA',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'First Name',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (fname) {
                  getFirstName(fname);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Middle Name',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (mname) {
                  getFirstName(mname);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Last Name',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (lname) {
                  getLastName(lname);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Address',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (address) {
                  getLastName(address);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Pincode',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (pincode) {
                  getPincode(pincode);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (mno) {
                  getLastName(mno);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Aadharcard Number',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (ano) {
                  getLastName(ano);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Experience of Years',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (Experience) {
                  getLastName(Experience);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    onPressed: () {
                      createData();
                    },
                    child: Text(
                      'Create',
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    onPressed: () {
                      updateData();
                    },
                    child: Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    onPressed: () {
                      deleteData();
                    },
                    child: Text(
                      'Delete',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

