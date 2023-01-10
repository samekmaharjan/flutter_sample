import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/sigin.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  @override
  void initState() {
    // TODO: implement initState
Timer(const Duration(seconds: 4), (){
  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => LoginPage(),
  ));
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
       
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
                Image.asset('images/mountainelogo 4.png'), 
                SizedBox(
  height: 20,
), 
//                 const spinkit = SpinKitRotatingCircle(
//   color: Colors.white,
//   size: 50.0,
// );

SizedBox(
  height: 20,
),
 FadingText('wait a sec...',style: TextStyle(fontSize: 20,color: Colors.red),),
SizedBox(
  height: 20,
),
JumpingText('Loading.....',style: TextStyle(fontSize: 20),),
               
        ],),
      )
        
      
     
      );
    
    
  }
}