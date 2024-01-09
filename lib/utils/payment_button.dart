import 'package:flutter/material.dart';
class Paymentbutton extends StatelessWidget {
  const Paymentbutton({
    super.key,
    required this.buttonColor,
    required this.leftmargin,
    required this.rightmargin,
    required this.buttonTextColor,
    required this.buttonText,
  });
  final String buttonText;
  final Color buttonColor;
  final double leftmargin;
  final double rightmargin;
  final Color buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(bottom: 20, left: leftmargin, right: rightmargin),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(22),
        ),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
