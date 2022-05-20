import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../routes/routes.dart';


class LoginController extends GetxController {

  final _auth = FirebaseAuth.instance;
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  void onInit() {
    redirect();
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

  login() async {
    if (password.text.length >= 6) {
      Get.defaultDialog(
          title: "Logging in...", content: const CircularProgressIndicator());
      try {
        final user = await _auth.signInWithEmailAndPassword(
            email: email.text, password: password.text);
        if (user != null) {
          Get.back();
          Get.offAndToNamed(Routes.tandc);
        }
      } catch (e) {
        print(e);
        Get.snackbar("Error", "Login Error: " + e.toString(),backgroundColor: Colors.white);
        Get.back();
      }
    } else {
      Get.snackbar("Error", "Passwords must be at least 6 characters long",
          duration: const Duration(seconds: 5),backgroundColor: Colors.white);

    }
  }
  redirect() async{
    if (await FirebaseAuth.instance.currentUser?.uid != null) {
      Get.toNamed(Routes.welcome);
    }}
}