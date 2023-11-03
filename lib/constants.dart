import 'package:flutter/material.dart';

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

class PortfolioIntro extends StatelessWidget {
  const PortfolioIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.grey,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Welcome to\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'Mbeah Online',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.blue,
              ),
            ),
            TextSpan(text: '\nYour Source for Amazing Web Solutions'),
          ],
        ),
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height; // for convenient shortage
    double sw = size.width; // for convenient shortage
    double cornerSide = sh * 0.1; // desirable value for corners side

    Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

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
