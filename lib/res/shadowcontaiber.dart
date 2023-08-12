import 'package:flutter/material.dart';
import 'package:mnm_uk/res/all%20btn.dart';
import 'package:mnm_uk/res/all%20texts.dart';
import 'package:mnm_uk/res/padding.dart';
import 'package:mnm_uk/res/color_get_widget.dart';

Container reusableshadowcontainer(
  BuildContext context,
  Color fillclr,
  double width,
  double height,
  double btmsize,
  double topsize,
  Widget widget,
) {
  return Container(
    margin: EdgeInsets.only(top: topsize, bottom: btmsize),
    width: MediaQuery.of(context).size.width * width,
    height: MediaQuery.of(context).size.height * height,
    decoration: BoxDecoration(
      color: fillclr,
      borderRadius: BorderRadius.circular(10),
   
    ),
    child: SizedBox(
        height: MediaQuery.of(context).size.height * height, child: widget),
  );
}

SingleChildScrollView reusablehomeschemecontainerdarkcolor(
    BuildContext context,
    String deadingtxt,
    String txt1,
    Function txt1ontap,
    bool btnstatecolor1,
    String txt2,
    Function txt2ontap,
    bool btnstatecolor2,
    String txt3,
    Function txt3ontap,
    bool btnstatecolor3,
    String txt4,
    Function txt4ontap,
    bool btnstatecolor4,
    double width,
    double height) {
  return SingleChildScrollView(
    child: reusableshadowcontainer(
        context,
        controllercolor.btncolorblue,
        width,
        height,
        0,
        0,
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // reusablespaceheight(context, 0.01),
            reusableshadowcontainer(
                context,
                controllercolor.btnoverlaycolorblue,
                0.33,
                0.05,
                0,
                0,
                Center(
                  child: reusabletext(deadingtxt, 18, true),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.43,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reusablegenralbtnwithoutcircle(context, 0.40, () {
                      txt1ontap();
                    }, txt1, btnstatecolor1),
                    reusablegenralbtnwithoutcircle(context, 0.40, () {
                      txt2ontap();
                    }, txt2, btnstatecolor2),
                    reusablegenralbtnwithoutcircle(context, 0.40, () {
                      txt3ontap();
                    }, txt3, btnstatecolor3),
                    reusablegenralbtnwithoutcircle(context, 0.40, () {
                      txt4ontap();
                    }, txt4, btnstatecolor4),
                  ],
                ),
              ),
            ),
          ],
        )),
  );
}

SingleChildScrollView reusablehomeschemecontainerlightcolor(
  BuildContext context,
  String deadingtxt,
  String txt1,
  Function txt1ontap,
  String txt2,
  Function txt2ontap,
  String txt3,
  Function txt3ontap,
  String txt4,
  Function txt4ontap,
  double width,
  double height,
) {
  return SingleChildScrollView(
    child: reusableshadowcontainer(
        context,
        controllercolor.btnoverlaycolorblue,
        width,
        height,
        0,
        0,
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // reusablespaceheight(context, 0.01),
            reusableshadowcontainer(
                context,
                controllercolor.btncolorbluelightdark,
                0.38,
                0.05,
                0,
                0,
                Center(
                  child:
                      reusabletextwithcolor(deadingtxt, 18, true, Colors.white),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.43,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reusablegenralbtnwithoutcircle(context, 0.40, () {
                      txt1ontap();
                    }, txt1, false),
                    reusablegenralbtnwithoutcircle(context, 0.40, () {
                      txt2ontap();
                    }, txt2, false),
                    reusablegenralbtnwithoutcircle(context, 0.40, () {
                      txt3ontap();
                    }, txt3, false),
                    reusablegenralbtnwithoutcircle(context, 0.40, () {
                      txt4ontap();
                    }, txt4, false),
                  ],
                ),
              ),
            ),
          ],
        )),
  );
}

Container reusablehomerow(
  BuildContext context,
  bool dark_or_light,
  double bottomsize,
  double topsize,
  Widget widget,
) {
  return dark_or_light
      ? reusableshadowcontainer(
          context,
          controllercolor.btnoverlaycolorblue,
          0.95,
          0.05,
          bottomsize,
          topsize,
          Padding(
              padding: const EdgeInsets.only(left: 5, right: 5), child: widget))
      : reusableshadowcontainer(
          context,
          controllercolor.btncolorblue,
          0.95,
          0.05,
          bottomsize,
          topsize,
          Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: widget));
}

Column reusablehometoprowsandbtns(
    BuildContext context,
    Function main_voucher_ontap,
    Function withdraw_ontap,
    Function notification_ontap,
    Function add_balance_ontap,
    var balancevalue,
    var time_left,
    var today_date,
    var closing_date,
    var headlinetxt,
    Widget widget) {
  return Column(
    children: [
      reusablepaddingonly(
        0,
        0,
        10,
        20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            reusablebtngenral(context, () {
              main_voucher_ontap();
            }, "MAIN VOUCHER", 0.30, 12),
            reusablebtngenralwithlightblue(context, () {
              withdraw_ontap();
            }, "WITHDRAW", 0.30, 12),
            reusablebtngenral(context, () {
              notification_ontap();
            }, "NOTIFICATION", 0.30, 12)
          ],
        ),
      ),
      Container(
          margin: EdgeInsets.only(top: 0, bottom: 10),
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.04,
          decoration: BoxDecoration(
              color: controllercolor.btncolorbluelightdark, borderRadius: BorderRadius.circular(10)),
          child: Center(child: reusabletextwithlightblue(headlinetxt, 15, true))),
      reusablehomerow(
        context,
        true,
        15,
        0,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // reusabletext("ID: $id_value", 12, true),
            TextButton(
                onPressed: () {
                  add_balance_ontap();
                },
                child: reusabletext("Add Balance", 12, true)),
            reusabletext("Balance: $balancevalue", 12, true),
          ],
        ),
      ),
      reusablehomerow(
        context,
        false,
        15,
        0,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                reusabletextwithlightblue("MNM TV: ", 12, true),
                widget,
              ],
            ),
            reusabletextwithlightblue("Time Left: $time_left", 12, true),
          ],
        ),
      ),
      reusablehomerow(
        context,
        true,
        15,
        0,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            reusabletext("Today Date: $today_date", 12, true),
            reusabletext("Closing Date: $closing_date", 12, true),
          ],
        ),
      ),
    ],
  );
}

Column reusableadminhometopbtns(
  BuildContext context,
  Function stopbookingontap,
  bool stop_or_start,
  Function customerontap,
  Function dealerontap,
  Function textaddontap,
  Function balanceaddontap,
  Function customerbookingontap,
  Function dealerbookingontap,
  Function withdrawontap,

  // var id_value,
  // var balancevalue,
  // var MNM_time,
  // var time_left,
  // var today_date,
  // var closing_date
) {
  return Column(
    children: [
      reusablehomerow(
        context,
        false,
        5,
        15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            reusabletextwithcolor(" ADD/REMOVE", 17, true, Colors.white),
            reusabletextwithcolor("TOTAL BALANCE ", 17, true, Colors.white),
          ],
        ),
      ),
      reusablepaddingonly(
        10,
        10,
        0,
        0,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            reusablebtnstatechange(context, () {
              stopbookingontap();
            }, 0.35, stop_or_start),
            // reusablebtngenral(context, () {
            //   stopbookingontap();
            // }, "STOP BOOKING", 0.35, 12),
            reusablebtngenralwithlightblue(context, () {
              balanceaddontap();
            }, "BALANCE ADD", 0.45, 12)
          ],
        ),
      ),
      reusablepaddingonly(
        10,
        10,
        0,
        0,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            reusablebtngenral(context, () {
              customerontap();
            }, "CUSTOMER", 0.35, 12),
            // reusablebtngenralwithlightblue(context, () {
            //   voucher_inbox_ontap();
            // }, "VOUCHER INBOX", 0.30, 12),
            reusablebtngenralwithlightblue(context, () {
              customerbookingontap();
            }, "CUSTOMER BOOKING", 0.45, 12)
          ],
        ),
      ),
      reusablepaddingonly(
        10,
        10,
        0,
        0,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            reusablebtngenral(context, () {
              dealerontap();
            }, "DEALER", 0.35, 12),
            // reusablebtngenralwithlightblue(context, () {
            //   voucher_inbox_ontap();
            // }, "VOUCHER INBOX", 0.30, 12),
            reusablebtngenralwithlightblue(context, () {
              dealerbookingontap();
            }, "DEALER BOOKING", 0.45, 12)
          ],
        ),
      ),
      reusablepaddingonly(
        10,
        10,
        0,
        0,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            reusablebtngenral(context, () {
              textaddontap();
            }, "TEXT ADD", 0.35, 12),
            // reusablebtngenralwithlightblue(context, () {
            //   voucher_inbox_ontap();
            // }, "VOUCHER INBOX", 0.30, 12),
            reusablebtngenralwithlightblue(context, () {
              withdrawontap();
            }, "Withdraw", 0.45, 14)
          ],
        ),
      ),
    ],
  );
}
