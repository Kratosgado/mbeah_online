import 'package:flutter/material.dart';
import 'package:mbeah_online/portrait_view.dart';

import 'landscape_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          decoration: const BoxDecoration(
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
          ),
          child: isLandscape ? const PortraitView() : const LandscapeView(),
        ),
      ),
    );
  }
}
