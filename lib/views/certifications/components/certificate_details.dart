import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbeah_online/view_models/getx_controllers/certification_controller.dart';

class CertificateDetails extends StatelessWidget {
  final controller = Get.put(CertificationController());
  final int index;
  CertificateDetails({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
