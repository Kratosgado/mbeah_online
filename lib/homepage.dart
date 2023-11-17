import 'package:flutter/material.dart';
import 'package:mbeah_online/constants.dart';

class HomePage extends StatelessWidget {
  // final GoRouterState goRouterState;
  final Widget child;
  const HomePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isLandscape = (screenSize.width / screenSize.height < 1) || false;
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(40),
          decoration: backgroundGradient,
          child: SizedBox(
            child: CustomPaint(painter: BorderPainter(), child: child),
          ),
        ),
      ),
    );
  }
}
