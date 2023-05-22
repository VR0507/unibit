import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {

  const CustomLabel({
    required this.text,
    this.size = 14,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = '',
    this.alignment = TextAlign.left,
    this.maxLines,
    this.decoration,
    this.fontStyle = FontStyle.normal,
    Key? key,
  }) : super(key: key);

  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;
  final TextAlign alignment;
  final int? maxLines;
  final TextDecoration? decoration;
  final FontStyle fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      maxLines: maxLines,
      overflow: TextOverflow.visible,
      style: TextStyle(fontSize: size,color: color,decoration: decoration,fontStyle: fontStyle,fontFamily: 'Acumin',fontWeight: fontWeight),
    );
  }

}
