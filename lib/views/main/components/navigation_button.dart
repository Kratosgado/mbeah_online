import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const NavigationButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTap, child: Text(  
      text,
      style: Theme.of(context).textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.bold, color: Colors.white
      ),
    ));
  }
}
