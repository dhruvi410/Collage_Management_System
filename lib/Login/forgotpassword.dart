//@dart=2.9
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'login.dart';

class forgotpassword extends StatefulWidget{
  @override
  _forgotpasswordState createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Widget Title = Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "FORGOT",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
            Container(width: 5),
            const Text(
              "PASSWORD",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
          ],
        ),
      ],
    ),
  );
  Widget back = Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(height: 615, width: 300,),
          Positioned(top: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 510, width: 290,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 35),
            ),
          ),
        ],

      )
  );

  Widget text(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Text("Forgot Password?",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text("Enter the email address associated",
                  style: TextStyle(fontSize: 16)),
              Text("with the account", style: TextStyle(fontSize: 16)),
              SizedBox(height: 5),
              Text("We will email you a link to reset",
                  style: TextStyle(color: Colors.black54)),
              Text(" your password", style: TextStyle(color: Colors.black54)),
              SizedBox(height: 150),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(12)

                ),
                child: Container(
                    padding: EdgeInsets.all(10),
                    constraints: const BoxConstraints(
                        minWidth: 80, minHeight: 40, maxWidth: 260),
                    child: Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 10),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("EMAIL",
                                style: TextStyle(
                                    color: Colors.black54
                                ),
                              ),
                              SizedBox(
                                width: 180, height: 30,
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ]
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(height: 13),
              Container(
                // width: 120,
                padding: EdgeInsets.only(left: 30, top: 7, right: 7, bottom: 7),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.lightBlueAccent, Color(0xFF044E4C)]),
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(40), left: Radius.circular(40))
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("NEXT", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),
                      Container(width: 15),
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightBlueAccent
                        ),
                        child: IconButton(onPressed: () async {
                          resetPassword();
                        },
                            icon: Icon(Icons.arrow_forward_rounded),
                            iconSize: 25,
                            color: Colors.black54), width: 40, height: 40,)
                    ]
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Back to ",
                    style: TextStyle(
                        fontSize: 13
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LOGIN()),);
                      });
                    },
                    child: Container(
                        child: const Text("SIGN IN NOW",
                          style: TextStyle(
                              color: Color(0xFF4BE0DB)
                          ),
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80, width: 20),
            ]
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    const color3 = const Color(0xFF4BE0DB);
    return Form(
        key: _formKey,
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'Balsamiq_Sans'),
            home: Scaffold(
                backgroundColor: color3,
                body: Container(
                  child: Container(
                    //  margin: EdgeInsets.symmetric(horizontal: 15.0),
                    child: ListView(
                        children: [
                          Title,
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                back,
                                text(context),

                              ]
                          )
                        ]
                    ),
                  ),
                )
            )
        ));
  }

  resetPassword() async {
    String email = _emailController.text.toString();
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    }
    catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}