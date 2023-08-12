import 'package:flutter/material.dart';
import 'package:mnm_uk/res/all%20texts.dart';

TableRow reusabletableheadingrow(
    BuildContext context, String txt1, String txt2, String txt3, String txt4) {
  return TableRow(children: [
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          reusabletext(
            txt1,
            15,
            true,
          ),
        ],
      ),
    ),
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          reusabletext(
            txt2,
            15,
            true,
          ),
        ],
      ),
    ),
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          reusabletext(
            txt3,
            15,
            true,
          ),
        ],
      ),
    ),
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          reusabletext(
            txt4,
            15,
            true,
          ),
        ],
      ),
    ),
  ]);
}

TableRow reusabletabledatarow(BuildContext context, Function editontap,
    String valuef, String values, String valuenum) {
  return TableRow(children: [
    SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        child: InkWell(
            onTap: () {
              editontap();
            },
            child: Icon(Icons.edit))),
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(valuef),
        ],
      ),
    ),
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(values),
        ],
      ),
    ),
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(valuenum),
        ],
      ),
    ),
  ]);
}
