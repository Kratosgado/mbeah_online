import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbeah_online/resources/constants.dart';
import 'package:mbeah_online/screens/certifications/components/certification_grid.dart';
import 'package:mbeah_online/resources/responsive.dart';

import '../../resources/getx_controllers/certification_controller.dart';

class Certifications extends StatelessWidget {
  final controller = Get.put((CertificationController()));
  Certifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(
            prefix: 'Certifications & ',
            title: 'Awards',
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: CertificationGrid(
                    crossAxisCount: 3,
                    ratio: 1.5,
                  ),
                  extraLargeScreen: CertificationGrid(crossAxisCount: 4, ratio: 1.6),
                  largeMobile: CertificationGrid(crossAxisCount: 1, ratio: 1.8),
                  mobile: CertificationGrid(crossAxisCount: 1, ratio: 1.4),
                  tablet: CertificationGrid(
                    ratio: 1.7,
                    crossAxisCount: 2,
                  ))),
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.prefix, required this.title});

  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$prefix ',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
              fontSize: !Responsive.isDesktop(context)
                  ? Responsive.isLargeMobile(context)
                      ? 20
                      : 30
                  : 50,
              fontWeight: FontWeight.bold),
        ),
        kIsWeb && Responsive.isDesktop(context)
            ? ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                      end: Alignment.centerRight,
                      begin: Alignment.centerLeft,
                      colors: [
                        Colors.pink,
                        Colors.cyanAccent,
                      ]).createShader(bounds);
                },
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontSize: !Responsive.isDesktop(context)
                          ? Responsive.isLargeMobile(context)
                              ? 20
                              : 30
                          : 50,
                      fontWeight: FontWeight.bold),
                ),
              )
            : Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontSize: !Responsive.isDesktop(context)
                        ? Responsive.isLargeMobile(context)
                            ? 20
                            : 30
                        : 50,
                    fontWeight: FontWeight.bold),
              ),
      ],
    );
  }
}
