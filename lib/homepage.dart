import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mbeah_online/constants.dart';
import 'package:mbeah_online/portrait_view.dart';

import 'landscape_view.dart';

class HomePage extends StatelessWidget {
  // final GoRouterState goRouterState;
  final Widget child;
  const HomePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isLandscape = (screenSize.width / screenSize.height < 1) || false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(40),
          decoration: backgroundGradient,
          child: SizedBox(
            child: CustomPaint(
              painter: BorderPainter(),
              child: child
            ),
          ),
        ),
      ),
    );
  }
}
