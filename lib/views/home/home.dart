import 'package:flutter/material.dart';

import '../intro/introduction.dart';
import '../main/main_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainView(pages: [
      Introduction(),
      // ProjectView(),
      // Certifications(),
    ]);
  }
}
