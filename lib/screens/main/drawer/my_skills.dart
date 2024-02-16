import 'package:flutter/material.dart';
import 'package:mbeah_online/resources/constants.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Skill(title: 'ML/AI', imageUrl: 'icons/dart.png'),
        Skill(title: 'Flutter', imageUrl: 'icons/flutter.png'),
        Skill(title: 'Dart', imageUrl: 'icons/dart.png'),
        Skill(title: 'Firebase', imageUrl: 'icons/firebase.png'),
        Skill(title: 'NestJs', imageUrl: 'icons/dart.png'),
        Skill(title: 'Prisma', imageUrl: 'icons/dart.png'),
        Skill(title: 'TypeOrm', imageUrl: 'icons/dart.png'),
        Skill(title: 'Sqlite', imageUrl: 'icons/dart.png'),
        Skill(title: 'Responsive Design', imageUrl: 'icons/flutter.png'),
        Skill(title: 'Clean Architecture', imageUrl: 'icons/flutter.png'),
      ],
    );
  }
}

class Skill extends StatelessWidget {
  final String title;
  final String? imageUrl;
  const Skill({super.key, required this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) => Column(
          children: [
            Row(
              children: [
                Image.asset(
                  imageUrl!,
                  height: 15,
                  width: 15,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Text('${(value * 100).toInt()}%'),
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.black,
              color: Colors.amberAccent,
            )
          ],
        ),
      ),
    );
  }
}
