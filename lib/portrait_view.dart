import 'package:flutter/material.dart';

import 'section_card.dart';

class PortraitView extends StatelessWidget {
  const PortraitView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Center(
        child: Container(
          width: screenSize.width * 0.9,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("Welcome To Mbeah's Portfolio"),
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
