import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnm_uk/all_controllers/textfield_controller.dart';
import 'package:mnm_uk/res/all%20btn.dart';
import 'package:mnm_uk/res/all%20texts.dart';
import 'package:mnm_uk/res/spacewidgets.dart';
import 'package:mnm_uk/res/stylecontainer.dart';
import 'package:mnm_uk/res/textfield.dart';

ControllerTextField controllertextfield = Get.put(ControllerTextField());

reusableeditdialog(
    BuildContext context,
    String heading,
    String auto,
    // Function cancelontap,
    Function editrontap) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: reusabletwosideciclecontainer(context, heading)),
          content: SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusabletextfieldhomewithlength(context, "Enter Number",
                    controllertextfield.Home_NUM_value, 0.90, 1),
                reusabletextfieldhome(
                  context,
                  "FIrst Amount",
                  controllertextfield.Home_F_value,
                  0.90,
                ),
                reusabletextfieldhome(
                  context,
                  "Secound Amout",
                  controllertextfield.Home_S_value,
                  0.90,
                ),
            
              ],
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusablegenralbtnwithoutcircle(context, 0.27, () {
                  Get.back();
                }, "Cancel", true),
                reusablegenralbtnwithoutcircle(context, 0.27, () {
                  Get.back();
                  editrontap();
                }, "Edit", true),
              ],
            ),
          ],
        );
      });
}

reusableonefielddialog(
    BuildContext context,
    String heading,

    Function withdraw_ontap,
    String textfieldtext,
    String btntext,
    double width) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: reusabletwosideciclecontainer(context, heading)),
          content: SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusabletextfieldhome(
                  context,
                  textfieldtext,
                  controllertextfield.Home_F_value,
                  0.90,
                ),
             
              ],
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusablegenralbtnwithoutcircle(context, 0.27, () {
                  Get.back();
                }, "Cancel", true),
                reusablegenralbtnwithoutcircle(context, width, () {
                  Get.back();
                  withdraw_ontap();
                }, btntext, true),
              ],
            ),
          ],
        );
      });
}
