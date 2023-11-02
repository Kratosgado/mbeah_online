import 'package:flutter/material.dart';
import 'package:mbeah_online/constants.dart';

import 'section_card.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      // width: screenSize.width * 0.9,
      child: CustomPaint(
        painter: BorderPainter(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const PortfolioIntro(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SectionCard(
                  title: "Portfolio",
                ),
                const SizedBox(height: 100),
                SectionCard(
                  title: "Services",
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SectionCard(
                  title: "Testimonials",
                ),
                const SizedBox(height: 100),
                SectionCard(
                  title: "Contacts",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
