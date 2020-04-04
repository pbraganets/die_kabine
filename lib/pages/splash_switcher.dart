import 'package:flutter/material.dart';
import 'dart:async';

class SplashSwitcher extends StatefulWidget {
  SplashSwitcher({Key key,
    @required this.duration,
    @required this.splash,
    @required this.navigateAfter}) : super(key: key);


  final int duration;
  final Widget splash;
  final Widget navigateAfter;

  @override
  _SplashSwitcherState createState() => _SplashSwitcherState(mainWidget: splash);
}

class _SplashSwitcherState extends State<SplashSwitcher> {
  _SplashSwitcherState({@required this.mainWidget});

  Widget mainWidget;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: widget.duration), () {
          setState(() {
            mainWidget = widget.navigateAfter;
          });
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: mainWidget,
    );
  }
}