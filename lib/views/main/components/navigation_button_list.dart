import 'package:flutter/material.dart';
import 'package:mbeah_online/view_models/controller.dart';
import 'package:mbeah_online/view_models/responsive.dart';
import 'package:mbeah_online/views/main/components/navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) => Transform.scale(
        scale: value,
        child: Row(children: [
          NavigationButton(
            onTap: () => controller.animateToPage(0,
                duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
            text: 'Home',
          ),
          if (!Responsive.isLargeMobile(context))
            NavigationButton(
              onTap: () {},
              text: 'About me',
            ),
          NavigationButton(
              onTap: () {
                controller.animateToPage(1,
                    duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
              },
              text: 'Projects'),
          NavigationButton(
              onTap: () {
                controller.animateToPage(2,
                    duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
              },
              text: 'Certifications'),
          NavigationButton(onTap: () {}, text: 'Achievements'),
        ]),
      ),
    );
  }
}
