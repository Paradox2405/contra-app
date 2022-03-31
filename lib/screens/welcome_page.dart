import 'package:contra/controllers/welcome_controller.dart';
import 'package:contra/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomePageController>{
  @override
  final controller=Get.put(WelcomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,minimumSize: Size(180, 60),shape: StadiumBorder(),
                    ),
                    onPressed: () {
                     Get.offAndToNamed(Routes.login);
                    },
                    child: Text("Find Contractor")),
              ],),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,minimumSize: Size(180, 60),shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      Get.offAndToNamed(Routes.login);
                    },
                    child: Text("Find Work")),
              ],),
            ],
          )
        ],
      ),
    );
  }
}
