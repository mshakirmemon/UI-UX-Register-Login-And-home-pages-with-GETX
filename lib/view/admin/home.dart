import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnm_uk/all_controllers/state_controller.dart';
import 'package:mnm_uk/all_controllers/textfield_controller.dart';
import 'package:mnm_uk/res/all%20btn.dart';
import 'package:mnm_uk/res/all%20texts.dart';
import 'package:mnm_uk/res/color_get_widget.dart';
import 'package:mnm_uk/res/dialog.dart';
import 'package:mnm_uk/res/shadowcontaiber.dart';
import 'package:mnm_uk/res/spacewidgets.dart';
import 'package:mnm_uk/res/tablewidget.dart';
import 'package:mnm_uk/res/textfield.dart';
import 'package:mnm_uk/view/account/select.dart';
import 'package:mnm_uk/view/admin/balanceadd.dart';
import 'package:mnm_uk/view/admin/customerbooking.dart';
import 'package:mnm_uk/view/admin/dealerbooking.dart';
import 'package:mnm_uk/view/admin/filter.dart';
import 'package:mnm_uk/view/admin/withdrawrequests.dart';

class HomeAdmin extends StatelessWidget {
  ControllerTextField controllertextfield = Get.put(ControllerTextField());
  ControllerState controllerstate = Get.put(ControllerState());
  String auto = "on";
  bool stop_or_start = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: GetBuilder<ControllerState>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset("assets/splash.png"),
          title: reusabletext("Dash Board", 25, true),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(Adminfilter());
                },
                icon: Icon(Icons.local_bar_rounded,
                    color: controllercolor.textcolorblue)),
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
              reusableadminhometopbtns(
                context,
                () {
                  controllerstate.updatestate();
                  stop_or_start = !stop_or_start;
                },
                //stopbookingontap,
                stop_or_start,
                () {}, //customerontap,
                () {}, //dealerontap,
                () {
                  reusableonefielddialog(
                    context,
                    "Add Text",
                    () {},
                    "Enter Text",
                    "Add Text",
                    0.27,
                  );
                }, //textaddontap,
                () {
                  Get.to(BalanceAdd());
                }, //balanceaddontap,
                () {
                  Get.to(CustomerBooking());
                }, //customerbookingontap,
                () {
                  Get.to(DealerBooking());
                }, //dealerbookingontap,
                () {
                  Get.to(Withdrawrequests());
                }, //withdrawontap
              ),
              reusablespaceheight(context, 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    reusablehomeschemecontainerlightcolor(
                        context,
                        "DEALER",
                        "1 DIGIT",
                        () {},
                        "2 DIGIT",
                        () {},
                        "3 DIGIT",
                        () {},
                        "4 DIGIT",
                        () {},
                        0.45,
                        0.50),
                    reusablehomeschemecontainerdarkcolor(
                        context,
                        "CUSTOMER",
                        "1 DIGIT",
                        () {},
                        true,
                        "2 DIGIT",
                        () {},
                        true,
                        "3 DIGIT",
                        () {},
                        true,
                        "4 DIGIT",
                        () {},
                        true,
                        0.45,
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
