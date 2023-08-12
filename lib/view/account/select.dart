import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnm_uk/all_controllers/state_controller.dart';
import 'package:mnm_uk/all_controllers/tab_controller.dart';
import 'package:mnm_uk/all_controllers/textfield_controller.dart';
import 'package:mnm_uk/res/all%20btn.dart';
import 'package:mnm_uk/res/all%20texts.dart';
import 'package:mnm_uk/res/color_get_widget.dart';
import 'package:mnm_uk/res/grideintcontainer.dart';
import 'package:mnm_uk/res/padding.dart';
import 'package:mnm_uk/res/spacewidgets.dart';
import 'package:mnm_uk/res/textfield.dart';
import 'package:mnm_uk/view/account/loginorregister.dart';

class Selectsignup extends StatelessWidget {
  Selectsignup({super.key});
  ControllerTextField controllertextfield = Get.put(ControllerTextField());
  ControllerState controllerstate = Get.put(ControllerState());
  bool loginvisible = false;

  bool visiblepassword = false;
  var registertype = "customer";
  var accountype = "bank";
  bool registeras = false;
  bool accountypebool = false;
  @override
  Widget build(BuildContext context) {
    ControllerTab _tabx = Get.put(ControllerTab());
    return SafeArea(
      child: GetBuilder<ControllerState>(builder: (_) {
        return Scaffold(
            body: reusablegrideintcontainer(
                context,
                false,
                0,
                1,
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  reusablepaddingall(
                    20,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            reusablespacewidth(
                              context,
                              0.15,
                              Image.asset("assets/splash.png"),
                            ),
                          ],
                        ),
                        reusabletextwithcolor(
                            "MNM-UK-BOOKING", 35, true, Colors.white),
                      ],
                    ),
                  ),
                  reusablespaceheight(context, 0.01),
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(60),
                                  topRight: Radius.circular(60))),
                          child: SingleChildScrollView(
                            child: Column(children: <Widget>[
                              reusablespaceheight(context, 0.01),
                              TabBar(
                                // unselectedLabelStyle:
                                unselectedLabelColor:
                                    Color.fromARGB(255, 0, 31, 78),
                                labelStyle: TextStyle(
                                    color: controllercolor.textcolorblue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                indicatorColor: controllercolor.textcolorblue,
                                labelColor: controllercolor.textcolorblue,
                                controller: _tabx.controller,
                                tabs: _tabx.myTabs,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.61,
                                child: TabBarView(
                                    controller: _tabx.controller,
                                    children: [
                                      LoginPage(
                                        loginorregister: true,
                                        password: reusabletextfieldpassword(
                                            controllertextfield.loginpassword,
                                            visiblepassword, () {
                                          controllerstate.updatestate();
                                          visiblepassword = !visiblepassword;
                                        }),
                                        loginaswidget: loginasbtn(
                                            context, registertype, () {
                                          registertype = "customer";
                                        }, () {
                                          registertype = "dealer";
                                        }),
                                        registertype: registeras,
                                        accountypewidget: Text(""),
                                        accountype: "",
                                      ),
                                      LoginPage(
                                        loginorregister: false,
                                        password: reusabletextfieldpassword(
                                            controllertextfield.signuppassword,
                                            visiblepassword, () {
                                          controllerstate.updatestate();
                                          visiblepassword = !visiblepassword;
                                        }),
                                        loginaswidget: loginasbtn(
                                            context, registertype, () {
                                          registertype = "customer";
                                          controllerstate.updatestate();
                                          registeras = false;

                                          controllerstate.updatestate();
                                          // print(registeras);
                                        }, () {
                                          registertype = "dealer";
                                          controllerstate.updatestate();
                                          registeras = true;

                                          controllerstate.updatestate();
                                        }),
                                        registertype: registeras,
                                        accountypewidget: accounttypebtn(
                                          context,
                                          accountype,
                                          () {
                                            accountype = "bank";
                                          },
                                          () {
                                            accountype = "jazzcash";
                                          },
                                          () {
                                            accountype = "easypaisa";
                                          },
                                        ),
                                        accountype: accountype,
                                      )
                                    ]),
                              ),
                            ]),
                          )))
                ])));
      }),
    );
  }
}
