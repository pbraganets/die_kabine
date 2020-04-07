import 'package:flutter/material.dart';
import 'package:diekabine/widgets/logo.dart';
import 'package:diekabine/widgets/splash_polygons.dart';

class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF3C52A0),
      child: Stack(
        children: <Widget>[
          Center(
            child: FractionallySizedBox(
                heightFactor: 1.00 / 6.00,
                child: Align(
                    alignment: Alignment.center,
                    child: Logo()
                )
            ),
          ),
          Center(
            child: SplashPolygons(),
          ),
        ],
      ),
    );
  }
}
