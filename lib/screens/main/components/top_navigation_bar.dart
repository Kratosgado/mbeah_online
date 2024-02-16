import 'package:flutter/material.dart';
import 'package:mbeah_online/resources/constants.dart';
import 'package:mbeah_online/screens/intro/components/side_menu_button.dart';
import 'package:mbeah_online/resources/responsive.dart';

import 'connect_button.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child:
                !Responsive.isLargeMobile(context) ? Image.asset('images/triange_icon.png') : MenuButton(onTap:()=> Scaffold.of(context).openDrawer(),)
                ,
          ),
          const Spacer(
            flex: 2
          ),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
            const Spacer(
              flex: 2
            ),
            const ConnectButton(),
            const Spacer(),
        ],
      ),
    );
  }
}
