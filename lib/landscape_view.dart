import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mbeah_online/constants.dart';

import 'section_card.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const PortfolioIntro(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SectionCard(
                  title: "Projects",
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
      ],
    );
  }
}
