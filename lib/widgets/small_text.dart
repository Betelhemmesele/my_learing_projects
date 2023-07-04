import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color  color;
  final String text;
  double size;

  var height;


  SmallText({Key? key,  this.color= Colors.black26,
    required this.text,
    this.size=12,
    this.height=1.2,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
