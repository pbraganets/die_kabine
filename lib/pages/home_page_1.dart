import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/home_page_1.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ),
        ],
    );
  }
}
