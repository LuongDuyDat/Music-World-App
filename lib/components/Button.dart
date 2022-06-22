import 'package:flutter/material.dart';

import '../globals.dart';
import '../res/colors.dart';
import '../res/text_style.dart';

class Button extends StatelessWidget {
  final String text;
  final double radius;
  final Function? onPressed;

  const Button ({
    Key? key,
    required this.text,
    required this.radius,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size.fromHeight(screenHeight * 0.0566),
        primary: const Color(0xFF20242F),
        backgroundColor: primaryColor,
        textStyle: bodyMedium1,
      ),
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: Text(text),
    );
  }
}