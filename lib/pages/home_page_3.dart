import 'package:flutter/material.dart';

class HomePage3 extends StatefulWidget {

  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/home_page_3.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ),
        ],
    );
  }
}
