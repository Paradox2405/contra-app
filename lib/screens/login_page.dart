import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../routes/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);
  final LoginController controller = Get.put(LoginController());

  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
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
                                        controller.login();
                                      },
                                      child: Text("Login"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 120,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        minimumSize: Size(180, 60),
                                        shape: StadiumBorder(),
                                      ),
                                      onPressed: () {
                                        Get.toNamed(Routes.reg);
                                      },
                                      child: Text("Registration"),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: ()=>{
                                  Get.toNamed(Routes.reset),
                                },
                                child: Text("Reset Password"),
                              )
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
