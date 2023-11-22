import 'package:flutter/material.dart';
import 'package:mbeah_online/view_models/responsive.dart';
import 'package:mbeah_online/views/intro/components/side_menu_button.dart';
import 'package:mbeah_online/views/intro/components/social_media_list.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          if (!Responsive.isLargeMobile(context))
            MenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.02,
          ),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.07,
            ),
          const Expanded(
              //TODO: Introbody()
              child: Text("will be bacck"))
        ],
      ),
    );
  }
}
