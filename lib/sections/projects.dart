import 'package:flutter/material.dart';
import 'package:mbeah_online/constants.dart';

class ProjectSection extends StatelessWidget {
  final List<Project> projects;
  const ProjectSection({required this.projects, super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   padding: const EdgeInsets.all(16.0),
    //   child: carousel,
    // );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: PageView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) => ProjectWidget(project: projects[index]),
      ),
    );
  }
}

class Project {
  final String title;
  final String description;
  final List<String> imageUrls;

  Project(this.title, this.description, this.imageUrls, {required});
}

class ProjectWidget extends StatelessWidget {
  final Project project;
  const ProjectWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          project.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Image.network(project.imageUrls[0]),
        Text(project.description)
      ],
    );
  }
}
