import 'package:get/get.dart';
import 'package:mbeah_online/screens/projects/project.list.dart';

class ProjectController extends GetxController {
  RxList<bool> hovers = List.generate(projectList.length, (_) => false).obs;
  onHover(int index, bool value) {
    hovers[index] = value;
  }
}
