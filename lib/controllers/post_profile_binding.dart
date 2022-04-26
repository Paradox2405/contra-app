import 'package:contra/controllers/post_profile_controller.dart';
import 'package:contra/controllers/welcome_controller.dart';
import 'package:get/get.dart';

class PostProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostProfileController>(()=>PostProfileController());
  }
}