import 'package:flutter/material.dart';
import 'package:mnm_uk/res/color_get_widget.dart';

Container reusablegrideintcontainer(
  BuildContext context,
  bool infinity_or_not,
  double width,
  double height,

  Widget widget,
) {
  return Container(
    width: infinity_or_not
        ? MediaQuery.of(context).size.width * width
        : double.infinity,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
   
          controllercolor.firstGredientcolorblue,
          controllercolor.secondGredientcolorblue,
          controllercolor.secondGredientcolorblue,
          controllercolor.thirdGredientcolorblue,
          controllercolor.thirdGredientcolorblue,

        ])),
    child: widget,
  );
}
