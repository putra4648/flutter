import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomIcons {
  iconsLabel() {
    return Container(
      height: 80,
      color: Colors.blue,
      child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.5,
            crossAxisSpacing: 1,
            crossAxisCount: 4,
          ),
          itemCount: _listIcons.length,
          itemBuilder: (context, int index) {
            final icon = _listIcons[index];
            return GridTile(
              child: icon,
              footer: Center(
                child: Text(
                  '${_iconsName[index]}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            );
          }),
    );
  }

  List<Widget> _listIcons = [
    IconButton(
      onPressed: () {},
      iconSize: 30,
      icon: Icon(
        MdiIcons.foodForkDrink,
      ),
    ),
    IconButton(
      onPressed: () {},
      iconSize: 30,
      icon: Icon(MdiIcons.barcodeScan),
    ),
    IconButton(
      onPressed: () {},
      iconSize: 30,
      icon: Icon(Icons.payment),
    ),
    IconButton(
      onPressed: () {},
      iconSize: 30,
      icon: Icon(Icons.person),
    )
  ];
  List<String> _iconsName = ['Food & Drink', 'Scan', 'Payment', 'User'];
}
