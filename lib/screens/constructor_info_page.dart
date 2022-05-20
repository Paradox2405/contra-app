import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../controllers/constructor_info_controller.dart';
import '../routes/routes.dart';
import 'feedback_page.dart';

class ConstructorInfoPage extends GetView<ConstructorInfoController> {
  @override
  final controller = Get.put(ConstructorInfoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding:EdgeInsets.all(0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover)),
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(0, 0, 0, 0.6),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              controller.name.text,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            RatingBar.builder(
                              initialRating: controller.rating,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                controller.onRate(rating);
                                Get.snackbar("Successful", "You have successfully rated this constructor!",duration: Duration(seconds: 2),backgroundColor: Colors.white);
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: controller.location,
                              style:
                              TextStyle(fontSize: 18, color: Colors.white),
                              readOnly: true,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Constructor Location",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ), SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: controller.pastP,
                              style:
                              TextStyle(fontSize: 18, color: Colors.white),
                              readOnly: true,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Past Performance",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ), SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: controller.prices,
                              style:
                              TextStyle(fontSize: 18, color: Colors.white),
                              readOnly: true,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Prices",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ), SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: controller.tenderC,
                              style:
                              TextStyle(fontSize: 18, color: Colors.white),
                              readOnly: true,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Tender Cost",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ), SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: controller.workQ,
                              style:
                              TextStyle(fontSize: 18, color: Colors.white),
                              readOnly: true,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Quality of Work",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ), SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: controller.technology,
                              style:
                              TextStyle(fontSize: 18, color: Colors.white),
                              readOnly: true,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Technology Used",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ), SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: controller.healthS,
                              style:
                              TextStyle(fontSize: 18, color: Colors.white),
                              readOnly: true,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Health & Safety Regulations",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ), SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: controller.engineers,
                              style:
                              TextStyle(fontSize: 18, color: Colors.white),
                              readOnly: true,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Engineers Available",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ), SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: controller.workers,
                              style:
                              TextStyle(fontSize: 18, color: Colors.white),
                              readOnly: true,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Workers Available",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: ()=>{  showDialog(
                        context: context, builder:
                        (context) => const FeedbackDialog())},
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.blueGrey)),
                        child: Row(
                          children: [
                            Icon(Icons.feedback, color: Colors.white),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Feedback",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()=>{Get.toNamed(Routes.chat),},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueGrey)),
                        child: Row(
                          children: [
                            Icon(Icons.chat, color: Colors.white),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Chat",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()=>{Get.toNamed(Routes.card),},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueGrey)),
                        child: Row(
                          children: [
                            Icon(Icons.credit_card, color: Colors.white),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Reserve",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
