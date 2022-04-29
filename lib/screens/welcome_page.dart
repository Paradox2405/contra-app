import 'package:contra/controllers/welcome_controller.dart';
import 'package:contra/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  final controller = Get.put(WelcomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        child: Column(
                          children: [
                            Image.asset("assets/logo.png"),
                            //Text("CONSTRUCTIONS\nCONTRACTING",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueGrey,fontSize: 35,fontWeight: FontWeight.w900)),
                            //Text("For All Your Construction Needs",style: TextStyle(color: Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.w900)),
                          ],
                        ),
                      ),
                      SizedBox(height: 60,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.max,
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
                                  "Apply For Engineer Jobs",
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
                                  "Apply For Labour Jobs",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: StadiumBorder(),
                                ),
                                onPressed: () {
                                  Get.toNamed(Routes.hire);
                                },
                                child: Text(
                                  "Hire Personnel",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: StadiumBorder(),
                                ),
                                onPressed: () {
                                 Get.toNamed(Routes.postP);
                                },
                                child: Text(
                                  "Post Your Profile",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
