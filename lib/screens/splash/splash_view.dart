import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mbeah_online/resources/constants.dart';
import 'package:mbeah_online/screens/home/home.dart';
import 'package:mbeah_online/screens/intro/components/animated_texts.dart';
import 'package:mbeah_online/screens/splash/loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>  const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 100, height: 100),
            SizedBox(height: defaultPadding),
            LoadingText(),
          ],
        ),
      ),
    );
  }
}
