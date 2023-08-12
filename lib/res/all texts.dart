import 'package:flutter/material.dart';
import 'package:mnm_uk/res/color_get_widget.dart';

Text reusabletext(
  String txt,
  double txtsize,
  bool bold_or_not,
) {
  return Text(
    txt,
    style: TextStyle(
        color: controllercolor.textcolorblue,
        fontSize: txtsize,
        fontWeight: bold_or_not ? FontWeight.bold : FontWeight.normal),
  );
}

Padding reusabletextwithpading(
  String txt,
  double txtsize,
  bool bold_or_not,
  double leftsize,
  double rightsize,
  double topsize,
  double bottomsize,
) {
  return Padding(
    padding: EdgeInsets.only(
      left: leftsize,
      right: rightsize,
      bottom: bottomsize,
      top: topsize,
    ),
    child: Text(
      txt,
      style: TextStyle(
          color: controllercolor.textcolorblue,
          fontSize: txtsize,
          fontWeight: bold_or_not ? FontWeight.bold : FontWeight.normal),
    ),
  );
}

Text reusabletextwithcolor(
    String txt, double txtsize, bool bold_or_not, Color txtclr) {
  return Text(
    txt,
    style: TextStyle(
        color: txtclr,
        fontSize: txtsize,
        fontWeight: bold_or_not ? FontWeight.bold : FontWeight.normal),
  );
}

Padding reusabletextwithpadingwithcolor(
  String txt,
  double txtsize,
  bool bold_or_not,
  Color txtclr,
  double leftsize,
  double rightsize,
  double topsize,
  double bottomsize,
) {
  return Padding(
    padding: EdgeInsets.only(
      left: leftsize,
      right: rightsize,
      bottom: bottomsize,
      top: topsize,
    ),
    child: Text(
      txt,
      style: TextStyle(

          // ],
          color: txtclr,
          fontSize: txtsize,
          fontWeight: bold_or_not ? FontWeight.bold : FontWeight.normal),
    ),
  );
}

Text reusabletextwithlightblue(
  String txt,
  double txtsize,
  bool bold_or_not,
) {
  return Text(
    txt,
    style: TextStyle(
        color: controllercolor.btnoverlaycolorblue,
        fontSize: txtsize,
        fontWeight: bold_or_not ? FontWeight.bold : FontWeight.normal),
  );
}
