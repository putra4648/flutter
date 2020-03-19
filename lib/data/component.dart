import 'package:e_commerce/data/best_deal.dart';
import 'package:e_commerce/data/custom_icons.dart';
import 'package:flutter/material.dart';

class Component {
  CustomIcons _icons = CustomIcons();
  Deal _deal = Deal();

  final List<BottomNavigationBarItem> _listNavBar = [
    BottomNavigationBarItem(
      icon: IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
      ),
      title: SizedBox.shrink(),
    ),
    BottomNavigationBarItem(
      icon: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu, color: Colors.white),
      ),
      title: SizedBox.shrink(),
    ),
  ];

  bodyList() {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        _deal.hotelsPreview(),
        _icons.iconsLabel(),
        _deal.hotelsLabel(),
        _deal.hotelsInfo(),
        _deal.cafesLabel(),
        _deal.cafesInfo()
      ],
    );
  }

  appBarItem() {
    return AppBar(
      leading: _leadingIcons(),
      backgroundColor: Colors.white,
      elevation: 3,
      title: _textForm(),
      actions: _trailingIcons(),
    );
  }

  bottomNavBar() {
    return BottomNavigationBar(
      items: _listNavBar,
      backgroundColor: Colors.blue,
      iconSize: 22,
    );
  }

  _textForm() {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(211, 211, 211, 1),
        hintText: 'Search Hotel',
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  _leadingIcons() {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(
        'images/qr.ico',
        color: Colors.blue,
      ),
    );
  }

  _trailingIcons() {
    return <Widget>[
      Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.blue,
            ),
          )
        ],
      )
    ];
  }
}
