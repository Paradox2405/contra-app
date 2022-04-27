import 'dart:convert';

import 'package:contra/models/post_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/routes.dart';

class HirePersonnelController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  SharedPreferences prefs;
  PostProfile postProfile;
  bool loading = true;
  Map<String, Map> item = {};
  var data;

  @override
  void onInit() {
    loadData();
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

  loadData() async {
    prefs = await _prefs;
    int i = 0;
    for (i; prefs.getString('profile$i') != null; i++) {
      item["profile$i"] = {};
      var decoded = await jsonDecode(prefs.getString('profile$i').toString());
      postProfile = PostProfile.fromJson(decoded);
      data = {
        "nic": postProfile.nic,
        "type": postProfile.type,
        "name": postProfile.name,
        "number": postProfile.number,
        "skills": postProfile.skills,
        "exp": postProfile.exp,
        "rate": postProfile.rate,
      };
      item["profile$i"].addAll(data);
    }
    print(item.length);
    loading = false;
    update();
  }

  itemTap(index) {
    Get.defaultDialog(
      title: item["profile$index"].entries.elementAt(2).value.toString(),
      titleStyle: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 1,
            color: Colors.blueGrey,
          ),
          Center(
            child: Text(
              "Profile Summery",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "NIC: " +
                item["profile$index"].entries.elementAt(0).value.toString(),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Skills: " +
                item["profile$index"].entries.elementAt(4).value.toString(),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Experience: " +
                item["profile$index"].entries.elementAt(5).value.toString(),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Rate: " +
                item["profile$index"].entries.elementAt(6).value.toString(),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async => {
                Get.offAndToNamed(Routes.card),
              },
              child: Text(
                "Hire ${item["profile$index"].entries.elementAt(1).value.toString()}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: null,
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
