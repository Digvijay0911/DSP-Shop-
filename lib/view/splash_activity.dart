import 'dart:async';

import 'package:dsp_shop/view/signup_activity.dart';
import 'package:flutter/material.dart';

class Splash_activity extends StatefulWidget {
  const Splash_activity({super.key});

  @override
  State<Splash_activity> createState() => _Splash_activityState();
}

class _Splash_activityState extends State<Splash_activity> {
  // ------------------------------------------------------------------------

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Signup_activity())));
  }

  // =======================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Center(
          child: Image.asset(
            "assets/images/shirt.png",
            color: Colors.white,
            height: 80,
            width: 60,
          ),
        ),
      ),
    );
  }
}
