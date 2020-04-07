import 'package:flutter/material.dart';

class HomePage4 extends StatefulWidget {

  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(color: Color(0xFF3C52A0)),
            ),
          ),
        ],
    );
  }
}
