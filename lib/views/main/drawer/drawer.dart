import 'package:flutter/material.dart';
import 'package:mbeah_online/constants.dart';
import 'package:mbeah_online/views/main/drawer/contact_icons.dart';
import 'package:mbeah_online/views/main/drawer/knowledge.dart';
import 'package:mbeah_online/views/main/drawer/my_skills.dart';
import 'package:mbeah_online/views/main/drawer/personal_info.dart';

import 'about.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(  
        child: Column(  
          children: [
            const About(),
            Container(
              color: bgColor,
              child: const Padding(padding: EdgeInsets.all(defaultPadding/2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInfo(),
                  MySkills(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding ,),
                  ContactIcons()
                ],
              ),),
            )
          ],
        ),
      ),
    );
  }
}