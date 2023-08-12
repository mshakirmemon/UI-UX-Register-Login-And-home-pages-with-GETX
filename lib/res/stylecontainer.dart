import 'package:flutter/material.dart';
import 'package:mnm_uk/res/all%20texts.dart';
import 'package:mnm_uk/res/color_get_widget.dart';

Container reusabletwosideciclecontainer(BuildContext context, String heading) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.85,
    height: MediaQuery.of(context).size.height*0.04,
    decoration: BoxDecoration(
      color: controllercolor.btnoverlaycolorblue,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100), bottomRight: Radius.circular(100))),
    child: Center(child: reusabletext(heading, 18, true)),
  );
}
