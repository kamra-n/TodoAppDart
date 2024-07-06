import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final double height;
  final double width;
  final Color buttonColor;
  final Color buttonTextColor;
  final String buttonText;
  final VoidCallback onPressed;
  final double padding;
  const RoundedButton(
      {super.key,
      required this.height,
      required this.width,
      required this.buttonColor,
      required this.buttonText,
      required this.onPressed,
      required this.buttonTextColor,
      required this.padding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(15.0)),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(color: buttonTextColor),
          ),
        ),
      ),
    );
  }
}
