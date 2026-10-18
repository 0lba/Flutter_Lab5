import 'package:flutter/material.dart';
import 'package:my_app_barakov/roll.dart';
import 'package:my_app_barakov/StyledText.dart';

const start = Alignment.topRight;
const end = Alignment.bottomLeft;

class Gradientt extends StatelessWidget {
  final Color color1;
  final Color color2;
  const Gradientt(
    this.color1,
    this.color2, {
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: start,
          end: end,
        ),
      ),
      child: Center(
        child: Roll()
      ),
    );
  }
}