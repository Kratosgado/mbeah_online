import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbeah_online/resources/getx_controllers/projects_controller.dart';

import '../../resources/constants.dart';
import '../../resources/responsive.dart';
import '../certifications/certifications.dart';
import 'project_grid.dart';

class ProjectView extends StatelessWidget {
  ProjectView({super.key});
  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'Latest', title: 'Projects'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: ProjectGrid(crossAxisCount: 3,),
                  extraLargeScreen: ProjectGrid(crossAxisCount: 4,),
                  largeMobile: ProjectGrid(crossAxisCount: 1,ratio: 1.8),
                  mobile: ProjectGrid(crossAxisCount: 1,ratio: 1.5),
                  tablet: ProjectGrid(ratio: 1.4,crossAxisCount: 2,)))
        ],
      ),
    );
  }
}
