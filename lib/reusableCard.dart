import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  final Color colour;

  ReusableCard({this.cardChild, this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: this.colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
