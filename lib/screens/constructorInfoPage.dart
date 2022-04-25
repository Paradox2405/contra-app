import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/constructor_info_controller.dart';
import '../routes/routes.dart';


class ConstructorInfoPage extends GetView<ConstructorInfoController>{
  @override
  final controller=Get.put(ConstructorInfoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
          ),
          Text(
            "Constructor Details",
            style: new TextStyle(fontSize: 25.0, color: const Color(0xFF000000), fontWeight: FontWeight.w400, fontFamily: "Roboto"),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "In detailed information about the Constructor.",
            style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Contact Number: 0115 896 365",
            style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
          ),
          Text(
            "Website: www.const.com",
            style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
          ),
          Text(
            "Email: info@const.com",
            style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              width: 30.0,
            ),
            RaisedButton(
              key: null,
              onPressed: buttonPressed,
              color: Colors.blue,
              child: Text(
                "Chat Now",
                style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
              ),
            ),
            RaisedButton(
              key: null,
              onPressed: buttonPressed,
              color: Colors.blue,
              child: Text(
                "Pay Now",
                style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
          ])
        ]),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),
    );
  }

  void buttonPressed() {
    Get.toNamed(Routes.chat);
  }
}

