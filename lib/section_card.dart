import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mbeah_online/constants.dart';

class SectionCard extends ConsumerWidget {
  final String title;
  SectionCard({super.key, required this.title});

  final isHoveredProvider = StateProvider((ref) => false);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHovered = ref.watch(isHoveredProvider);
    // Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => context.go('/${title.toLowerCase()}'),
      child: MouseRegion(
        onEnter: (_) => ref.read(isHoveredProvider.notifier).state = true,
        onExit: (_) => ref.read(isHoveredProvider.notifier).state = false,
        child: Card(
          elevation: 30,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300), // Animation duration
            curve: Curves.easeInOut, // Animation curve
            width: isHovered ? 300 : 200, // Change width on hover
            height: isHovered ? 80 : 60, // Change height on hover
            decoration: const BoxDecoration(
              gradient: widgetGradient,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50)), // Add border radius on hover
            ),
            child: Center(
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  color: isHovered ? Colors.lightBlue : Colors.grey, // Change text color on hover
                  fontSize: isHovered ? 20.0 : 18.0, // Change text size on hover
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    WavyAnimatedText(
                      title,
                      speed: const Duration(milliseconds: 300),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
