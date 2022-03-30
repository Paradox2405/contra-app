import 'package:contra/controllers/joblisting_controller.dart';
import 'package:get/get.dart';

class EnterWorkerDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobListingController>(()=>JobListingController());
  }
}