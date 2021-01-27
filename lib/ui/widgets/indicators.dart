import 'package:flutter/material.dart';

class Indicators extends StatelessWidget {
  final Color color;

  const Indicators({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
