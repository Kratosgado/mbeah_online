import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
    );
  }
}

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: <RouteBase>[
        GoRoute(
          path: 'testimonials',
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            transitionDuration: const Duration(seconds: 1),
            child: const TestimonialsSection(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            ),
          ),
        ),
        GoRoute(
          path: 'portfolio',
          builder: (context, state) => const PortfolioSection(),
        ),
        GoRoute(
          path: 'services',
          builder: (context, state) => const ServicesSection(),
        ),
        GoRoute(
          path: 'contacts',
          builder: (context, state) => const ContactSection(),
        ),
        GoRoute(
          path: 'about',
          builder: (context, state) => const AboutSection(),
        ),
      ],
    ),
  ],
);
