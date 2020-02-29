import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:attempet/Src/Sinup.dart';
import 'package:attempet/Src/Home.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  void _clickToSignInUser() {
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => HomePage(),
        )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage('assets/img/taxi.jpg'),
                fit: BoxFit.cover,
              )
          ),
          constraints: BoxConstraints.expand(),

        child: new Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(

                colors:[

                  Color.fromRGBO(162, 146,  199, 0.8),
                  Color.fromRGBO(51, 51,  63, 0.9),


                ],
                begin:FractionalOffset.topCenter,

              )
          ),



          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                Image.asset("assets/img/Taxi-Cab-PNG-Image.png",
                height: 150,
                width: 300,),
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 5,
                  ),
                  child: Text(
                    "for you",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Login to continue using my taxi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 50,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellowAccent, width: 2),
                            ),
                            prefixIcon: Icon(Icons.email,color: Colors.white,),
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellowAccent),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, bottom: 8),
                        child: TextFormField(
                          controller: _passController,
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.yellowAccent,
                                width: 2,
                              ),
                            ),
                            prefixIcon: Icon(Icons.lock,color: Colors.white,),
                            labelText: "Password",
                            labelStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellowAccent),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(fontSize: 18,color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, bottom: 15),
                        width: double.infinity,
                        height: 83,
                        child: RaisedButton(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          onPressed: _clickToSignInUser,
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          color: Colors.yellowAccent,
                        ),
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: "New User ? ",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RegisterPage(),
                                      ),
                                    );
                                  },
                                text: "New account",
                                style: TextStyle(
                                  color: Colors.yellowAccent,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        ));
  }
}
