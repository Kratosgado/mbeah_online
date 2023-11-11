import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mbeah_online/constants.dart';
import 'package:mbeah_online/landscape_view.dart';
import 'package:mbeah_online/sections/about.dart';

import 'homepage.dart';
import 'sections/contacts.dart';
import 'sections/portfolio.dart';
import 'sections/services.dart';
import 'sections/testimonial.dart';

void main() {
  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Mbeah's Portfolio",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(),
        primaryColor: Colors.indigo,
        secondaryHeaderColor: Colors.lightBlue,
      ),
      routerConfig: router,
      // routerDelegate: router.routerDelegate,
      // routeInformationParser: router.routeInformationParser,
    );
  }
}

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: shellNavigatorKey,
      builder: (context, state, child) => HomePage(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const LandscapeView(),
          routes: [
            buildSection('testimonials', const TestimonialsSection()),
            buildSection('portfolio', const PortfolioSection()),
            buildSection('services', const ServicesSection()),
            buildSection('contacts', const ContactSection()),
            buildSection('about', const AboutSection())
          ],
        )
      ],
    ),
  ],
);
