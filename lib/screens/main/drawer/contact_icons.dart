import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbeah_online/resources/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIcons extends StatelessWidget {
  const ContactIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(  
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(  
        children: [
          const Spacer(),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://www.linkedin.com/in/prince-mbeah-essilfie-6bb0b5231'));}, icon: SvgPicture.asset('icons/linkedin.svg')),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://github.com/Kratosgado'));}, icon: SvgPicture.asset('icons/github.svg')),
          const Spacer(),
        ],
      ),
    );
  }
}