import 'package:flutter/material.dart';
import 'package:mbeah_online/resources/controller.dart';
import 'package:mbeah_online/screens/main/components/navigation_button.dart';
import 'package:mbeah_online/resources/responsive.dart';

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
            onTap: () => pageController.animateToPage(0,
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
                pageController.animateToPage(1,
                    duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
              },
              text: 'Projects'),
          NavigationButton(
              onTap: () {
                pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
              },
              text: 'Certifications'),
          // NavigationButton(onTap: () {}, text: 'Achievements'),
        ]),
      ),
    );
  }
}
