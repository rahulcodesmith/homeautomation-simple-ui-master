import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import '../../component/colors.dart';
import '../../component/styleandborder.dart';
import 'dart:io';
import 'dart:ui';

import '../Dashboard.dart';
import '../homepage/homepage.dart';

class DetailDevice extends StatefulWidget {
  var img;
   DetailDevice({Key? key,this.img}) : super(key: key);

  @override
  State<DetailDevice> createState() => _DetailDeviceState();
}

class _DetailDeviceState extends State<DetailDevice> {
  final _formKey = GlobalKey<FormState>();

  final DateRangePickerController _controller = DateRangePickerController();
  bool click= true;
  int val = -1;
  String? gender="male";

  String _scanBarcode = 'Unknown';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _textEditingController=TextEditingController();
    // _textEditingController_end=TextEditingController();
       print(widget.img);
  }

  DateTime _selectedDate =  DateTime.now();
  DateTime _selectedDate_end= DateTime.now();
  TextEditingController _textEditingController = TextEditingController(text:"${DateFormat('yyyy-MM-dd').format(DateTime.now())}");
  TextEditingController _textEditingController_end = TextEditingController(text:"${DateFormat('yyyy-MM-dd').format(DateTime.now())}");

  _selecttDate(BuildContext context) async {

    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate ,
        firstDate: DateTime(2020),
        lastDate: DateTime(2025),
        builder: (BuildContext context, Widget? child)  {
          return
            Theme(
              data: ThemeData.dark().copyWith(
                  colorScheme: ColorScheme.light(
                    primary: Appcolor.blue,
                    surface:Appcolor.blue,

                  ),
                  highlightColor: Appcolor.blue,
                  selectedRowColor: Appcolor.blue,
                  dialogBackgroundColor: Appcolor.white
              ),
              child: child!,
            );
        });

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;

      _textEditingController
        ..text = DateFormat('yyyy-MM-dd').format(_selectedDate)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController.text.length,
            affinity: TextAffinity.upstream));


    }
  }
  _selecttDate1(BuildContext context) async {

    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate_end ,
        firstDate: DateTime(2020),
        lastDate: DateTime(2025),
        builder: (BuildContext context, Widget? child)  {
          return
            Theme(
              data: ThemeData.dark().copyWith(
                  colorScheme: ColorScheme.light(
                    primary: Appcolor.blue,
                    surface:Appcolor.blue,

                  ),
                  highlightColor: Appcolor.blue,
                  selectedRowColor: Appcolor.blue,
                  dialogBackgroundColor: Appcolor.white
              ),
              child: child!,
            );
        });

    if (newSelectedDate != null) {
      _selectedDate_end = newSelectedDate;



      _textEditingController_end
        ..text = DateFormat('yyyy-MM-dd').format(_selectedDate_end)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _textEditingController_end.text.length,
            affinity: TextAffinity.upstream));
    }
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.blackblackground,
      appBar: AppBar(title: Text("ADD DEVICE",style: TextStyle(fontFamily: "Poppinblack",fontSize: 16),),
        backgroundColor: Appcolor.blackblackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),

        elevation: 0,
      ),

        body: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: _formKey,

              child: Column(children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(

                      decoration: BoxDecoration(
                        color: Appcolor.blackgrey,

                        border:  Border.all(

                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ), ),
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/6,

                      child: Center(
                          child: Image.asset(widget.img ,height: 60,)
                          // Image.asset("assets/images/bulb.png",height: 50,width: 50,)
                      ),
                    ),
                  ),
                ),

SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: InkWell(onTap: (){
                        scanQR();

                      },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Appcolor.blackgrey,

                            border:  Border.all(

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ), ),
                          width: MediaQuery.of(context).size.width/3,
                          height: MediaQuery.of(context).size.height/14,
                          child: Row(

                            children: [
                              Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Image.asset("assets/images/scan.png",height: 20,width: 20,),
                                  )
                              ),
                              SizedBox(width: 10,),
                              Text("QR Scan",style: TextStyle(fontFamily: "Poppinbold",fontSize: 14,color: Appcolor.white),)
                            ],
                          ),

                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Appcolor.blackgrey,

                        border:  Border.all(

                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ), ),
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/14,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                                child: Image.asset("assets/images/bluetooth.png",height: 25,)
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Bluetooth",style: TextStyle(fontFamily: "",fontSize: 14,color: Appcolor.white)),
                        ],
                      ),

                    ),
                  ],
                ),
                  SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Text("Device Name",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white,),)),
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 0,right: 0),
                  child: TextField(
                    onTap: () {
                      setState(() {
                        // change = false;
                      });
                    },
                    onChanged: (value) {
                      // filterSearchResults(value);
                    },
                    style: TextStyle(color: Appcolor.white),
                    // controller: editingController,
                    decoration: InputDecoration(

                      fillColor: Appcolor.blackblackground,
                      filled: true,

                      hintStyle: TextStyle(fontSize: 15.0, color: Appcolor.white,fontFamily: "Poppinregular"),


                      prefixIcon: Padding(
                        padding:
                        const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                            bottom: 10),
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  10.0))),
                      enabledBorder:
                      OutlineInputBorder(
                        borderSide: const BorderSide(
                            color:
                            Appcolor.blackgrey),
                        borderRadius:
                        BorderRadius.circular(10),
                      ),
                      focusedBorder:
                      OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Appcolor.blackgrey,
                            width: 2),
                        borderRadius:
                        BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5,top: 15),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(" Select Group",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white,),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0,right: 0,top: 10),
                  child: TextField(
                    onTap: () {
                      setState(() {
                        // change = false;
                      });
                    },
                    onChanged: (value) {
                      // filterSearchResults(value);
                    },
                    style: TextStyle(color: Appcolor.white),
                    // controller: editingController,
                    decoration: InputDecoration(

                      fillColor: Appcolor.blackblackground,
                      filled: true,

                      hintStyle: TextStyle(fontSize: 15.0, color: Appcolor.white,fontFamily: "Poppinregular"),


                      prefixIcon: Padding(
                        padding:
                        const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                            bottom: 10),
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  10.0))),
                      enabledBorder:
                      OutlineInputBorder(
                        borderSide: const BorderSide(
                            color:
                            Appcolor.blackgrey),
                        borderRadius:
                        BorderRadius.circular(10),
                      ),
                      focusedBorder:
                      OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Appcolor.blackgrey,
                            width: 2),
                        borderRadius:
                        BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                // VerticalDivider(
                //   thickness: 2,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 5,top: 15),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(" Action Mode",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white,),)),

                ),

                Row(children: [
  Container(
alignment: Alignment.centerLeft,
    width: 150,
    child: ListTile(
      title: Text("Manual",style: TextStyle(color: Appcolor.white,fontFamily: "Poppinmedium",fontSize: 14),),
      leading: Radio(

              activeColor: Colors.blue,
              fillColor:
              MaterialStateColor.resolveWith((states) => Colors.blue),
              value: "male",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              }),
    ),
  ),

  Container(
    alignment: Alignment.centerLeft,
    width: 150,
    child: ListTile(
      title: Text("Auto",style: TextStyle(color: Appcolor.white,fontFamily: "Poppinmedium",fontSize: 14),),
      leading: Radio(
              activeColor: Colors.blue,
              fillColor:
              MaterialStateColor.resolveWith((states) => Colors.blue),
              value: "female",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              }),
    ),
  ),
],),

    SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: Row(children: [
                    Expanded(child: Text("From",style: TextStyle(color: Appcolor.white,fontFamily: "Poppinmedium",fontSize: 10),)),
                    SizedBox(width: 20,),

                    Expanded(child: Text("To",style: TextStyle(color: Appcolor.white,fontFamily: "Poppinmedium",fontSize: 10),)),
                  ],),
                ),

                Row(children: [

                  Expanded(
                    child:
                    Container(
                      width: MediaQuery.of(context).size.width/2,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 0,right: 0,top: 10),
                        child: TextFormField(
                          textAlign: TextAlign.center,

                          onTap: () {
                            setState(() {
                              _selecttDate(context);
                              // change = false;
                            });
                          },
                          onChanged: (value) {
                            },
                          focusNode: AlwaysDisabledFocusNode(),

                          style: TextStyle(color: Appcolor.white),
                          controller: _textEditingController,
                          decoration: InputDecoration(

                            fillColor: Appcolor.blackblackground,
                            filled: true,

                            hintStyle: TextStyle(fontSize: 10.0, color: Appcolor.white,fontFamily: "Poppinregular"),


                            // prefixIcon: Padding(
                            //   padding:
                            //   const EdgeInsets.only(
                            //       // left: 5,
                            //       // right: 10,
                            //       // top: 10,
                            //       // bottom:
                            //   ),
                            // ),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(
                                    Radius.circular(
                                        10.0))),
                            enabledBorder:
                            OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color:
                                  Appcolor.blackgrey),
                              borderRadius:
                              BorderRadius.circular(10),
                            ),
                            focusedBorder:
                            OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Appcolor.blackgrey,
                                  width: 2),
                              borderRadius:
                              BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0,right: 0,top: 10),
                      child:
                      Container(
                        width: MediaQuery.of(context).size.width/2,

                        child: Padding(
                          padding: const EdgeInsets.only(left: 0,right: 0,top: 10),
                          child: TextFormField(
                            textAlign: TextAlign.center,

                            onTap: () {
                              setState(() {

                                _selecttDate1(context);
                              });
                            },
                            onChanged: (value) {
                            },
                            focusNode: AlwaysDisabledFocusNode(),

                            style: TextStyle(color: Appcolor.white),
                            controller: _textEditingController_end,
                            decoration: InputDecoration(

                              fillColor: Appcolor.blackblackground,
                              filled: true,

                              hintStyle: TextStyle(fontSize: 10.0, color: Appcolor.white,fontFamily: "Poppinregular"),


                              // prefixIcon: Padding(
                              //   padding:
                              //   const EdgeInsets.only(
                              //       // right: 20,
                              //       // top: 10,
                              //       // bottom: 10
                              //   ),
                              // ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          10.0))),
                              enabledBorder:
                              OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color:
                                    Appcolor.blackgrey),
                                borderRadius:
                                BorderRadius.circular(10),
                              ),
                              focusedBorder:
                              OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Appcolor.blackgrey,
                                    width: 2),
                                borderRadius:
                                BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],),

    Padding(
      padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10),
      child: Container(
              alignment: Alignment.centerLeft,
              child: Text("Mood Setting",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 10,color: Appcolor.white,),textAlign: TextAlign.start)),
    ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Appcolor.blackgrey,

                          border:  Border.all(
                          color:    click==true?Appcolor.blue:Appcolor.blackgrey
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ), ),
                        // width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.height/14,
                        child: Row(

                          children: [
                            Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 0),
                                  child: Image.asset("assets/images/sun.png",height: 20,width: 20,color:click==true?Appcolor.blue:Appcolor.white,),
                                )
                            ),
                            SizedBox(width: 10,),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    click=true;
                                    print("hi");

                                  });
                                },
                                child: Text("Day mode",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 14,color: click==true?Appcolor.blue:Appcolor.white),))
                          ],
                        ),

                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Appcolor.blackgrey,

                          border:  Border.all(
                  color: click==false?Appcolor.blue:Appcolor.blackgrey
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ), ),
                        // width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.height/14,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 0),
                              child: Center(
                                  child: Image.asset("assets/images/moon.png",height: 25,color: click==false?Appcolor.blue:Appcolor.white,)
                              ),
                            ),
                            SizedBox(width: 10,),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    click=false;

                                  });
                                },
                                child: Text("Night mode",style: TextStyle(fontFamily: "Poppinmedium",fontSize: 14,color: click==false?Appcolor.blue:Appcolor.white))),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
SizedBox(height: 20,),

Padding(
  padding: const EdgeInsets.only(bottom: 20),
  child:   Row(children: [

    Expanded(

      child: SizedBox(

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

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));

                  // Screen=false;

                });



              }, child: Text("ADD Device",style: TextStyle(color: Appcolor.white,fontFamily: "Raleway black",fontSize: 16),)),

      ),

    ),

    SizedBox(width: 20,),

    Expanded(

      child: SizedBox(

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
                 Navigator.pop(context);
                  // Screen=false;

                });



              }, child: Text("Cancel",style: TextStyle(color: Appcolor.white,fontFamily: "Raleway black",fontSize: 16),)),

      ),

    )

  ],),
),





              ],),
            ),
          ),
        ),
    );
  }
}
class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}