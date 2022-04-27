import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/post_profile_model.dart';
import '../routes/routes.dart';

class PostProfileController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String dropdownValue = 'Worker';
  PostProfile saveProfile = PostProfile();
  final nic = TextEditingController();
  final name = TextEditingController();
  final number = TextEditingController();
  final skills = TextEditingController();
  final exp = TextEditingController();
  final rate = TextEditingController();
  int indexVal;

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

  checkData() {
    nic.text == "" ||
            name.text == "" ||
            number.text == "" ||
            skills.text == "" ||
            exp.text == "" ||
            rate.text == ""
        ? Get.snackbar("Error", "Please fill all fields with proper data",backgroundColor: Colors.redAccent)
        : onSubmit();
  }

  onSubmit() async {
    Get.defaultDialog(
        barrierDismissible: false,
        title: "Registering...",
        content: const CircularProgressIndicator());
    final SharedPreferences prefs = await _prefs;
    indexVal = prefs.getInt('indexVal');
    saveProfile.nic = nic.text;
    saveProfile.type = dropdownValue.toString();
    saveProfile.name = name.text;
    saveProfile.number = int.parse(number.text);
    saveProfile.skills = skills.text;
    saveProfile.exp = exp.text;
    saveProfile.rate = rate.text;
    await prefs.setString('profile$indexVal', json.encode(saveProfile));
    await prefs.setInt('indexVal', indexVal + 1);
    update();
    Get.back();
    Get.offAndToNamed(Routes.welcome);
  }

  changedVal(val) {
    dropdownValue = val;
    update();
  }
}
