import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mbeah_online/constants.dart';

import 'section_card.dart';

class PortraitView extends StatelessWidget {
  final GoRouterState goRouterState;
  const PortraitView({super.key, required this.goRouterState});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width * 0.9,
      child: CustomPaint(
        painter: BorderPainter(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PortfolioIntro(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SectionCard(
                  title: "Portfolio",
                ),
                const SizedBox(height: 16),
                SectionCard(
                  title: "Services",
                ),
                const SizedBox(height: 32),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SectionCard(
                  title: "Testimonials",
                ),
                const SizedBox(height: 16),
                SectionCard(
                  title: "Contacts",
                ),
                const SizedBox(height: 32),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
