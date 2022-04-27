import 'package:contra/controllers/hire_personnel_controller.dart';
import 'package:get/get.dart';

class HirePersonnelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HirePersonnelController>(()=>HirePersonnelController());
  }
}