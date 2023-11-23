import 'package:flutter/material.dart';
import 'package:mbeah_online/constants.dart';

class HeaderInfo extends StatelessWidget {
  final String title;
  final String text;
  const HeaderInfo({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(text),
        ],
      ),
    );
  }
}
