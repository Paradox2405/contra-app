import 'package:contra/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class PostProfileController extends GetxController {
  String dropdownValue = 'Worker';

  @override
  void onInit() {
    print('>>> WController init');
    super.onInit();
  }

  @override
  void onReady() {
    print('>>> WController ready');
    super.onReady();
  }

  @override
  void onClose() {
    print('>>> WController close');
    super.onClose();
  }
  
changedVal(val){
  dropdownValue = val;
  update();
}
}
