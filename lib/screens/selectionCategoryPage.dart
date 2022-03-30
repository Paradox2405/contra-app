import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/selection_category_controller.dart';

class SelectionCategoryPage extends StatelessWidget {
  SelectionCategoryPage({Key? key}) : super(key: key);
  final SelectionCategoryController controller = Get.put(SelectionCategoryController());

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Select a Category'),
          ),
        body:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
              ),
              GestureDetector(
                onTap: buttonPressed,
                child: Container(
                  child: Text(
                  "Find a Constructor",
                    style: TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  ),
                ),
              ),
    
              GestureDetector(
                onTap: buttonPressed,
                child: Container(
                  child: Text(
                  "Find a Worker",
                    style: TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                  ),
                ),
              ),
            ]
    
          ),
    
      );
    }
    void buttonPressed(){}
    
}
