import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../tools/tools.dart';

class ConstructorInfoController extends GetxController {
  double rating=0.0;
  final name = TextEditingController();
  final location = TextEditingController();
  final pastP = TextEditingController();
  final prices = TextEditingController();
  final tenderC = TextEditingController();
  final workQ = TextEditingController();
  final technology = TextEditingController();
  final healthS= TextEditingController();
  final engineers = TextEditingController();
  final workers = TextEditingController();
  var arg = Get.arguments;

  @override
  void onInit() {
    rating=arg[0].rating;
    name.text=arg[0].name.toString();
    location.text=arg[0].location.toString();
    pastP.text=arg[0].pastP.toString();
    prices.text=arg[0].prices.toString();
    tenderC.text=arg[0].tender.toString();
    workQ.text=arg[0].quality.toString();
    technology.text=arg[0].technology.toString();
    healthS.text=arg[0].healthS.toString();
    engineers.text=arg[0].engineers.toString();
    workers.text=arg[0].workers.toString();

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
  onRate(rate){
    Tools.markersList.elementAt(arg[0].id).rating=rate;
  }

}
