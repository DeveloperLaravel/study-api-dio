// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CoustemText extends StatelessWidget {
  const CoustemText({
    Key? key,
    required this.text,
    this.size = 16,
    this.max = 1,
    this.height = 1,
    this.font = 'TenorSans',
    this.weight = FontWeight.normal,
    this.color = Colors.white,
  }) : super(key: key);
  final String text;
  final double size;
  final String font;
  final FontWeight weight;
  final Color color;
  final double height;
  final int max;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: max,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.normal,
        color: color,
        fontFamily: font,
        height: height,
      ),
    );
  }
}
