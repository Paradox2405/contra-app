import 'package:contra/controllers/registration_controller.dart';
import 'package:get/get.dart';


class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>RegistrationController());
  }
}