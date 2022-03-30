import 'package:flutter/material.dart';

import '../controllers/enter_worker_detail_controller.dart';
import 'package:get/get.dart';

class EnterWorkerDetailPage extends GetView<EnterWorkerDetailController>{
  @override
  final controller=Get.put(EnterWorkerDetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Worker Details'),
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
            child: Text(
              "Enter Worker Details",
              style: TextStyle(fontSize: 18.0, color: const Color(0xFF000000), fontWeight: FontWeight.w400, fontFamily: "Roboto"),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Text(
              "Name",
              style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
            ),
            TextField(
              style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
            ),
            Text(
              "Employor Name",
              style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
            ),
            TextField(
              style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
            ),
            Text(
              "Work Experience",
              style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
            ),
            TextField(
              style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
            ),
            Center(
              child: RaisedButton(
                  key: null,
                  onPressed: buttonPressed,
                  color: Colors.blue,
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 12.0, color: const Color(0xFF000000), fontWeight: FontWeight.w200, fontFamily: "Roboto"),
                  )),
            )
          ])
        ]),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),
    );
  }

  void buttonPressed() {}
}

