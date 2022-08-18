import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:homeautomation/component/colors.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import '../homedevice/home devices.dart';



class HomePage_Screen extends StatefulWidget {
  const HomePage_Screen({Key? key}) : super(key: key);

  @override
  State<HomePage_Screen> createState() => _HomePage_ScreenState();
}

class _HomePage_ScreenState extends State<HomePage_Screen> {

  var dt = DateTime.now();



  bool click = true;
  bool isSwitchOn = false;
  bool isSwitchOn1 = false;
  bool isSwitchOn2 = false;
  bool isSwitchOn3 = false;
  bool isSwitchOn4 = false;
  bool isSwitchOn5 = false;
  bool isSwitchOn6 = false;
  bool isSwitchOn7 = false;
  bool isSwitchOn8 = false;
  bool Screen = true;

  double val = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.blackblackground,
      body:

      Padding(
        padding: const EdgeInsets.only(top:50,left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/images/profile.png",
                      width: 55,
                      height: 55,
                    )),
              ),
              title: Text(
                "Canal Jems",
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: "Extra-Bold", fontSize: 20,color: Appcolor.white),
              ),
              subtitle: Text(
                "Today ${ DateFormat('dd MMMM , yyyy').format(DateTime.now())}",
                style: TextStyle(fontFamily: "Poppinlight", fontSize: 10,color: Appcolor.white),
              ),


              trailing: Container(
                width: 70,
                height: 50,
                child: CircleAvatar(
                    backgroundColor: Appcolor.blackgrey,
                    child: Image.asset(
                      "assets/icons/bell.png",
                      width: 22,
                      height: 22,
                    )),
              ),
            ),
                        SizedBox(height: 10,),


            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 70,right: 70,top: 160),
                child: Container(
                  height: MediaQuery.of(context).size.height/10,

                  decoration: BoxDecoration(
                    border:  Border.all(
                        color: Colors.white30
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)
                    ),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Temperature",style: TextStyle(fontFamily: "Poppinlight",fontSize: 10,color: Appcolor.white),textAlign: TextAlign.center,),
                            Text("32°C",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 20,color: Appcolor.white),textAlign: TextAlign.center
                            ),],),
                      ),
                      SizedBox(width: 20,),
                      VerticalDivider(
                        width: 5,
                        color: Colors.blue,
                        endIndent: 20,
                        indent: 35,
                        thickness: 2,
                      ),
                      SizedBox(width: 20,),
                      Container(
                        padding: EdgeInsets.only(top: 15),

                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Humidity",style: TextStyle(fontFamily: "Poppinlight",fontSize: 10,color: Appcolor.white),textAlign: TextAlign.center),
                            Text("50°C",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 20,color: Appcolor.white),textAlign: TextAlign.center),
                          ],),
                      ),
                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 10),
                child:
                Container(
                  decoration: BoxDecoration(
                    color:Appcolor.blackgrey ,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  height: MediaQuery.of(context).size.height/5.5,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [




                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          Text("20 °/10°",style: TextStyle(fontSize: 32,color: Appcolor.white,fontFamily: "Poppinbold",),),
                          Text("Tooday Cloudy, Surat, India",style: TextStyle(fontSize: 10,color: Appcolor.white,fontFamily: "Poppinlight"),),],),
                        SizedBox(width: 40,),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                                  child: Container(
                                      height: MediaQuery.of(context).size.height/10,
                                      child: Image.asset("assets/images/sunmoon.png")),
                                )


                    ],)

                  ],),
                ),
              ),


              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        click = true;
                      });
                    },
                    child:click==true? Container(
                        alignment: Alignment.center,
                        width:  MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.height/15,
                        decoration: BoxDecoration(
                          color:Appcolor.blackblackground ,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),

                        child:  Text("Device",style: TextStyle(color: Appcolor.white,fontFamily: "Raleway black",fontSize: 20),)
                    ):       Container(
                      //   margin: EdgeInsets.all(20),
                      // padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        width:  MediaQuery.of(context).size.width/3,
                        // height: MediaQuery.of(context).size.height/15,
                        decoration: BoxDecoration(
                          color: Colors.transparent ,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Text("Device",style: TextStyle(color: Appcolor.white,fontFamily: "Raleway black",fontSize: 16),)
                    )
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        click = false;
                      });
                    },
                    child: click==false?
                    Container(
                        alignment: Alignment.center,
                        width:  MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.height/15,
                        decoration: BoxDecoration(
                          color:Appcolor.blackblackground ,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),

                        child:  Text("Groups",style: TextStyle(color: Appcolor.white,fontFamily: "Raleway black",fontSize: 20),)
                    )
                        :
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                          alignment: Alignment.center,
                          width:  MediaQuery.of(context).size.width/3,
                          // height: MediaQuery.of(context).size.height/15,
                          decoration: BoxDecoration(
                            color: Colors.transparent ,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Text("Groups",style: TextStyle(color: Appcolor.white,fontFamily: "Raleway black",fontSize: 16),)
                      ),
                    )
                  ),
                ],),

            ],),
            
           SizedBox(height: 30,) ,
            
            
            
            Expanded(
              child: SingleChildScrollView(

                physics: BouncingScrollPhysics(

                ),
                child:Screen==true?Container(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0,top: 25),
                      child: Container(
                        alignment: Alignment.center,
                          height: 100,
                          child: Image.asset("assets/images/device.png")),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 50,right: 50,bottom: 20),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sapien enim et nisl gravida.",style: TextStyle(color: Appcolor.white,fontFamily: "Poppinlight",fontSize: 10,),textAlign: TextAlign.center),
                    ),

                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(15)
                            ), //border width and color

                          ),
                          onPressed: (){
                        setState(() {
                          Screen=false;
                        });

                      }, child: Text("ADD Device",style: TextStyle(color: Appcolor.white,fontFamily: "Raleway black",fontSize: 16),)),
                    )

                  ],
                ),):Column(
                  children: [

                    Row(children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Home Device",style: TextStyle(color: Appcolor.white,fontFamily: "Raleway black",fontSize: 16),),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Devices()));
                            },
                            child: Text("See all",style: TextStyle(color: Appcolor.white,fontFamily: "Poppinlight",fontSize: 10),)),
                      )

                    ],),
                    SizedBox(height: 15,) ,

                    Container(
                      height: MediaQuery.of(context).size.height/6,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[




                          Container(
                            decoration: BoxDecoration(
                              color: Appcolor.blackgrey,

                              border:  Border.all(

                              ),
                              borderRadius: BorderRadius.all(Radius.circular(30)
                              ), ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,

                            child: Column(
                              children: [

                                Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 25),
                                      child: Container(
                                        height: 50,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Image.asset("assets/images/aacc.png"),
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15,left: 0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("Air Conditioner",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white),textAlign: TextAlign.center
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 20,top: 10),
                                      child: Container(
                                        child: FlutterSwitch(
                                          borderRadius: 30.0,
                                          padding: 2.0,
                                          width: 40.0,
                                          height: 22.0,
                                          toggleSize: 22.0,
                                          activeColor: Colors.white,
                                          activeToggleColor: Colors.blue,
                                          inactiveToggleColor: Appcolor.blackgrey,
                                          inactiveColor: Appcolor.blackblackground,

                                          value: isSwitchOn,
                                          onToggle: (value) {
                                            setState(() {
                                              isSwitchOn = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),



                              ],
                            ),
                          ),
                          SizedBox(width: 10,) ,

                          Container(

                            decoration: BoxDecoration(
                              color: Appcolor.blackgrey,

                              border:  Border.all(

                              ),
                              borderRadius: BorderRadius.all(Radius.circular(30)
                              ), ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,

                            child: Column(
                              children: [

                                Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 25),
                                      child: Container(
                                        height: 50,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Image.asset("assets/images/bulb.png"),
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15,left: 0),
                                        child:

                                        Container(
                                          alignment: Alignment.center,
                                          child: Text("Light",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 12,color: Appcolor.white),textAlign: TextAlign.start
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 20,top: 10),
                                      child:
                                      Container(
                                        child: FlutterSwitch(
                                          borderRadius: 30.0,
                                          padding: 2.0,
                                          width: 40.0,
                                          height: 22.0,
                                          toggleSize: 22.0,
                                          activeColor: Colors.white,
                                          activeToggleColor: Colors.blue,
                                          inactiveToggleColor: Appcolor.blackgrey,
                                          inactiveColor: Appcolor.blackblackground,


                                          value: isSwitchOn1,
                                          onToggle: (value) {
                                            setState(() {
                                              isSwitchOn1 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),


                                  ],
                                ),





                              ],
                            ),
                          ),
                          SizedBox(width: 10,) ,


                          Container(

                            decoration: BoxDecoration(
                              color: Appcolor.blackgrey,

                              border:  Border.all(

                              ),
                              borderRadius: BorderRadius.all(Radius.circular(30)
                              ), ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,

                            child: Column(
                              children: [

                                Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 25),
                                      child: Container(
                                        height: 50,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Image.asset("assets/images/bulb.png"),
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15,left: 00),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("Light",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 12,color: Appcolor.white),textAlign: TextAlign.start
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 20,top: 10),
                                      child: Container(
                                        child: FlutterSwitch(
                                          borderRadius: 30.0,
                                          padding: 2.0,
                                          width: 40.0,
                                          height: 22.0,
                                          toggleSize: 22.0,
                                          activeColor: Colors.white,
                                          activeToggleColor: Colors.blue,
                                          inactiveToggleColor: Appcolor.blackgrey,
                                          inactiveColor: Appcolor.blackblackground,


                                          value: isSwitchOn2,
                                          onToggle: (value) {
                                            setState(() {
                                              isSwitchOn2 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),


                                  ],
                                ),





                              ],
                            ),
                          ),
                          SizedBox(width: 10,) ,

                          Container(
                            decoration: BoxDecoration(
                              color: Appcolor.blackgrey,

                              border:  Border.all(

                              ),
                              borderRadius: BorderRadius.all(Radius.circular(30)
                              ), ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,

                            child: Column(
                              children: [

                                Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 25),
                                      child: Container(
                                        height: 50,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Image.asset("assets/images/aacc.png"),
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 0,right: 20),
                                  child:
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 15,left: 0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text("Air Conditioner",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white),textAlign: TextAlign.start
                                            ),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(right: 0,top: 10),
                                        child: Container(
                                          child: FlutterSwitch(
                                            borderRadius: 30.0,
                                            padding: 2.0,
                                            width: 40.0,
                                            height: 22.0,
                                            toggleSize: 22.0,
                                            activeColor: Colors.white,
                                            activeToggleColor: Colors.blue,
                                            inactiveToggleColor: Appcolor.blackgrey,
                                            inactiveColor: Appcolor.blackblackground,


                                            value: isSwitchOn8,
                                            onToggle: (value) {
                                              setState(() {
                                                isSwitchOn8 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),





                    SizedBox(height: 30,) ,

                    Row(children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Garden Device",style: TextStyle(color: Appcolor.white,fontFamily: "Raleway black",fontSize: 16),),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Devices()));
                            },
                            child: Text("See all ",style: TextStyle(color: Appcolor.white,fontFamily: "Poppinlight",fontSize: 10),)),
                      )

                    ],),
                    SizedBox(height: 15,) ,


                    Container(
                      height: MediaQuery.of(context).size.height/6,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(

                            decoration: BoxDecoration(
                              color: Appcolor.blackgrey,

                              border:  Border.all(

                              ),
                              borderRadius: BorderRadius.all(Radius.circular(30)
                              ), ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,

                            child: Column(
                              children: [

                                Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 25),
                                      child: Container(
                                        height: 50,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Image.asset("assets/images/shower.png"),
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15,left: 0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("Shower Swich",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 12,color: Appcolor.white),textAlign: TextAlign.start
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 20,top: 0),
                                      child: Container(
                                        child: FlutterSwitch(
                                          borderRadius: 30.0,
                                          padding: 2.0,
                                          width: 40.0,
                                          height: 22.0,
                                          toggleSize: 22.0,
                                          activeColor: Colors.white,
                                          activeToggleColor: Colors.blue,
                                          inactiveToggleColor: Appcolor.blackgrey,
                                          inactiveColor: Appcolor.blackblackground,


                                          value: isSwitchOn4,
                                          onToggle: (value) {
                                            setState(() {
                                              isSwitchOn4 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),


                                  ],
                                ),





                              ],
                            ),
                          ),
                          SizedBox(width: 10,) ,

                          Container(
                            decoration: BoxDecoration(
                              color: Appcolor.blackgrey,

                              border:  Border.all(

                              ),
                              borderRadius: BorderRadius.all(Radius.circular(30)
                              ), ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,

                            child: Column(
                              children: [

                                Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 25),
                                      child: Container(
                                        height: 50,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Image.asset("assets/icons/lamp.png"),
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15,left: 0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("Garden Lamp",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 12,color: Appcolor.white),textAlign: TextAlign.start
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 20,top: 10),
                                      child: Container(
                                        child: FlutterSwitch(
                                          borderRadius: 30.0,
                                          padding: 2.0,
                                          width: 40.0,
                                          height: 22.0,
                                          toggleSize: 22.0,
                                          activeColor: Colors.white,
                                          activeToggleColor: Colors.blue,
                                          inactiveToggleColor: Appcolor.blackgrey,
                                          inactiveColor: Appcolor.blackblackground,


                                          value: isSwitchOn5,
                                          onToggle: (value) {
                                            setState(() {
                                              isSwitchOn5 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),


                                  ],
                                ),





                              ],
                            ),
                          ),
                          SizedBox(width: 10,) ,

                          Container(

                            decoration: BoxDecoration(
                              color: Appcolor.blackgrey,

                              border:  Border.all(

                              ),
                              borderRadius: BorderRadius.all(Radius.circular(30)
                              ), ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,

                            child: Column(
                              children: [

                                Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 25),
                                      child: Container(
                                        height: 50,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Image.asset("assets/images/bulb.png"),
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15,left: 0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("Light",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 12,color: Appcolor.white),textAlign: TextAlign.start
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 20,top: 10),
                                      child: Container(
                                        child: FlutterSwitch(
                                          borderRadius: 30.0,
                                          padding: 2.0,
                                          width: 40.0,
                                          height: 22.0,
                                          toggleSize: 22.0,
                                          activeColor: Colors.white,
                                          activeToggleColor: Colors.blue,
                                          inactiveToggleColor: Appcolor.blackgrey,
                                          inactiveColor: Appcolor.blackblackground,


                                          value: isSwitchOn6,
                                          onToggle: (value) {
                                            setState(() {
                                              isSwitchOn6 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),


                                  ],
                                ),





                              ],
                            ),
                          ),
                          SizedBox(width: 10,) ,

                          Container(
                            decoration: BoxDecoration(
                              color: Appcolor.blackgrey,

                              border:  Border.all(

                              ),
                              borderRadius: BorderRadius.all(Radius.circular(30)
                              ), ),
                            width: MediaQuery.of(context).size.width/2.2,
                            height: MediaQuery.of(context).size.height/5,

                            child: Column(
                              children: [

                                Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 25),
                                      child: Container(
                                        height: 50,
                                        width: 70,
                                        alignment: Alignment.center,
                                        child: Image.asset("assets/images/aacc.png"),
                                      ),
                                    )
                                ),
                                SizedBox(height: 10,),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15,left: 0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("Air Conditioner",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white),textAlign: TextAlign.start
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 20,top: 10),
                                      child: Container(
                                        child: FlutterSwitch(
                                          borderRadius: 30.0,
                                          padding: 2.0,
                                          width: 40.0,
                                          height: 22.0,
                                          toggleSize: 22.0,
                                          activeColor: Colors.white,
                                          activeToggleColor: Colors.blue,
                                          inactiveToggleColor: Appcolor.blackgrey,
                                          inactiveColor: Appcolor.blackblackground,


                                          value: isSwitchOn7,
                                          onToggle: (value) {
                                            setState(() {
                                              isSwitchOn7 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),


                                  ],
                                ),





                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,) ,


                    SizedBox(height: 20,),

                  ],
                ),
              ),
            ),
    
          ],
        ),
      ),
    );
  }
}
