import 'package:contra/controllers/welcome_controller.dart';
import 'package:contra/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomePageController> {
  @override
  final controller = Get.put(WelcomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 60),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: StadiumBorder(),
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.constructionMap);
                          },
                          child: Text(
                            "Find Contractor",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: StadiumBorder(),
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.joblisting,
                                arguments: ["engineer"]);
                          },
                          child: Text(
                            "Find Work As Engineer",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: StadiumBorder(),
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.joblisting,
                                arguments: ["worker"]);
                          },
                          child: Text(
                            "Find Work As Worker",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
