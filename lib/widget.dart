import 'package:flutter/material.dart';

import 'constants/styleScheme.dart';

class CustomeAppBar extends StatefulWidget {
  @override
  _CustomeAppBarState createState() => _CustomeAppBarState();
}

class _CustomeAppBarState extends State<CustomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0,
      leading: Container(
        margin: EdgeInsets.only(bottom: 5, right: 5),
        height: 50,
        width: 50,
        decoration: containerStyle("all"),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(bottom: 5, right: 5),
          height: 50,
          width: 50,
          decoration: containerStyle("all"),
          child: Center(
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 5, right: 5),
          height: 50,
          width: 50,
          decoration: containerStyle("all"),
          child: Center(
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
