import 'package:flutter/material.dart';
import 'package:mbeah_online/view_models/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  final double start;
  final double end;
  const AnimatedDescriptionText({super.key, required this.start, required this.end});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) => Text(
              "I'm capable of creating mobile apps, handling ${Responsive.isLargeMobile(context) ? '\n' : ''}every step from ${!Responsive.isLargeMobile(context) ? '\n' : ''}concept to deployment.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
            ));
  }
}
