import 'package:flutter/material.dart';

class WelcomeAnimation {
  final AnimationController controller;
  late Animation<Offset> slideFromLeft;
  late Animation<Offset> slideFromRight;
  late Animation<Offset> slideFromTop;
  late Animation<Offset> slideFromBottom;
  late Animation<double> fadeIn;
  late Animation<double> rotate;
  late Animation<double> pop;

  WelcomeAnimation(this.controller) {
    // Fade in animation
    fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeIn));

    // Pop (Scale) animation (scales from 0 to full size)
    pop = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.bounceOut));
  }
}