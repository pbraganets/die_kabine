import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  final containerWidth = 720.0;
  final containerHeight = 283.0;
  final polygonWidth = 274.54;
  final polygonHeight = 283.0;
  final titleY = 86.8;
  final titleWidth = 633.0;
  final titleHeight = 155.0;
  final kX = 215.77;
  final kY = 92.27;
  final kWidth = 80.95;
  final kHeight = 93.30;
  final polygonColor = Color(0xFFFF6E5E);
  final textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: containerWidth / containerHeight,
      child: Container(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: AspectRatio(
                aspectRatio: polygonWidth / polygonHeight,
                child: SvgPicture.asset(
                  "assets/svgs/logo/logo_polygon.svg",
                  color: polygonColor,
                ),
              ),
            ),
            Align(
              // (W/2 - w/2) * x = centerX, (H/2 - h/2) * y = centerY
              alignment: Alignment(
                  -1.00,
                  (titleY + (titleHeight/2) - (containerHeight/2)) / ((containerHeight/2) - (titleHeight/2))
              ),
              child: FractionallySizedBox(
                widthFactor: titleWidth / containerWidth,
                heightFactor: titleHeight / containerHeight,
                child: AspectRatio(
                  aspectRatio: titleWidth / titleHeight,
                  child: SvgPicture.asset(
                    "assets/svgs/logo/logo_title.svg",
                    color: textColor,
                  ),
                ),
              ),
            ),
            Align(
              // (W/2 - w/2) * x = centerX, (H/2 - h/2) * y = centerY
              alignment: Alignment(
                  (kX + (kWidth/2) - (containerWidth/2)) / ((containerWidth/2) - (kWidth/2)),
                  (kY + (kHeight/2) - (containerHeight/2)) / ((containerHeight/2) - (kHeight/2))
              ),
              child: FractionallySizedBox(
                widthFactor: kWidth / containerWidth,
                heightFactor: kHeight / containerHeight,
                child: AspectRatio(
                  aspectRatio: kWidth / kHeight,
                  child: SvgPicture.asset(
                    "assets/svgs/logo/logo_k.svg",
                    color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
