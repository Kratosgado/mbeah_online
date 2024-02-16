import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'social_media_icon.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
          icon: 'icons/linkedin.svg',
          onTap: () => launchUrl(
            Uri.parse('https://www.linkedin.com/in/prince-mbeah-essilfie-6bb0b5231'),
          ),
        ),
        SocialMediaIcon(
          icon: 'icons/github.svg',
          onTap: () => launchUrl(
            Uri.parse('https://github.com/Kratosgado'),
          ),
        ),
        const SocialMediaIcon(
          icon: 'icons/dribble.svg',
        ),
        const SocialMediaIcon(icon: 'icons/twitter.svg'),
        const SocialMediaIcon(icon: 'icons/linkedin.svg'),
      ],
    );
  }
}
