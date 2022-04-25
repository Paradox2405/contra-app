import 'package:get/get.dart';
import 'constructor_info_controller.dart';

class ConstructorInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConstructorInfoController>(()=>ConstructorInfoController());
  }
}