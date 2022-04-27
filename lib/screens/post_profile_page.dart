import 'package:contra/controllers/post_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PostProfilePage extends GetView<PostProfileController> {
  PostProfilePage({Key key}) : super(key: key);
  @override
  final PostProfileController controller = Get.put(PostProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostProfileController>(
      init: PostProfileController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Post Your Profile'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.white,
                                  isExpanded: true,
                                  value: controller.dropdownValue,
                                  icon: const Icon(Icons.arrow_downward),
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.blueGrey),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.blueGrey,
                                  ),
                                  onChanged: (String newValue) {
                                    controller.changedVal(newValue);
                                  },
                                  items: <String>[
                                    'Worker',
                                    'Engineer'
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.blueGrey)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
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
                                  controller: controller.nic,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ],
                          ), SizedBox(height: 20,),
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
                                    labelText: 'Full Name',
                                    labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(82, 82, 82, 1),
                                        fontSize: 20),
                                  ),
                                  controller: controller.name,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ],
                          ), SizedBox(height: 20,),
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
                                    hintText: 'EX: 076 234 5231',
                                  ),
                                  controller: controller.number,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ],
                          ), SizedBox(height: 20,),
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
                                    labelText: 'Skills',
                                    labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(82, 82, 82, 1),
                                        fontSize: 20),
                                    hintText: 'Specialization and skills',
                                  ),
                                  controller: controller.skills,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ],
                          ), SizedBox(height: 20,),
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
                                  controller: controller.exp,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ],
                          ), SizedBox(height: 20,),
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
                                    labelText: 'Pay Rate',
                                    labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(82, 82, 82, 1),
                                        fontSize: 20),
                                    hintText: 'EX: 4000/= LKR Per Day',
                                  ),
                                  controller: controller.rate,
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () => {
                              controller.checkData(),
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blueGrey)),
                            child: Text(
                              "SUBMIT",
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
      },
    );
  }
}
