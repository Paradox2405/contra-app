import 'package:contra/controllers/selection_category_controller.dart';
import 'package:get/get.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectionCategoryController>(()=>SelectionCategoryController());
  }
}