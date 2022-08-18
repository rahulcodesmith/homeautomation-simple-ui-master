import 'dart:async';

import 'package:flutter/material.dart';

import 'Dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Dashboard()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      body:       Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage("assets/images/back.png"),

          ),

        ),
        child:Padding(
          padding: const EdgeInsets.only(top: 250 ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 80,
                  child: Image.asset("assets/images/one.png",)),
              SizedBox(height: 5,),
              Text("HOME",style: TextStyle(fontFamily: "Raleway black",fontSize: 40,color: Colors.white,),),
            ],),
        ),

      )
      ,
    );


  }
}
