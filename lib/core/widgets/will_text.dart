import 'package:flutter/material.dart';

class WillText extends StatelessWidget {
  const WillText(
      {super.key,
        required this.data,
        this.textAlign,
        this.color,
        this.fontSize,
        this.wordSpacing,
        this.letterSpacing,
        this.fontStyle});

  final String data;
  final TextAlign? textAlign;
  final Color? color;
  final double? fontSize;
  final double? wordSpacing;
  final double? letterSpacing;
  final FontStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'BalooBhai',
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
      ),
    );
  }
}
