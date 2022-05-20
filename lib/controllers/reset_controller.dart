import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ResetController extends GetxController {
final email =TextEditingController();
final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

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

  reset() async{
    await firebaseAuth.sendPasswordResetEmail(email: email.text.trim()).then((value) => next());
  }
next(){
  Get.snackbar("Successful", "Reset email has been sent to your inbox!",
      duration: const Duration(seconds: 5),backgroundColor: Colors.white);
  Get.back();
}
}