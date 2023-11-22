import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:mbeah_online/constants.dart';
import 'package:mbeah_online/view_models/controller.dart';
import 'package:mbeah_online/view_models/responsive.dart';

class MainView extends StatelessWidget {
  final List<Widget> pages;

  const MainView({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: custom drawer
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(
                    height: defaultPadding * 2,
                  )
                : const SizedBox(
                    height: defaultPadding / 2,
                  ),
            const SizedBox(
              height: 80,
              //TODO: Topnavigationbar
            ),
            if(Responsive.isLargeMobile(context))
              const Row(
                children: [
                  Spacer(),
                  // TODO: navigation button list,
                  Spacer(),
                ],
              ),
            Expanded(
              flex: 9,
              child: PageView(  
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [
                  ...pages
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
