import 'package:flutter/material.dart';
import 'package:mbeah_online/constants.dart';
import 'package:mbeah_online/view_models/responsive.dart';

import 'connect_button.dart';

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
                !Responsive.isLargeMobile(context) ? Image.asset('images/triange_icon.png') : null,
          ),
          const Spacer(
            flex: 2
          ),
          if (!Responsive.isLargeMobile(context)) // TODO: NavigationButtonList()
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
