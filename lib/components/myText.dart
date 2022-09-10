import 'package:flutter/material.dart';

import '../animation/fade_animation.dart';

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    required this.text,
    required this.size,
    required this.fontWeight,
    required this.color,
    required this.delay,
  }) : super(key: key);

  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final double delay;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
                    delay: delay,
      child: Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
      ),
    );
  }
}
