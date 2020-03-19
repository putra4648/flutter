import 'package:e_commerce/data/component.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Component _component = Component();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _component.bottomNavBar(),
      appBar: _component.appBarItem(),
      body: _component.bodyList(),
    );
  }
}
