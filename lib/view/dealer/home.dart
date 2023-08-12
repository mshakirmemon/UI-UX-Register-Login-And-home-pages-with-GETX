import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mnm_uk/all_controllers/state_controller.dart';
import 'package:mnm_uk/all_controllers/textfield_controller.dart';
import 'package:mnm_uk/res/all%20btn.dart';
import 'package:mnm_uk/res/all%20texts.dart';
import 'package:mnm_uk/res/color_get_widget.dart';

import 'package:mnm_uk/res/dialog.dart';
import 'package:mnm_uk/res/padding.dart';
import 'package:mnm_uk/res/shadowcontaiber.dart';
import 'package:mnm_uk/res/spacewidgets.dart';
import 'package:mnm_uk/res/tablewidget.dart';
import 'package:mnm_uk/res/textfield.dart';
import 'package:mnm_uk/view/account/select.dart';

class HomeDealer extends StatelessWidget {
  ControllerTextField controllertextfield = Get.put(ControllerTextField());
  ControllerState controllerstate = Get.put(ControllerState());
  var finalDate = '';
  var date;
  getCurrentDate() async {
    var date = new DateTime.now().toString();
    var dateParse = DateTime.parse(date);
    var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";
    controllerstate.updatestate();
    finalDate = formattedDate.toString();
  }

  String auto = "on";
  int lengthnum = 1;
  var length = "1";
  bool btnstatecolor1 = true;
  bool btnstatecolor2 = true;
  bool btnstatecolor3 = true;
  bool btnstatecolor4 = true;
  // Future<void> digitfunction(bool btnstatecolor1, bool btnstatecolor2,
  //     bool btnstatecolor3, bool btnstatecolor4, int lengthnum) async {
  //   // controllerstate.updatestate();
  //   // btnstatecolor1 = btnstatecolor1;
  //   // controllerstate.updatestate();
  //   // btnstatecolor2 = btnstatecolor2;
  //   // controllerstate.updatestate();
  //   // btnstatecolor3 = btnstatecolor3;
  //   // controllerstate.updatestate();
  //   // btnstatecolor4 = btnstatecolor4;
  //   // controllerstate.updatestate();
  //   // lengthnum = lengthnum;
  //   // controllerstate.updatestate();
  String mnmtimeselect = 'Select';

  var mnmtimelist = [
    'Select',
    '11 AM',
    '04 PM',
    '08 PM',
    '10 PM',
  ];
  var selectedtime;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: GetBuilder<ControllerState>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset("assets/splash.png"),
          title: reusabletext("Dealer Daily Booking", 20, true),
          centerTitle: true,
          actions: [
            TextButton(
                onPressed: () {
                  Get.to(Selectsignup());
                },
                child: reusabletext("Logout", 18, true))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              reusablehometoprowsandbtns(
                context,

                () {}, //main_voucher_ontap,
                () {
                  reusableonefielddialog(
                    context,
                    "Withdraw Amount",
                    () {},
                    "Enter Amount",
                    "Withdraw",
                    0.27,
                  );
                }, //withdraw_ontap,
                () {}, //notification_ontap,

                () {
                  reusableonefielddialog(
                    context,
                    "Add Balance",
                    () {},
                    "Enter Balance",
                    "Add",
                    0.27,
                  );
                },
                "Automatic",

                "Automatic",
                "Automatic",
                "Automatic",
                "headlinetxt",
                DropdownButton(
                  dropdownColor: controllercolor.btncolorbluelightdark,
                  // style: TextStyle(color: Colors.red),
                  underline: Text(""),
                  value: mnmtimeselect,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Color.fromARGB(255, 187, 222, 251),
                  ),
                  items: mnmtimelist.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: reusablepaddingonly(15, 0, 0, 0,
                          reusabletextwithlightblue(items, 15, true)),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    // ontap();
                    controllerstate.updatestate();
                    mnmtimeselect = newValue!;

                    controllerstate.updatestate();
                  },
                ),
              ),
              // Text(""),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Table(
                          defaultColumnWidth: FixedColumnWidth(52),
                          border: TableBorder.all(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2),
                          children: [
                            reusabletableheadingrow(
                                context, "EDIT", "F", "S", "NUM"),
                            reusabletabledatarow(context, () {
                              reusableeditdialog(
                                  context, "Edit Booking", auto, () {});
                            }, "25", "25", "5796"),
                            reusabletabledatarow(context, () {
                              reusableeditdialog(
                                  context, "Edit Booking", auto, () {});
                            }, "25", "25", "5796"),
                            reusabletabledatarow(context, () {
                              reusableeditdialog(
                                  context, "Edit Booking", auto, () {});
                            }, "25", "25", "5796"),
                            reusabletabledatarow(context, () {
                              reusableeditdialog(
                                  context, "Edit Booking", auto, () {});
                            }, "25", "25", "5796"),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.58,
                          // height: MediaQuery.of(context).size.height*0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              reusablegenralbtnwithoutcircle(
                                  context, 0.14, () {}, "Add", true),
                              reusabletextfieldhome(context, "F",
                                  controllertextfield.Home_F_value, 0.11),
                              reusabletextfieldhome(context, "S",
                                  controllertextfield.Home_S_value, 0.11),
                              Column(
                                children: [
                                  reusablespaceheight(context, 0.026),
                                  reusabletextfieldhomewithlength(
                                      context,
                                      "No",
                                      controllertextfield.Home_NUM_value,
                                      0.16,
                                      lengthnum),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.58,
                          child: autobtnhome(context, auto, () {
                            auto = "off";
                          }, () {
                            auto = "on";
                          }),
                        ),
                        reusablegenralbtnwithoutcircle(
                            context, 0.50, () {}, "Booked", true),
                      ],
                    ),
                    reusablehomeschemecontainerdarkcolor(
                        context,
                        "SCHEMES",
                        "1 DIGIT",
                        () {
                          // digitfunction(!btnstatecolor1, false, true, true, 1);
                          controllerstate.updatestate();
                          btnstatecolor1 = !btnstatecolor1;
                          btnstatecolor2 = true;
                          btnstatecolor3 = true;
                          btnstatecolor4 = true;
                          lengthnum = 1;
                        },
                        btnstatecolor1,
                        "2 DIGIT",
                        () {
                          // digitfunction(true, !btnstatecolor2, true, true, 2);
                          controllerstate.updatestate();
                          btnstatecolor1 = true;
                          btnstatecolor2 = !btnstatecolor2;
                          btnstatecolor3 = true;
                          btnstatecolor4 = true;
                          lengthnum = 2;
                        },
                        btnstatecolor2,
                        "3 DIGIT",
                        () {
                          // digitfunction(true, true, !btnstatecolor3, true, 3);
                          controllerstate.updatestate();
                          btnstatecolor1 = true;
                          btnstatecolor2 = true;
                          btnstatecolor3 = !btnstatecolor3;
                          btnstatecolor4 = true;
                          lengthnum = 3;
                        },
                        btnstatecolor3,
                        "4 DIGIT",
                        () {
                          // digitfunction(true, true, true, !btnstatecolor4, 4);
                          controllerstate.updatestate();
                          btnstatecolor1 = true;
                          btnstatecolor2 = true;
                          btnstatecolor3 = true;
                          btnstatecolor4 = !btnstatecolor4;
                          lengthnum = 4;
                        },
                        btnstatecolor4,
                        0.36,
                        0.50)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }));
  }
}
