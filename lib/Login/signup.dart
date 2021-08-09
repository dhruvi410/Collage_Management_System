//@dart=2.9
import 'package:college_managment/Home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'login.dart';



class signUp extends StatefulWidget{
  @override
  _signUpState createState()=> _signUpState();
}
class _signUpState extends State<signUp> {
  final color3 = const Color(0xFF4BE0DB);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Widget Title = Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "REGISTER",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 40
              ),
            ),
            Container(width: 5),
            const Text(
              "PAGE",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 40
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
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child:
            const Text("Sign Up",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 3),
          Container(
            child: const Text("Create your account",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54
              ),
            ),
          ),
          SizedBox(height: 15),
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
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                              ),

                            ),
                          )
                          // TextFormField(
                          //   decoration: InputDecoration(
                          //   ),
                          // )
                        ]
                    ),

                  ],
                )
            ),
          ),
          SizedBox(height: 7),
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
                    Icon(Icons.lock),
                    SizedBox(width: 10),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("PASSWORD",
                            style: TextStyle(
                                color: Colors.black54
                            ),),
                          SizedBox(
                            width: 180, height: 30,
                            child: TextFormField(
                              controller: _passwordController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          )
                          // TextFormField(
                          //   decoration: InputDecoration(
                          //   ),
                          // )
                        ]
                    ),

                  ],
                )
            ),
          ),
          SizedBox(height: 7),
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
                    Icon(Icons.lock),
                    SizedBox(width: 10),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("CONFIRM PASSWORD",
                            style: TextStyle(
                                color: Colors.black54
                            ),),
                          SizedBox(
                            width: 180, height: 30,
                            child: TextFormField(
                              controller: _confpasswordController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          )
                          // TextFormField(
                          //   decoration: InputDecoration(
                          //   ),
                          // )
                        ]
                    ),

                  ],
                )
            ),
          ),
          SizedBox(height: 10),
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
                  const Text("SIGN UP", style: TextStyle(
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
                      if (_formKey.currentState.validate()) {
                        _register();
                      }
                    },
                        icon: Icon(Icons.arrow_forward_rounded),
                        iconSize: 25,
                        color: Colors.black54), width: 40, height: 40,)
                ]
            ),
          ),
          SizedBox(height: 30),
          const Text("Already have an account?",
            style: TextStyle(
                fontSize: 13
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LOGIN()),);
            },
            child: Container(
              //onPressed: },
                child: const Text("SIGN IN NOW",
                  style: TextStyle(
                      color: Color(0xFF4BE0DB)
                  ),
                )
            ),
          ),
          SizedBox(height: 80, width: 20),
        ]
    );
  }


  @override
  Widget build(BuildContext context) {
    const color3 = const Color(0xFF4BE0DB);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Balsamiq_Sans'),
        home: Scaffold(
            backgroundColor: color3,
            body: Form(
              key: _formKey,
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
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _register() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmpassword = _confpasswordController.text.trim();
    if (password == confirmpassword) {
      try {

        final user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password));
        setState(() {
          if (user != null) {
            Fluttertoast.showToast(msg: "user created");
            Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()),);
          }
        });
      } catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
    }
    else {
      Fluttertoast.showToast(msg: "Passwords don't match");
    }
  }
}