import 'package:flutter/material.dart';

import '../../component/colors.dart';
import 'detailDevice.dart';


class List_Devices extends StatefulWidget {
  const List_Devices({Key? key}) : super(key: key);

  @override
  State<List_Devices> createState() => _List_DevicesState();
}

class _List_DevicesState extends State<List_Devices> {

  List imgList = [
    "assets/images/bulb.png",
    "assets/images/aacc.png",
    "assets/images/home.png",
    "assets/images/computer.png",
    "assets/images/wifi.png",
    "assets/images/swimin.png",
    "assets/icons/lamp.png",
    "assets/images/tree.png",
    "assets/images/shower.png",
    "assets/images/home2.png",
    "assets/images/gym.png",
    "assets/images/tub.png",
    "assets/images/tea.png",
    "assets/images/bag.png",
    "assets/images/ball.png"

  ];

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
        child: Column(children: [




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

          fillColor: Appcolor.blackgrey,
          filled: true,
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 15.0, color: Appcolor.white,fontFamily: "Poppinregular"),


          prefixIcon: Padding(
              padding:
              const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10),
              child: Image.asset(
                "assets/icons/search.png",height: 30,width: 20,
              ),
          ),
          border: OutlineInputBorder(
                borderRadius:
                BorderRadius.all(
                    Radius.circular(
                        15.0))),
          enabledBorder:
          OutlineInputBorder(
              borderSide: const BorderSide(
                  color:
                  Colors.transparent),
              borderRadius:
              BorderRadius.circular(15),
          ),
          focusedBorder:
          OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 2),
              borderRadius:
              BorderRadius.circular(15),
          ),
        ),
    ),
            ),

          Container(

              padding: EdgeInsets.only(left: 10,top: 20,bottom: 20),

              alignment: Alignment.topLeft,

              child: Text("Select Device Icon",style: TextStyle(color: Appcolor.white,fontFamily: "Poppinblack",fontSize: 16),)),


   Expanded(
           child:   SingleChildScrollView(
  
            physics: BouncingScrollPhysics(),
  
  
  
            child:   Column(children: [
  

  
  
      Container(
  
        height: MediaQuery.of(context).size.height/1,
  
        child: Padding(
  
          padding: const EdgeInsets.all(8.0),
  
          child: GridView.builder(
  
              physics: ScrollPhysics(),
  
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  
                  crossAxisCount: 3,
  
                  mainAxisSpacing: 10,
  
                  crossAxisSpacing: 10
  
              ),
  
              itemCount: imgList.length,
  
              itemBuilder: (BuildContext ctx, index) {
  
                return
  
                  // child: Image.asset(imgList[index]),
  
  
  
                  InkWell(
  
                    onTap: (){
  
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailDevice( img:imgList[index])));
  
                    },
  
                    child: Container(
  
                      decoration: BoxDecoration(
  
                        color: Appcolor.blackgrey,
  
  
  
                        border:  Border.all(
  
  
  
                        ),
  
                        borderRadius: BorderRadius.all(Radius.circular(10)
  
                        ), ),
  
                      width: MediaQuery.of(context).size.width/4,
  
                      height: MediaQuery.of(context).size.height/8,
  
  
  
                      child: Center(
  
                          child: Image.asset(imgList[index]   ,height: 40,)
  
                      ),
  
                    ),
  
                  );
  
              }),
  
        ),
  
      ),
  
    ],
  
    ),
  
  ),
)



        ] ),
      ),
    );
  }
}
