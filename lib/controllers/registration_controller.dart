import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';




class RegistrationController extends GetxController {
  final  email=TextEditingController();
  final  password=TextEditingController();
  final  repeatPw=TextEditingController();
  final _auth = FirebaseAuth.instance;
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

  registerUser() async {

    Get.defaultDialog(
        barrierDismissible: false,
        title: "Registering...",
        content: const CircularProgressIndicator());


      try {
        await _auth.createUserWithEmailAndPassword(
            email: email.text, password: password.text.trim());

        if (_auth.currentUser.uid.isNotEmpty){
          Get.back();
          Get.offAndToNamed(Routes.login);
        }else {
          Get.snackbar("Error", "Cant Register");
        }

      } catch (e) {
        Get.snackbar("Error", "Registration Error:" + e.toString());
        Get.back();
      }
    }






  checkPw() {
    if (password.text != repeatPw.text) {
     password.text = "";
      repeatPw.text = "";
      Get.snackbar("Error", "Passwords don't match",
          backgroundColor: Colors.white);
    } else if (password.text.length < 6) {
      password.text = "";
      repeatPw.text = "";
      Get.snackbar(
        "Error",
        "Password must be 6 or more characters",
        backgroundColor: Colors.white,
        duration: const Duration(seconds: 5),
      );
    } else if (email.text.isEmpty) {
      Get.snackbar("Error", "Email cannot be empty",
          backgroundColor: Colors.white);
    } else {
      registerUser();
      update();
    }
  }
}


