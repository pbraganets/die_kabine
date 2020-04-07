import 'package:flutter/cupertino.dart';
import 'package:diekabine/presentation/custom_icons.dart';

class CalendarButton extends StatefulWidget {

  @override
  _CalendarButtonState createState() => _CalendarButtonState();
}

class _CalendarButtonState extends State<CalendarButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
        child: Icon(
          CustomIcons.calendar,
          size: 37.00,
          color: Color(0xFF40BFC1),
        ),
        onPressed: () {
        },
      ),
    );
  }
}
