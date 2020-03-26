
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'dash_board.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF002B4A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(

              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),

                Image.asset('images/investicon.png'),

                SizedBox(
                  height: 20.0,
                ),

                Form(
                  key: _formKey,
                  child: Column(
                    textBaseline: TextBaseline.ideographic,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.person_outline,
                            color: Color(0xFF97BAD0),
                          size: 30.0,),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(

                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF264D69)
                                  ),

                                ),

                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Color(0xFF97BAD0),
                                ),
                                validator: (String value){
                                  if(value.isEmpty){
                                    return 'Please enter some text';
                                  }
                                  return value;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.lock,
                            color: Color(0xFF97BAD0),
                            size: 30.0,),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(

                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(


                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      color: Color(0xFF264D69)
                                  ),

                                ),

                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Color(0xFF97BAD0),
                                ),
                                validator: (String value){
                                  if(value.isEmpty){
                                    return 'Please enter some text';
                                  }
                                  return value;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),


                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      child: Text(
                        'Forgot Passsword ?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),


                SizedBox(
                  height: 20.0,
                ),

              FlatButton(
                padding: EdgeInsets.all(15.0),
                onPressed: (){

                  Navigator.push(context, _createRoute());
                },
                child: Text(
                  'Login'
                ),
                color: Color(0xFF0090F8),
                textColor: Colors.white,

              ),
                SizedBox(
                  height: 15.0,
                ),
                FlatButton(
                  onPressed: (){

                  },
                  child: Text(
                    'Sign up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Dashboard(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      //var tween = Tween(begin: begin, end: end);
      //var offsetAnimation = animation.drive(tween);

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
