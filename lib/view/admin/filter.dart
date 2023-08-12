import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnm_uk/all_controllers/state_controller.dart';
import 'package:mnm_uk/all_controllers/textfield_controller.dart';
import 'package:mnm_uk/res/all%20texts.dart';
import 'package:mnm_uk/res/color_get_widget.dart';
import 'package:mnm_uk/res/padding.dart';
import 'package:mnm_uk/res/shadowcontaiber.dart';

class Adminfilter extends StatelessWidget {
  Adminfilter({super.key});
  String mnmtimeselect = 'Select';
  ControllerTextField controllertextfield = Get.put(ControllerTextField());
  ControllerState controllerstate = Get.put(ControllerState());
  var mnmtimelist = [
    'Select',
    '1 Digit',
    '2 Digit',
    '3 Digit',
    '4 Digit',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset("assets/splash.png"),
        title: reusabletext("Filter", 25, true),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 227, 240, 250),
        child: Column(
          children: [
            reusablepaddingonly(
              10,
              10,
              0,
              0,
              reusablehomerow(
                  context,
                  false,
                  20,
                  20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      reusabletextwithlightblue("Filter By:  ", 17, true),
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
                    ],
                  )),
            ),
      
            
          ],
        ),
      ),
    );
  }
}
