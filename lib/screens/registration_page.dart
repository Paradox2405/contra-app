
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key key}) : super(key: key);
  final  email=TextEditingController();
  final  password=TextEditingController();
  final  repeatPw=TextEditingController();
  bool complete=false;


  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 120,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 60),
                        borderRadius: BorderRadius.circular(20),),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 280,
                              child: TextField(
                                controller: email,
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
                                controller: password,
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
                                controller: repeatPw,
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
                                  primary: Colors.red,minimumSize: Size(180, 60),shape: StadiumBorder(),
                                ),
                                onPressed: () {
                                 // checkPw();
                                 // complete?
                                  Get.toNamed(Routes.constructionMap)
                                 // :null
                                  ;

                                },
                                child: Text("Sign Up"),),
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
  }
  checkPw(){
    if (password.text!=repeatPw.text){
      password.text="";
      repeatPw.text="";
      Get.snackbar("Error", "Passwords don't match",backgroundColor: Colors.white);
    }else if (password.text.length<6){
      password.text="";
      repeatPw.text="";
      Get.snackbar("Error", "Password must be 6 or more characters",backgroundColor: Colors.white, duration: const Duration(seconds: 5),);
    }else if(email.text.isEmpty){
      Get.snackbar("Error", "Email cannot be empty",backgroundColor: Colors.white);
    }
    else{
      complete=true;
    }
  }
}

