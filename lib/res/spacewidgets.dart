import 'package:flutter/material.dart';

SizedBox reusablespaceheight(BuildContext context, double height) {
  return SizedBox(height: MediaQuery.of(context).size.height * height);
}

SizedBox reusablespacewidth(BuildContext context, double widht, Widget widget) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * widht,
    child: widget,
  );
}

SizedBox reusablespaceboth(BuildContext context, double height, double widht) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * height,
    width: MediaQuery.of(context).size.width * widht,
  );
}
