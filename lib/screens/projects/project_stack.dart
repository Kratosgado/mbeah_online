import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/constants.dart';
import '../../data/models/project_model.dart';
import '../../resources/getx_controllers/projects_controller.dart';
import '../../resources/image_viewer.dart';
import 'project_details.dart';

class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        projectList[index].image != null ? ImageViewer(context,projectList[index].image!): Get.dialog(const Text("No Image for this project"));
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: ProjectDetail(index: index,),
      ),
    );
  }
}