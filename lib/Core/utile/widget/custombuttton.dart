import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.name,
      required this.width,
      required this.height,
      required this.radius,
      required this.color,
      required this.onpress,
      required this.Textcolor,
      required this.SizeText});

  final String name;
  final Function() onpress;
  final double width;
  final double height;
  final double radius;
  final Color color;
  final Color Textcolor;
  final double SizeText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(radius)),
        width: width,
        height: height,
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: Textcolor, fontSize: SizeText),
          ),
        ),
      ),
    );
  }
}
