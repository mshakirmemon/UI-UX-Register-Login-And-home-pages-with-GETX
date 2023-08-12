import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnm_uk/all_controllers/state_controller.dart';
import 'package:mnm_uk/all_controllers/textfield_controller.dart';
import 'package:mnm_uk/res/all%20btn.dart';
import 'package:mnm_uk/res/padding.dart';
import 'package:mnm_uk/res/spacewidgets.dart';
import 'package:mnm_uk/res/textfield.dart';
import 'package:mnm_uk/view/admin/home.dart';
import 'package:mnm_uk/view/customer/home.dart';
import 'package:mnm_uk/view/dealer/home.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    required this.loginorregister,
    required this.password,
    required this.loginaswidget,
    required this.accountypewidget,
    required this.registertype,
    required this.accountype,
  });

  bool visiblepassword = false;
  bool loginorregister;
  Widget password;
  Widget loginaswidget;
  Widget accountypewidget;
  bool customervalue = true;
  bool dealervalue = false;
  bool registertype;
  String accountype = "bank";
  // String? ;
  void registerdata() {
    registertype ? Get.to(HomeDealer()) : Get.to(HomeCustomer());
  }

  void logindata() {
    final String no = controllertextfield.loginphone.text;
    final String pass = controllertextfield.loginpassword.text;
    Get.to(HomeAdmin());
    // Get.to(HomeAdmin());
  }

  ControllerTextField controllertextfield = Get.put(ControllerTextField());
  ControllerState controllerstate = Get.put(ControllerState());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerState>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child: loginorregister
              ? Column(
                  children: [
                    reusablespaceheight(context, 0.01),
                    reusabletextfieldgenral(
                        context,
                        Icons.phone,
                        true,
                        "Enter Phone No",
                        controllertextfield.loginphone,
                        TextInputType.phone,
                        true),
                    password,
                    reusablespaceheight(context, 0.02),
                    txtbtn(() {}, "Forgot Password?", 20),
                    reusablespaceheight(context, 0.02),
                    // loginas,
                    reusablespaceheight(context, 0.02),
                    reusablepaddingall(
                        20,
                        reusablebtngenral(context, () {
                          logindata();
                        }, "Login", 0.90, 25))
                  ],
                )
              : Column(
                  children: [
                    registertype
                        ? Column(
                            children: [
                              reusablespaceheight(context, 0.01),
                              reusabletextfieldgenral(
                                  context,
                                  Icons.person,
                                  true,
                                  "User Name",
                                  controllertextfield.signupfirstname,
                                  TextInputType.phone,
                                  true),
                              reusabletextfieldgenral(
                                  context,
                                  Icons.language_rounded,
                                  true,
                                  "Enter City",
                                  controllertextfield.signupcity,
                                  TextInputType.phone,
                                  true),
                              reusabletextfieldgenral(
                                  context,
                                  Icons.business,
                                  true,
                                  "Enter Monthly Business Min:5000",
                                  controllertextfield.signupcity,
                                  TextInputType.phone,
                                  true),
                              accountypewidget,
                              Column(
                                children: [
                                  if (accountype == "bank") ...{
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter Account Name",
                                        controllertextfield.signupeasypaisa,
                                        TextInputType.phone,
                                        true),
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter Bank Account No",
                                        controllertextfield.signupeasypaisa,
                                        TextInputType.phone,
                                        true),
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter Bank Name",
                                        controllertextfield.signupeasypaisa,
                                        TextInputType.phone,
                                        true),
                                  } else if (accountype == "jazzcash") ...{
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter JazzCash No",
                                        controllertextfield.signupjasscash,
                                        TextInputType.phone,
                                        true),
                                  } else if (accountype == "easypaisa") ...{
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter EasyPaisa No",
                                        controllertextfield.signupeasypaisa,
                                        TextInputType.phone,
                                        true),
                                  }
                                ],
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              reusablespaceheight(context, 0.01),
                              reusabletextfieldgenral(
                                  context,
                                  Icons.person,
                                  true,
                                  "User Name",
                                  controllertextfield.signupfirstname,
                                  TextInputType.phone,
                                  true),
                              reusabletextfieldgenral(
                                  context,
                                  Icons.language_rounded,
                                  true,
                                  "Enter City",
                                  controllertextfield.signupcity,
                                  TextInputType.phone,
                                  true),
                              accountypewidget,
                              Column(
                                children: [
                                  if (accountype == "bank") ...{
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter Account Name",
                                        controllertextfield.signupeasypaisa,
                                        TextInputType.phone,
                                        true),
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter Bank Account No",
                                        controllertextfield.signupeasypaisa,
                                        TextInputType.phone,
                                        true),
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter Bank Name",
                                        controllertextfield.signupeasypaisa,
                                        TextInputType.phone,
                                        true),
                                  } else if (accountype == "jazzcash") ...{
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter JazzCash No",
                                        controllertextfield.signupjasscash,
                                        TextInputType.phone,
                                        true),
                                  } else if (accountype == "easypaisa") ...{
                                    reusabletextfieldgenral(
                                        context,
                                        Icons.account_circle,
                                        true,
                                        "Enter EasyPaisa No",
                                        controllertextfield.signupeasypaisa,
                                        TextInputType.phone,
                                        true),
                                  }
                                ],
                              ),
                            ],
                          ),

                    reusabletextfieldgenral(
                        context,
                        Icons.phone,
                        true,
                        "Enter Phone No",
                        controllertextfield.signupphone,
                        TextInputType.phone,
                        true),

                    password,
                    loginaswidget,
                    // checkBoxloginas(
                    // context, () {}, () {}, customervalue, dealervalue),
                    reusablespaceheight(context, 0.02),
                    reusablebtngenral(context, () {
                      registerdata();
                    }, "Register", 0.90, 25)
                  ],
                ),
        ),
      );
    });
  }
}
