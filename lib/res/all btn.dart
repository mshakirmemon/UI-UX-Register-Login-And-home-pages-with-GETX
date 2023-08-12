import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnm_uk/all_controllers/state_controller.dart';
import 'package:mnm_uk/res/all%20texts.dart';
import 'package:mnm_uk/res/color_get_widget.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:mnm_uk/res/color_get_widget.dart';

ControllerState controllerstate = Get.put(ControllerState());
String mnmtimeselect = 'Male';

var mnmtimelist = [
  'Male',
  'Female',
];
SizedBox reusablebtngenral(BuildContext context, Function ontap, String btntext,
    double width, double txtsize) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * width,
    child: TextButton(
      onPressed: () {
        ontap();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        )),
        overlayColor:
            MaterialStateProperty.all(controllercolor.btnoverlaycolorblue),
        backgroundColor:
            MaterialStateProperty.all(controllercolor.btncolorblue),
        shadowColor:
            MaterialStateProperty.all(controllercolor.btnshadowcolorblue),
        elevation: MaterialStateProperty.all(10),
      ),
      child: Center(
        child: Text(
          btntext,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: txtsize),
        ),
      ),
    ),
  );
}

SizedBox reusablebtnstatechange(
    BuildContext context, Function ontap, double width, bool stop_or_start) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * width,
    child: TextButton(
      onPressed: () {
        ontap();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        )),
        overlayColor:
            MaterialStateProperty.all(controllercolor.btnoverlaycolorblue),
        backgroundColor:
            MaterialStateProperty.all(controllercolor.btncolorblue),
        shadowColor:
            MaterialStateProperty.all(controllercolor.btnshadowcolorblue),
        elevation: MaterialStateProperty.all(10),
      ),
      child: Center(
        child: Text(
          stop_or_start ? "Stop Booking" : "Start Booking",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
    ),
  );
}

TextButton txtbtn(Function ontap, String txt, double txtsize) {
  return TextButton(
      onPressed: () {
        ontap();
      },
      child: Row(
        children: [
          Text(
            txt,
            style: TextStyle(
                color: controllercolor.textcolorblue,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ],
      ));
}

Row donthaveaccount(BuildContext context, Function ontap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      reusabletext("If don't have an Account?", 14, false),
      TextButton(
        onPressed: () {
          ontap();
        },
        child: reusabletext("Register", 15, true),
      ),
    ],
  );
}

Row alreadyhaveaccount(BuildContext context, Function ontap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      reusabletext("Already have an Account.", 14, false),
      TextButton(
          onPressed: () {
            ontap();
          },
          child: reusabletext("Login", 16, true)),
    ],
  );
}

Row loginasbtn(BuildContext context, String? loginas, Function customerontap,
    Function dealerontap) {
  return Row(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.50,
        height: MediaQuery.of(context).size.height * 0.05,
        child: ListTile(
          leading: Radio(
            activeColor: controllercolor.btncolorblue,
            value: "customer",
            groupValue: loginas,
            onChanged: (value) {
              customerontap();
              controllerstate.updatestate();
              loginas = value.toString();
              controllerstate.updatestate();
            },
          ),
          title: reusabletext("Customer", 15, true),
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.40,
        height: MediaQuery.of(context).size.height * 0.05,
        child: ListTile(
          leading: Radio(
            activeColor: controllercolor.btncolorblue,
            value: "dealer",
            groupValue: loginas,
            onChanged: (value) {
              dealerontap();
              controllerstate.updatestate();
              loginas = value.toString();
              controllerstate.updatestate();
            },
          ),
          title: reusabletext("Dealer", 15, true),
        ),
      ),
    ],
  );
}

Row accounttypebtn(BuildContext context, String? loginas, Function bankontap,
    Function jazzcashontap, Function easypaisaontap) {
  return Row(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.28,
        height: MediaQuery.of(context).size.height * 0.05,
        child: Row(
          children: [
            Radio(
              activeColor: controllercolor.btncolorblue,
              value: "bank",
              groupValue: loginas,
              onChanged: (value) {
                bankontap();
                controllerstate.updatestate();
                loginas = value.toString();
                controllerstate.updatestate();
              },
            ),
            reusabletext("Bank", 15, true),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.32,
        height: MediaQuery.of(context).size.height * 0.05,
        child: Row(
          children: [
            Radio(
              activeColor: controllercolor.btncolorblue,
              value: "jazzcash",
              groupValue: loginas,
              onChanged: (value) {
                jazzcashontap();
                controllerstate.updatestate();
                loginas = value.toString();
                controllerstate.updatestate();
              },
            ),
            reusabletext("JazzCash", 15, true),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.33,
        height: MediaQuery.of(context).size.height * 0.05,
        child: Row(
          children: [
            Radio(
              activeColor: controllercolor.btncolorblue,
              value: "easypaisa",
              groupValue: loginas,
              onChanged: (value) {
                easypaisaontap();
                controllerstate.updatestate();
                loginas = value.toString();
                controllerstate.updatestate();
              },
            ),
            reusabletext("EasyPaisa", 15, true),
          ],
        ),
      ),
    ],
  );
}

Padding checkBoxaccounttype(BuildContext context, Function ontap) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
    ),
    child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.065,
          width: MediaQuery.of(context).size.width * 0.90,
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.account_circle),
              Text("Enter No"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      RoundCheckBox(
                        checkedColor: controllercolor.btncolorblue,
                        checkedWidget: Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        ),
                        size: 18,
                        border: Border.all(
                          width: 1.5,
                        ),
                        onTap: (selected) {
                          ontap();
                        },
                      ),
                      reusabletextwithpading("EasyPaisa", 18, true, 5, 0, 0, 0)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.065,
          width: MediaQuery.of(context).size.width * 0.90,
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.account_circle),
              Text("Enter No"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      RoundCheckBox(
                        checkedColor: controllercolor.btncolorblue,
                        checkedWidget: Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        ),
                        size: 18,
                        border: Border.all(
                          width: 1.5,
                        ),
                        onTap: (selected) {
                          ontap();
                        },
                      ),
                      reusabletextwithpading("JazzCash", 18, true, 5, 0, 0, 0)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

SizedBox reusablebtngenralwithlightblue(
  BuildContext context,
  Function ontap,
  String btntext,
  double width,
  double txtsize,
) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * width,
    child: TextButton(
      onPressed: () {
        ontap();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        )),
        overlayColor: MaterialStateProperty.all(controllercolor.btncolorblue),
        backgroundColor:
            MaterialStateProperty.all(controllercolor.btnoverlaycolorblue),
        shadowColor:
            MaterialStateProperty.all(controllercolor.btnshadowcolorblue),
        elevation: MaterialStateProperty.all(10),
      ),
      child: Center(
        child: Text(
          btntext,
          style: TextStyle(
              color: controllercolor.textcolorblue,
              fontWeight: FontWeight.bold,
              fontSize: txtsize),
        ),
      ),
    ),
  );
}

SizedBox reusablegenralbtnwithoutcircle(
  BuildContext context,
  double width,
  Function ontap,
  String txt,
  bool dark_or_light,
) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * width,
    child: TextButton(
      onPressed: () {
        ontap();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )),
        overlayColor: MaterialStateProperty.all(dark_or_light
            ? controllercolor.btnoverlaycolorblue
            : controllercolor.btncolorblue),
        backgroundColor: MaterialStateProperty.all(dark_or_light
            ? controllercolor.btncolorbluelightdark
            : controllercolor.btnoverlaycolorblue),
        shadowColor:
            MaterialStateProperty.all(controllercolor.btnshadowcolorblue),
        elevation: MaterialStateProperty.all(10),
      ),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(
              color:
                  dark_or_light ? Colors.white : controllercolor.textcolorblue,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    ),
  );
}

SizedBox autobtnhome(BuildContext context, String? loginas,
    Function customerontap, Function dealerontap) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.58,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        reusabletext("Auto", 18, true),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.05,
              child: Row(
                children: [
                  Radio(
                    activeColor: controllercolor.btncolorblue,
                    value: "on",
                    groupValue: loginas,
                    onChanged: (value) {
                      dealerontap();
                      controllerstate.updatestate();
                      loginas = value.toString();
                      controllerstate.updatestate();
                    },
                  ),
                  reusabletext("On", 15, true),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.05,
              child: Row(
                children: [
                  Radio(
                    activeColor: controllercolor.btncolorblue,
                    value: "off",
                    groupValue: loginas,
                    onChanged: (value) {
                      customerontap();
                      controllerstate.updatestate();
                      loginas = value.toString();
                      controllerstate.updatestate();
                    },
                  ),
                  reusabletext("Off", 15, true),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

DropdownButton reusabledropdownbtn(Function ontap, var selectedtime) {
  return DropdownButton(
    value: mnmtimeselect,
    icon: const Icon(
      Icons.arrow_drop_down,
      size: 40,
      color: Colors.black,
    ),
    items: mnmtimelist.map((String items) {
      return DropdownMenuItem(
        value: items,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(items),
        ),
      );
    }).toList(),
    onChanged: (newValue) {
      // ontap();
      controllerstate.updatestate();
      selectedtime = newValue!;
      mnmtimeselect = newValue!;

      controllerstate.updatestate();
    },
  );
}
