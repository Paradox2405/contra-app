import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';


class EnterUserDetailPage extends StatelessWidget {
  const EnterUserDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Worker Details'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(255, 255, 255, 0.7)),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: (18),
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                labelText: 'NIC',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(82, 82, 82, 1),
                                    fontSize: 20),
                                hintText: 'NIC',
                              ),
                              //controller: controller.lname,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: (18),
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                labelText: 'First Name',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(82, 82, 82, 1),
                                    fontSize: 20),
                                hintText: 'First Name',
                              ),
                              //controller: controller.lname,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: (18),
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                labelText: 'Last Name',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(82, 82, 82, 1),
                                    fontSize: 20),
                                hintText: 'Last Name',
                              ),
                              //controller: controller.lname,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                fontSize: (18),
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                labelText: 'Age',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(82, 82, 82, 1),
                                    fontSize: 20),
                                hintText: 'Age',
                              ),
                              //controller: controller.lname,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                fontSize: (18),
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                labelText: 'Contact Number',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(82, 82, 82, 1),
                                    fontSize: 20),
                                hintText: 'Contact Number',
                              ),
                              //controller: controller.lname,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: (18),
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                labelText: 'Previous Work Experience',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(82, 82, 82, 1),
                                    fontSize: 20),
                                hintText: 'Previous Work Experience',
                              ),
                              //controller: controller.lname,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                    ),
                  Text("Payment: 1500/=",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () =>
                      {
                        //  Get.offAndToNamed(Routes.submitted),
                      Get.toNamed(Routes.card)
                      },
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                      child: Text(
                        "PROCEED TO PAYMENT",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

