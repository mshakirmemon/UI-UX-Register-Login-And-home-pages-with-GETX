import 'package:flutter/material.dart';
import 'package:mnm_uk/res/all%20texts.dart';

class CustomerBooking extends StatelessWidget {
  const CustomerBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset("assets/splash.png"),
        title: reusabletext("Customer Booking", 25, true),
        centerTitle: true,
      ),
      body: Center(child: reusabletext("Customer Booking will show here", 18, true)),
    );
  }
}
