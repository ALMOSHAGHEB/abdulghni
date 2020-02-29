import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:attempet/Src/Login.dart';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import 'dart:convert';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void dispose() {
    super.dispose();

  }

  void _clickToRegisterForNewUser() {



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
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
               Image.asset("assets/img/Taxi-Cab-PNG-Image.png",
                 height: 150,
                 width: 300,),
               Container(
                 padding: EdgeInsets.only(
                   top: 20,
                   bottom: 5,
                 ),
                 child: Text(
                   " New account ! ",
                   style: TextStyle(
                     color: Colors.yellow,
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
               Container(
                 child: Text(
                   "Register my taxi in single steps",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 16,
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(
                   top: 30,
                   left: 20,
                   right: 20,
                 ),
                 child: Column(
                   children: <Widget>[
                     Container(
                       child: StreamBuilder(

                         builder: (context, snapshot) => TextFormField(
                           controller: _nameController,
                           decoration: InputDecoration(
                             focusedBorder: OutlineInputBorder(
                               borderSide:
                               BorderSide(color: Colors.yellowAccent, width: 2),
                             ),
                             prefixIcon: Icon(Icons.person,color: Colors.white,),
                             labelText: "Name",
                             errorText:
                             snapshot.hasError ? snapshot.error : null,
                             errorStyle: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold,
                             ),
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
                     ),
                     Container(
                         padding: EdgeInsets.only(top: 20),
                         child: StreamBuilder(

                           builder: (context, snapshot) => TextFormField(
                             controller: _phoneController,
                             keyboardType: TextInputType.phone,
                             decoration: InputDecoration(
                               focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(
                                   color: Colors.green,
                                   width: 2,
                                 ),
                               ),
                               prefixIcon: Icon(Icons.phone,color: Colors.white,),
                               labelText: "Phone",
                               errorText:
                               snapshot.hasError ? snapshot.error : null,
                               errorStyle: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                               ),
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
                         )),
                     Container(
                         padding: EdgeInsets.only(top: 20),
                         child: StreamBuilder(

                           builder: (context, snapshot) => TextFormField(
                             controller: _emailController,
                             decoration: InputDecoration(
                               focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(
                                   color: Colors.green,
                                   width: 2,
                                 ),
                               ),
                               prefixIcon: Icon(Icons.email,color: Colors.white,),
                               labelText: "Email",
                               errorText:
                               snapshot.hasError ? snapshot.error : null,
                               errorStyle: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                               ),
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
                         )),
                     Container(
                         padding: EdgeInsets.only(top: 20),
                         child: StreamBuilder(

                           builder: (context, snapshot) => TextFormField(
                             controller: _passwordController,
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
                               errorText:
                               snapshot.hasError ? snapshot.error : null,
                               errorStyle: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                               ),
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
                         )),
                     Container(
                       width: double.infinity,
                       height: 83,
                       padding: EdgeInsets.only(top: 20, bottom: 15),
                       child: RaisedButton(
                         elevation: 3,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.all(
                             Radius.circular(8),
                           ),
                         ),
                         child: Text(
                           "Register",
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 18,
                           ),
                         ),
                         onPressed: _clickToRegisterForNewUser,
                         color: Colors.yellowAccent,
                       ),
                     ),
                     Container(
                       child: RichText(
                         text: TextSpan(
                           text: "I have account ? ",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 18,
                           ),
                           children: <TextSpan>[
                             TextSpan(
                               recognizer: TapGestureRecognizer()
                                 ..onTap = () {
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context) => LoginPage(),
                                     ),
                                   );
                                 },
                               text: "Login",
                               style: TextStyle(
                                 color: Colors.yellowAccent,
                                 fontSize: 18,
                               ),
                             )
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
      ),
    );
  }
}
