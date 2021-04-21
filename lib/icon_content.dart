import 'package:flutter/material.dart';
import 'constants.dart';

class ForIcon extends StatelessWidget {
  final String textName;
  final IconData iconName;

  ForIcon({this.textName, this.iconName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.iconName,
          size: 80.0,
        ),
        SizedBox(height: 10.0),
        Text(
          this.textName,
          style: ktextStyleChange,
        )
      ],
    );
  }
}
