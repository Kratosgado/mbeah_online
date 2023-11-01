import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbeah_online/constants.dart';

class SectionCard extends ConsumerWidget {
  final isHoveredProvider = StateProvider((ref) => false);
  final String title;
  SectionCard({super.key, required this.title});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHovered = ref.watch(isHoveredProvider);
    Size screenSize = MediaQuery.of(context).size;

    return MouseRegion(
      onEnter: (_) => ref.read(isHoveredProvider.notifier).state = true,
      onExit: (_) => ref.read(isHoveredProvider.notifier).state = false,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100), // Animation duration
        curve: Curves.easeInOut, // Animation curve
        width: isHovered ? 300 : 200, // Change width on hover
        height: isHovered ? 80 : 60, // Change height on hover
        decoration: BoxDecoration(
          gradient: widgetGradient,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50)), // Add border radius on hover
        ),
        child: Center(
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 100), // Text animation duration
            style: TextStyle(
              color: isHovered ? Colors.lightBlue : Colors.grey, // Change text color on hover
              fontSize: isHovered ? 20.0 : 18.0, // Change text size on hover
            ),
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
