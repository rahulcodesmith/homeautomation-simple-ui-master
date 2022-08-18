import 'package:flutter/material.dart';
import 'package:homeautomation/UI/filterpage/filterPage.dart';
import 'package:homeautomation/component/colors.dart';

import 'adddevices/addDevices.dart';
import 'homepage/homepage.dart';



class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final pages = <Widget>[
    HomePage_Screen(),
    Filter_page(),

  ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        floatingActionButton: FloatingActionButton(
          // isExtended: true,i

        child:Image.asset("assets/icons/plus.png",width: 22,height: 60, ),
    backgroundColor: Appcolor.blue,
    onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>List_Devices()));
    },),

    bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
      ),

      child: BottomAppBar(
        elevation: 0,
          color: Appcolor.blue,

          shape: CircularNotchedRectangle(

          ),



          notchMargin: 10,
          clipBehavior: Clip.hardEdge,
          child: Container(

            alignment: Alignment.center,
            padding: EdgeInsets.only(right: 70,left: 70),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Center(child: Image.asset("assets/icons/home.png",width: 22,height: 40, ))
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Image.asset("assets/icons/filter.png",width: 20,height: 40,)
                ),
              ],
            ),
          ),
        ),
    ),
      body: pages[index],
      backgroundColor:  Appcolor.blackblackground,
    );
  }
}
