import 'package:dsp_shop/view/app_pages/bag.dart';
import 'package:dsp_shop/view/app_pages/bag_categories/checkout.dart';
import 'package:dsp_shop/view/app_pages/heart.dart';
import 'package:dsp_shop/view/app_pages/profile.dart';
import 'package:dsp_shop/view/app_pages/search.dart';
import 'package:dsp_shop/view/navigation_activity.dart';
import 'package:dsp_shop/view/splash_activity.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash_activity(),
    );
  }
}
