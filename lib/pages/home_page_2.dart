import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/home_page_2.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ),
        ],
    );
  }
}
