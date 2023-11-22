

import 'package:flutter/material.dart';
import 'package:mbeah_online/view_models/responsive.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.01,),
          if(!Responsive.isLargeMobile(context))
            //TODO MENUBUTTON
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.02,),
          if(!Responsive.isLargeMobile(context)) // TODO: socialmediaicon
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