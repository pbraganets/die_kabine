import 'package:flutter/material.dart';
import 'package:diekabine/widgets/menu.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Menu.backgroundColor),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            SizedBox(
                height: 65.00,
                child: Menu()
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
