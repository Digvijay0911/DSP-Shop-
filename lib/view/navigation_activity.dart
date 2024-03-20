import 'package:dsp_shop/view/app_pages/bag.dart';
import 'package:dsp_shop/view/app_pages/heart.dart';
import 'package:dsp_shop/view/app_pages/home.dart';
import 'package:dsp_shop/view/app_pages/profile.dart';
import 'package:dsp_shop/view/app_pages/search.dart';

import 'package:flutter/material.dart';

class Navigation_activity extends StatefulWidget {
  const Navigation_activity({super.key});

  @override
  State<Navigation_activity> createState() => _Navigation_activityState();
}

class _Navigation_activityState extends State<Navigation_activity> {
  // ---------------------------------------------------------------------------

  int currentIndexValue = 0;

  List screenList = [
    const Home(),
    const Search(),
    const Heart(),
    const Bag(),
    const Profile(),
  ];

  // ===========================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xff6F6F6F),
        onTap: (index) {
          setState(() {
            currentIndexValue = index;
          });
        },
        currentIndex: currentIndexValue,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 35,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
                size: 35,
              ),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_rounded,
                size: 35,
              ),
              label: "",
              backgroundColor: Colors.white)
        ],
      ),
    );
  }
}
