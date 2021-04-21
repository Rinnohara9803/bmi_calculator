import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  final Color colour;
  final Function onpress;

  ReusableCard({this.cardChild, this.colour, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: this.colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
