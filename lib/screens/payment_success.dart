import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';


class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key key}) : super(key: key);

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

Color themeColor = const Color(0xFF43D19E);

class _PaymentSuccessState extends State<PaymentSuccess> {
  double screenWidth = 600;
  double screenHeight = 400;
  Color textColor = const Color(0xFF32567A);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 170,
              padding: EdgeInsets.all(35),
              decoration: BoxDecoration(
                color: themeColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/card.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            Text(
              "Thank You!",
              style: TextStyle(
                color: themeColor,
                fontWeight: FontWeight.w600,
                fontSize: 36,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Payment done Successfully",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              "click here to return to home page",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            SizedBox(height: screenHeight * 0.06),
            ElevatedButton(
              onPressed: () =>
              {
                Get.offAndToNamed(Routes.welcome),
              },
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.blueGrey)),
              child: Text(
                "HOME",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}