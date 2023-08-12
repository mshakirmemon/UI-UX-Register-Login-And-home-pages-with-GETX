import 'package:flutter/material.dart';

Padding reusablepaddingall(double padingsize, Widget widget) {
  return Padding(
    padding: EdgeInsets.all(
      padingsize,
    ),
    child: widget,
  );
}

Padding reusablepaddingonly(
    double left, double right, double top, double bottom, Widget widget) {
  return Padding(
    padding: EdgeInsets.only(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      // padingsize,
    ),
    child: widget,
  );
}
