import 'package:flutter/material.dart';
import 'package:mbeah_online/constants.dart';

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
          //TODO: DRAWERIMAGE
          const Spacer(),
          Text(
            "Prince Mbeah Essilfie",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: defaultPadding / 4,
          ),
          const Text(
            'Flutter Developer & Student of\nComputer Science\nML/AI Enthusiast',
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
