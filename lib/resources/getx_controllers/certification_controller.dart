import 'package:get/get.dart';
import 'package:mbeah_online/screens/certifications/certification.list.dart';

class CertificationController extends GetxController {
  RxList<bool> hovers = List.generate(certificateList.length, (_) => false).obs;
  onHover(int index, bool value) {
    hovers[index] = value;
  }
}
