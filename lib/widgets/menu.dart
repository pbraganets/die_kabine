import 'package:flutter/material.dart';
import 'package:diekabine/widgets/calendar_button.dart';
import 'package:diekabine/widgets/profile_button.dart';

class Menu extends StatelessWidget {
  static const backgroundColor = Color(0xFF03134C);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: backgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 14.00, left: 18.00, bottom: 17.00),
            child: Image(
                image: AssetImage(
                    'assets/images/logo.png'
                ),
              width: 103.31,
              height: 34.00,
            ),
          ),
          Row(
            children: <Widget>[
              CalendarButton(),
              ProfileButton(),
            ],
          )
        ],
      ),
    );
  }
}