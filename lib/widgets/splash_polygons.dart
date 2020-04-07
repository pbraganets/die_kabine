import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPolygons extends StatelessWidget {
  final containerWidth = 1440.0;
  final containerHeight = 1024.0;

  final polygon1Width = 369.36;
  final polygon1Height = 379.60;
  final polygon1Color = Color(0xFFFFFFFF);
  final polygon1X = 46.0;
  final polygon1Y = -89.00;

  final polygon2Width = 25.95;
  final polygon2Height = 26.67;
  final polygon2Color = Color(0xFFFF8AAD);
  final polygon2X = 877.0;
  final polygon2Y = 252.00;

  final polygon3Width = 174.55;
  final polygon3Height = 193.07;
  final polygon3Color = Color(0xFFB1AB64);
  final polygon3X = 912.00;
  final polygon3Y = 51.00;

  final polygon4Width = 1080.70;
  final polygon4Height = 1110.68;
  final polygon4Color = Color(0xFF091B5B);
  final polygon4X = 951.00;
  final polygon4Y = 393.00;

  final polygon5Width = 370.78;
  final polygon5Height = 410.09;
  final polygon5Color = Color(0xFFA3AED7);
  final polygon5X = 743.00;
  final polygon5Y = 891.00;

  final polygon6Width = 516.52;
  final polygon6Height = 452.69;
  final polygon6Color = Color(0xFF40BFC1);
  final polygon6X = -211.00;
  final polygon6Y = 632.00;

  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: Stack(
          children: <Widget>[
            _createPolygon(
                constraints,
                "assets/svgs/splash/polygon_1.svg",
                polygon1Color,
                polygon1X,
                polygon1Y,
                polygon1Width,
                polygon1Height
            ),
            _createPolygon(
                constraints,
                "assets/svgs/splash/polygon_2.svg",
                polygon2Color,
                polygon2X,
                polygon2Y,
                polygon2Width,
                polygon2Height
            ),
            _createPolygon(
                constraints,
                "assets/svgs/splash/polygon_3.svg",
                polygon3Color,
                polygon3X,
                polygon3Y,
                polygon3Width,
                polygon3Height,
            ),
            _createPolygon(
                constraints,
                "assets/svgs/splash/polygon_4.svg",
                polygon4Color,
                polygon4X,
                polygon4Y,
                polygon4Width,
                polygon4Height
            ),
            _createPolygon(
                constraints,
                "assets/svgs/splash/polygon_5.svg",
                polygon5Color,
                polygon5X,
                polygon5Y,
                polygon5Width,
                polygon5Height
            ),
            _createPolygon(
                constraints,
                "assets/svgs/splash/polygon_6.svg",
                polygon6Color,
                polygon6X,
                polygon6Y,
                polygon6Width,
                polygon6Height
            ),
          ],
        ),
      );
    });
  }

  Widget _createPolygon(BoxConstraints constraints, String assetName, Color color, double x, double y, double width, double height) {
    double scaleX = constraints.maxWidth / containerWidth;
    double scaleY = constraints.maxHeight / containerHeight;
    double scale = (scaleX < scaleY) ? scaleY : scaleX;
    return Positioned(
        left: (constraints.maxWidth / 2.00) - (scale * ((containerWidth / 2.00) - (x + width / 2))) - (width * scale / 2.00),
        top: (constraints.maxHeight / 2.00) - (scale * ((containerHeight / 2.00) - (y + height / 2))) - (height * scale / 2.00),
        width: width * scale,
        height: height * scale,
        child: SvgPicture.asset(
            assetName,
            color: color,
          ),
    );
  }
}
