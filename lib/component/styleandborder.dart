import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';




class Textstyleblack{

  var fieldStyle =
  InputDecoration(
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
  );

}
class Boxdec {

  static BoxDecoration bcbluebottomrad10blue = InputDecoration(
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
  ) as BoxDecoration;
}


