import 'package:flutter/material.dart';

class HeadLineText extends StatelessWidget {
  final double start;
  final double end;
  const HeadLineText({super.key, required this.start, required this.end});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) => Text(
          'My Personal Portfolio',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Colors.white, fontWeight: FontWeight.w900, height: 0, fontSize: value),
        ),
      ),
    );
  }
}
