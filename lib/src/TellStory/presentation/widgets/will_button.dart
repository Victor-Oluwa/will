import 'package:flutter/material.dart';
import 'package:will/core/widgets/will_text.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.text,
    required this.onTap,
    this.width= 0.80,
    this.height =0.10,
    this.fontSize = 0.06,
  });

  final double screenHeight;
  final double screenWidth;
  final String text;
  final VoidCallback onTap;
  final double height;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: screenHeight * height,
        width: screenWidth * width,
        child: Card(
          color: Colors.blueGrey.shade800,
          elevation: 0,
          margin: EdgeInsets.zero,
          child: Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:screenWidth*0.04,),
              child: WillText(
                data: text,
                textAlign: TextAlign.center,
                fontSize: screenWidth *fontSize,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
