import 'package:flutter/material.dart';
import 'package:mbeah_online/constants.dart';

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
                  //TODO: PersonalInto
                  //TODO: MYSKILLS
                  //TODO: KNOWLEDGES
                  Divider(),
                  SizedBox(height: defaultPadding ,),
                  //TODO: CONTANCT ICON
                ],
              ),),
            )
          ],
        ),
      ),
    );
  }
}