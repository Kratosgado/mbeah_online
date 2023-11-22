import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbeah_online/constants.dart';

class SocialMediaIcon extends StatelessWidget {
  final String icon;
  final VoidCallback? onTap;
  const SocialMediaIcon({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.4),
        child: SvgPicture.asset(
          icon,
          color: Colors.white,
          height: 15,
          width: 15,
        ),
      ),
    );
  }
}
