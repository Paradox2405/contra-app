import 'package:contra/controllers/joblisting_controller.dart';
import 'package:get/get.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobListingController>(()=>JobListingController());
  }
}