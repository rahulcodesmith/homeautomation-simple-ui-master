import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:homeautomation/component/colors.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';



class Home_Devices extends StatefulWidget {
  const Home_Devices({Key? key}) : super(key: key);

  @override
  State<Home_Devices> createState() => _Home_DevicesState();
}

class _Home_DevicesState extends State<Home_Devices> {
  bool isSwitchOn21 = false;
  bool isSwitchOn22 = false;
  bool isSwitchOn23 = false;
  double _value12 = 2.6;  double _value22 = 2.6;  double _value23 = 2.6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.blackblackground,
      appBar: AppBar(title: Text("HOME DEVICE"),
        backgroundColor: Appcolor.blackblackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
           Padding(
             padding: const EdgeInsets.only(top: 20,right: 30),
             child: Text("Devices"),
           ),
        ],
        elevation: 0,
      ),


      body:  Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(

          children: [


            Container(
              decoration: BoxDecoration(
                color: Appcolor.blackgrey,

                border:  Border.all(

                ),
                borderRadius: BorderRadius.all(Radius.circular(30)
                ), ),
              width: MediaQuery.of(context).size.width/1,
              height: MediaQuery.of(context).size.height/7,






              child: Row(

                children: [
                  Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Image.asset("assets/images/aacc.png",width: 70,)),

                  SizedBox(width: 30,),
                  Expanded(
                    child: Column(children: [
                      SizedBox(height: 30,),

                      Row(
                        children: [

                        Expanded(child: Text("Air Conditioner",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white,),)),

                        Padding(
                          padding: const EdgeInsets.only(right:40),
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


                              value: isSwitchOn21,
                              onToggle: (value) {
                                setState(() {
                                  isSwitchOn21 = value;
                                });
                              },
                            ),
                          ),
                        ),

                      ],),

                      SizedBox(height: 10,),
                      SizedBox(width: 40,),


                      Padding(
                        padding: const EdgeInsets.only(left: 0,right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Image.asset("assets/icons/low brightness.png",height: 20,width: 20),
                            SizedBox(width: 0,),

                            SizedBox(
                              width: MediaQuery.of(context).size.width/3,
                              height: 40,
                              child: Center(
                                  child: SfSliderTheme(


                                    data: SfSliderThemeData(
                                      overlayRadius: 3,
                                      activeTrackHeight:1,
                                      inactiveTrackHeight: 1,
                                      thumbStrokeWidth: 2,
                                      thumbRadius: 7,
                                      thumbStrokeColor: Colors.white,



                                    ),
                                    child: SfSlider(
                                      inactiveColor: Colors.white,
                                      min: 2.0,
                                      max: 10.0,

                                      value: _value12,
                                      onChanged: (dynamic newValue){
                                        setState(() {
                                          _value12 = newValue;
                                        });
                                      },
                                    ),
                                  )
                              ),),
                          SizedBox(width: 10,),

                            Image.asset("assets/icons/brighthigh.png",height: 20,width: 20,),

                          ],
                        ),
                      ),
                      SizedBox(width: 40,)

                    ],),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 20,),

            Container(
              decoration: BoxDecoration(
                color: Appcolor.blackgrey,

                border:  Border.all(

                ),
                borderRadius: BorderRadius.all(Radius.circular(30)
                ), ),
              width: MediaQuery.of(context).size.width/1,
              height: MediaQuery.of(context).size.height/7,






              child: Row(

                children: [
                  Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Image.asset("assets/images/aacc.png",width: 70,)),

                  SizedBox(width: 30,),
                  Expanded(
                    child: Column(children: [
                      SizedBox(height: 30,),

                      Row(
                        children: [

                          Expanded(child: Text("Air Conditioner",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white,),)),

                          Padding(
                            padding: const EdgeInsets.only(right:40),
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


                                value: isSwitchOn22,
                                onToggle: (value) {
                                  setState(() {
                                    isSwitchOn22 = value;
                                  });
                                },
                              ),
                            ),
                          ),

                        ],),

                      SizedBox(height: 10,),
                      SizedBox(width: 40,),


                      Padding(
                        padding: const EdgeInsets.only(left: 0,right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Image.asset("assets/icons/low brightness.png",height: 20,width: 20),
                            SizedBox(width: 0,),

                            SizedBox(
                              width: MediaQuery.of(context).size.width/3,
                              height: 40,
                              child: Center(
                                  child: SfSliderTheme(


                                    data: SfSliderThemeData(
                                      overlayRadius: 3,
                                      activeTrackHeight:1,
                                      inactiveTrackHeight: 1,
                                      thumbStrokeWidth: 2,
                                      thumbRadius: 7,
                                      thumbStrokeColor: Colors.white,



                                    ),
                                    child: SfSlider(
                                      inactiveColor: Colors.white,
                                      min: 2.0,
                                      max: 10.0,

                                      value: _value22,
                                      onChanged: (dynamic newValue){
                                        setState(() {
                                          _value22 = newValue;
                                        });
                                      },
                                    ),
                                  )
                              ),),
                            SizedBox(width: 10,),

                            Image.asset("assets/icons/brighthigh.png",height: 20,width: 20,),

                          ],
                        ),
                      ),
                      SizedBox(width: 40,)

                    ],),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),

            Container(
              decoration: BoxDecoration(
                color: Appcolor.blackgrey,

                border:  Border.all(

                ),
                borderRadius: BorderRadius.all(Radius.circular(30)
                ), ),
              width: MediaQuery.of(context).size.width/1,
              height: MediaQuery.of(context).size.height/7,






              child: Row(

                children: [
                  Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Image.asset("assets/images/aacc.png",width: 70,)),

                  SizedBox(width: 30,),
                  Expanded(
                    child: Column(children: [
                      SizedBox(height: 30,),

                      Row(
                        children: [

                          Expanded(child: Text("Air Conditioner",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white,),)),

                          Padding(
                            padding: const EdgeInsets.only(right:40),
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


                                value: isSwitchOn23,
                                onToggle: (value) {
                                  setState(() {
                                    isSwitchOn23 = value;
                                  });
                                },
                              ),
                            ),
                          ),

                        ],),

                      SizedBox(height: 10,),
                      SizedBox(width: 40,),


                      Padding(
                        padding: const EdgeInsets.only(left: 0,right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Image.asset("assets/icons/low brightness.png",height: 20,width: 20),
                            SizedBox(width: 0,),

                            SizedBox(
                              width: MediaQuery.of(context).size.width/3,
                              height: 40,
                              child: Center(
                                  child: SfSliderTheme(


                                    data: SfSliderThemeData(
                                      overlayRadius: 3,
                                      activeTrackHeight:1,
                                      inactiveTrackHeight: 1,
                                      thumbStrokeWidth: 2,
                                      thumbRadius: 7,
                                      thumbStrokeColor: Colors.white,



                                    ),
                                    child: SfSlider(
                                      inactiveColor: Colors.white,
                                      min: 2.0,
                                      max: 10.0,

                                      value: _value23,
                                      onChanged: (dynamic newValue){
                                        setState(() {
                                          _value23 = newValue;
                                        });
                                      },
                                    ),
                                  )
                              ),),
                            SizedBox(width: 10,),

                            Image.asset("assets/icons/brighthigh.png",height: 20,width: 20,),

                          ],
                        ),
                      ),
                      SizedBox(width: 40,)

                    ],),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),

          ],),
      ),
    );
  }
}
