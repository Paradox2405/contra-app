import 'package:contra/controllers/registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key key}) : super(key: key);
  final RegistrationController controller = Get.put(RegistrationController());
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(
        init:RegistrationController(),
        builder: (controller) {
          return Scaffold(
            appBar: null,
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 60),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 280,
                                  child: TextField(
                                    controller: controller.email,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Email',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 280,
                                  child: TextField(
                                    controller: controller.password,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Password',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 280,
                                  child: TextField(
                                    controller: controller.repeatPw,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Repeat Password',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 120,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red,
                                      minimumSize: Size(180, 60),
                                      shape: StadiumBorder(),
                                    ),
                                    onPressed: () {
                                      controller.checkPw();
                                    },
                                    child: Text("Sign Up"),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }


}
