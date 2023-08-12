
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnm_uk/res/color_get_widget.dart';
import 'package:mnm_uk/res/spacewidgets.dart';
import 'package:mnm_uk/view/account/select.dart';

class SplashWithText extends StatelessWidget {
  SplashWithText({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/splash.png")),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                controllercolor.splashcolorblue,
                Color.fromARGB(255, 255, 255, 255),
                controllercolor.splashcolorblue,
              ])),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 50,
          fontFamily: 'Bobbers',
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            reusablespaceheight(context, 0.35),
            AnimatedTextKit(
              isRepeatingAnimation: false,
              onFinished: () {
                Get.to(WillPopScope(
                    child: Selectsignup(), onWillPop: () async => false));
              },
              animatedTexts: [
                TyperAnimatedText('MNM-UK-BOOKING',
                    speed: Duration(milliseconds: 200),
                    textStyle: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(5, 10),
                            blurRadius: 5),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
