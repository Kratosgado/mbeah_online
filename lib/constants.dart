import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mbeah_online/section_card.dart';

const widgetGradient = LinearGradient(
  colors: [
    Colors.lightBlue,
    Colors.black38,
    Colors.black12,
    Colors.blueAccent,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const backgroundGradient = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Colors.lightBlue,
      Colors.black38,
      Colors.black45,
      Colors.black12,
      Colors.blueAccent,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);

// Profile Intro Texts
class PortfolioIntro extends StatelessWidget {
  const PortfolioIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 24.0,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Essilfie Prince Mbeah',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const VerticalDivider(),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "A passionate full-stack developer and Machine Learning \n"
                    "and AI enthusiast, currently deepening my knowledge in \n"
                    "Computer Science. I thrive on challenges, constantly seeking \n"
                    "innovative solutions to solve complex problems. With a strong \n"
                    "foundation in both front-end and back-end development, I strive \n"
                    "to deliver efficient and robust applications.",
                    textStyle: const TextStyle(
                      fontSize: 20.0,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                ],
                isRepeatingAnimation: false,
              ),
            ],
          ),
          SectionCard(title: "About")
        ],
      ),
    );
  }
}

// Background Corner Border
class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height; // for convenient shortage
    double sw = size.width; // for convenient shortage
    double cornerSide = sh * 0.1; // desirable value for corners side

    Paint paint = Paint()
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = Colors.white;

    Path path = Path()
      ..moveTo(cornerSide, 0)
      ..quadraticBezierTo(0, 0, 0, cornerSide)
      ..moveTo(0, sh - cornerSide)
      ..quadraticBezierTo(0, sh, cornerSide, sh)
      ..moveTo(sw - cornerSide, sh)
      ..quadraticBezierTo(sw, sh, sw, sh - cornerSide)
      ..moveTo(sw, cornerSide)
      ..quadraticBezierTo(sw, 0, sw - cornerSide, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainter oldDelegate) => false;
}

// Section Navigation builder
GoRoute buildSection(String sectionName, Widget sectionWidget) => GoRoute(
      path: sectionName,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        transitionDuration: const Duration(seconds: 1),
        child: sectionWidget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        ),
      ),
    );

final carousel = CarouselSlider(
  options: CarouselOptions(
    height: 500,
    autoPlay: true,
  ),
  items: [1, 2, 3, 4, 5]
      .map((e) => Builder(
            builder: (context) => Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: backgroundGradient,
              child: Center(
                child: Text(
                  "text $e,",
                  style: const TextStyle(fontSize: 100),
                ),
              ),
            ),
          ))
      .toList(),
);

final appbar = AppBar(
  title: const Text('My Portfolio'),
  centerTitle: true,
  backgroundColor: Colors.black,
  actions: [
    IconButton(
      icon: const Icon(FontAwesomeIcons.linkedinIn),
      onPressed: () {
        // Navigate to LinkedIn
      },
    ),
    IconButton(
      icon: const Icon(FontAwesomeIcons.github),
      onPressed: () {
        // Navigate to GitHub
      },
    ),
    IconButton(
      icon: const Icon(FontAwesomeIcons.twitter),
      onPressed: () {
        // Navigate to Twitter
      },
    ),
    IconButton(
      icon: const Icon(Icons.code),
      onPressed: () {
        // Navigate to coding projects
      },
    ),
    IconButton(
      icon: const Icon(Icons.school),
      onPressed: () {
        // Navigate to education
      },
    ),
    IconButton(
      icon: const Icon(Icons.work),
      onPressed: () {
        // Navigate to work experience
      },
    ),
  ],
);
