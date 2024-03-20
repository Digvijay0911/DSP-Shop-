import 'package:dsp_shop/view/app_pages/home_categories/kids.dart';
import 'package:dsp_shop/view/app_pages/home_categories/men.dart';
import 'package:dsp_shop/view/app_pages/home_categories/women.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ---------------------------------------------------------------------------
  final List<Widget> _tabs = [
    const Men(),
    const Women(),
    const Kids(),
  ];
  // ===========================================================================
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '    Shop',
            style: TextStyle(
                fontSize: 25, letterSpacing: 1, fontWeight: FontWeight.w800),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            unselectedLabelColor: Color(0xff6F6F6F),
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 18),
            tabs: [
              Tab(
                text: 'Men',
              ),
              Tab(text: 'Women'),
              Tab(text: 'Kids'),
            ],
          ),
        ),
        body: Material(
          elevation: 10,
          child: TabBarView(
            children: _tabs,
          ),
        ),
      ),
    );
  }
}
