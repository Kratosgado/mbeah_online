import 'package:flutter/material.dart';
import 'package:mbeah_online/resources/constants.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkillProgress(percentage: 0.7, title: 'Flutter',imageUrl: 'icons/flutter.png',),
        SkillProgress(percentage: 0.8, title: 'Dart',imageUrl: 'icons/dart.png'),
        SkillProgress(percentage: 0.6, title: 'Firebase',imageUrl: 'icons/firebase.png'),
        SkillProgress(percentage: 0.85, title: 'NestJs',imageUrl: 'icons/dart.png'),
        SkillProgress(percentage: 0.8, title: 'Prisma',imageUrl: 'icons/dart.png'),
        SkillProgress(percentage: 0.85, title: 'TypeOrm',imageUrl: 'icons/dart.png'),
        SkillProgress(percentage: 0.85, title: 'Sqlite',imageUrl: 'icons/dart.png'),
        SkillProgress(percentage: 0.5, title: 'Responsive Design',imageUrl: 'icons/flutter.png'),
        SkillProgress(percentage: 0.9, title: 'Clean Architecture',imageUrl: 'icons/flutter.png'),
        SkillProgress(percentage: 0.5, title: 'Bloc',imageUrl: 'icons/bloc.png'),
        SkillProgress(percentage: 0.3, title: 'ML/AI',imageUrl: 'icons/dart.png'),
      ],);
  }
}



class SkillProgress extends StatelessWidget {
  final double percentage;
  final String title;
  final String? imageUrl;
  const SkillProgress({super.key, required this.percentage, required this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(  
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) => Column(
          children: [
            Row(
              children: [
                Image.asset(imageUrl!, height: 15, width: 15, fit: BoxFit.cover,),
                const SizedBox(width: 5,),
                Text(title, style: const TextStyle(color: Colors.white),),
                const Spacer(),
                Text('${(value*100).toInt()}%'),
              ],
            ),
            const SizedBox(height: defaultPadding/2,),
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
