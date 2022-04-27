import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';

class EnterEngineerDetailPage extends StatelessWidget {
  EnterEngineerDetailPage({Key key}) : super(key: key);


  final nic=TextEditingController();
  final fname=TextEditingController();
  final lname=TextEditingController();
  final age=TextEditingController();
  final number=TextEditingController();
  final exp=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply As Engineer'),
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
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
                              controller:nic ,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
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
                             controller: fname,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
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
                             controller: lname,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
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
                             controller: age,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
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
                              controller: number,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
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
                              controller: exp,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () async => {
                            pickFile(),
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blueGrey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.attach_file, color: Colors.white),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Attach CV",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Payment: 3000/=",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey)),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () => {
                         checkData(),
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
            ),
          ],
        ),
      ),
    );
  }

  pickFile() async {
    FilePickerResult result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null) {
      File file = File(result.files.single.path);
      print(file.path);
    } else {
      Get.snackbar("Error", "Select a PDF", backgroundColor: Colors.white);
    }
  }

  checkData(){
    nic.text==""||fname.text==""||lname.text==""||age.text==""||number.text==""||exp.text=="" ? Get.snackbar("Error", "Please fill all fields with proper data",backgroundColor: Colors.redAccent)
        : Get.offAndToNamed(Routes.card);
  }
}
