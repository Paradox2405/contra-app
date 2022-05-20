import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/reset_controller.dart';

class ResetpasswordPage extends StatelessWidget {
  ResetpasswordPage({Key key}) : super(key: key);
  final ResetController controller = Get.put(ResetController());

  Widget build(BuildContext context) {
    return GetBuilder<ResetController>(
        init: ResetController(),
        builder: (controller) {
          return Scaffold(
            appBar: null,
            body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
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
                                        hintText: 'Enter Email to Reset',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                        controller.reset();
                                      },
                                      child: Text("Reset"),
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
              ],
            ),
          );
        });
  }
}
