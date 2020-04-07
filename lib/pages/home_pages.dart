import 'package:flutter/material.dart';
import 'package:diekabine/pages/home_page_1.dart';
import 'package:diekabine/pages/home_page_2.dart';
import 'package:diekabine/pages/home_page_3.dart';
import 'package:diekabine/pages/home_page_4.dart';

class HomePages extends StatefulWidget {

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        HomePage1(),
        HomePage2(),
        HomePage3(),
        HomePage4(),
      ],
    );
  }
}
