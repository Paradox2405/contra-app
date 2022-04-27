import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';

class SubmitSuccessfulPage extends StatelessWidget {
  const SubmitSuccessfulPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover)),
          child: Container(
            color: Color.fromRGBO(255, 255, 255, 0.6),
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Submitted Successfully",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                Icon(Icons.cloud_done, size: 270, color: Colors.green),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueGrey)),
                    onPressed: () => {Get.offAndToNamed(Routes.welcome)},
                    child: Text(
                      "DONE",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
