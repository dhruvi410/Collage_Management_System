import 'dart:core';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'admin_zone.dart';

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

class SRegister extends StatefulWidget {
  @override
  _SRegisterState createState() => _SRegisterState();
}

class _SRegisterState extends State<SRegister> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String FirstName,
      LastName,
      MiddleName,
      IDNumber,
      Mobilnumber,
      AadharcardNumber,
      TResult,
      TBoard,
      TYear,
      TwYear,
      TwResult,
      TwBoard,
      Address,
      Pincode;

  getFirstName(fname) {
    this.FirstName = fname;
  }

  getMiddleName(mname) {
    this.MiddleName = mname;
  }

  getLastName(lname) {
    this.LastName = lname;
  }

  getIDNumber(id) {
    this.IDNumber = id;
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

  getTResult(tr) {
    this.TResult = tr;
  }

  getTBoard(tb) {
    this.TBoard = tb;
  }

  getTYear(ty) {
    this.TYear = ty;
  }

  getTwResult(twr) {
    this.TwResult = twr;
  }

  getTwBoard(twb) {
    this.TwBoard = twb;
  }

  getTwYear(twy) {
    this.TwYear = twy;
  }

  createData() {
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("Information").doc(FirstName);
    Map<String, dynamic> Information = {
      'FirstName': FirstName,
      'MiddleName': MiddleName,
      'LastName': LastName,
      'IDNumber': IDNumber,
      'Address': Address,
      'Pincode': Pincode,
      'MobilNumber': Mobilnumber,
      'AadharcardNumber': AadharcardNumber,
      'TenResult': TResult,
      'TenBoard': TBoard,
      'TenYear': TYear,
      'TwelveResult': TwResult,
      'TwelveBoard': TwBoard,
      'TwelveYear': TwYear
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
      'IDNumber': IDNumber,
      'Address': Address,
      'Pincode': Pincode,
      'MobilNumber': Mobilnumber,
      'AadharcardNumber': AadharcardNumber,
      'TenResult': TResult,
      'TenBoard': TBoard,
      'TenYear': TYear,
      'TwelveResult': TwResult,
      'TwelveBoard': TwBoard,
      'TwelveYear': TwYear,
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
            child: Icon(
              Icons.arrow_back,
              size: 50,
            ),
          ),
          backgroundColor: Color(0xfffe5722),
          centerTitle: true,
          title: Text(
            'STUDENT DATA',
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
                    labelText: 'ID Number',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (id) {
                  getIDNumber(id);
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
                    labelText: '10th Result',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (TReult) {
                  getLastName(TResult);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: '10th Board',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (TBoard) {
                  getLastName(TBoard);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: '10th Passing Year ',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (TYear) {
                  getLastName(TYear);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: '12th Result',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (TwReult) {
                  getLastName(TwResult);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: '12th Board',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (TwBoard) {
                  getLastName(TwBoard);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: '12th Passing Year ',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.tealAccent, width: 2.0))),
                onChanged: (TwYear) {
                  getLastName(TwYear);
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
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                textDirection: TextDirection.ltr,
                children: [
                  Expanded(child: Text('FName')),
                  Expanded(
                    child: Text('LName'),
                  ),
                  Expanded(
                    child: Text('City'),
                  ),
                  Expanded(
                    child: Text('Pin'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("Information")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot documentSnapshot =
                              snapshot.data.docs[index];
                          return Row(
                            children: [
                              Expanded(
                                  child: Text(documentSnapshot["FirstName"])),
                              Expanded(
                                  child: Text(documentSnapshot["LastName"])),
                              Expanded(child: Text(documentSnapshot["City"])),
                              Expanded(
                                  child: Text(documentSnapshot["Pincode"])),
                            ],
                          );
                        });
                  } else {
                    return Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: CircularProgressIndicator(),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
