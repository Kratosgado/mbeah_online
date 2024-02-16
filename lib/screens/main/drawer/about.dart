import 'package:flutter/material.dart';
import 'package:mbeah_online/resources/constants.dart';
import 'package:mbeah_online/screens/main/drawer/drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(children: [
          const Spacer(
            flex: 2,
          ),
          const DrawerImage(),
          const Spacer(),
          Text(
            "Prince Mbeah Essilfie",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: defaultPadding / 4,
          ),
          const Text(
            'Software Developer & Student of\nComputer Science\nML/AI Enthusiast',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
          ),
          const Spacer(
            flex: 2,
          )
        ]),
      ),
    );
  }
}
