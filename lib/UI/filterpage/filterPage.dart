import 'package:flutter/material.dart';

import '../../component/colors.dart';


class Filter_page extends StatefulWidget {
  const Filter_page({Key? key}) : super(key: key);

  @override
  State<Filter_page> createState() => _Filter_pageState();
}

class _Filter_pageState extends State<Filter_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.blackblackground,

      // appBar: AppBar(title: Text("filter"),),
    );
  }
}