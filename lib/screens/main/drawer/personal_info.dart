

import 'package:flutter/material.dart';
import 'package:mbeah_online/resources/constants.dart';
import 'package:mbeah_online/screens/main/drawer/header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        HeaderInfo(title: 'Contact', text: '+233599239271') ,
        HeaderInfo(title: 'Email', text: 'mbeahessilfieprince@gmail.com'),
        //TODO: update linked in handle
        HeaderInfo(title: 'Linkedin', text: 'text'),
        HeaderInfo(title: 'Github', text: '@Kratosgado'),
        SizedBox(height: defaultPadding,),
        Text('Skills', style: TextStyle(color: Colors.white),),
        SizedBox(height: defaultPadding,)
      ],
    );
  }
}