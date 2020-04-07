import 'package:flutter/cupertino.dart';
import 'package:diekabine/presentation/custom_icons.dart';

class ProfileButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
        child: Icon(
            CustomIcons.account,
            size: 35.00,
            color: Color(0xFF40BFC1),
        ),
        onPressed: () {
        },
      ),
    );
  }
}
