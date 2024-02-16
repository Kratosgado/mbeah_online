
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/constants.dart';


class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Networking, Cyber Security'),
        KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }

}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.knowledge});
  final String knowledge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          SvgPicture.asset('icons/check.svg'),
          SizedBox(width: defaultPadding/2,),
          Text(knowledge),
        ],
      ),
    );
  }
}

