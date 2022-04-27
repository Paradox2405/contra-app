import 'package:contra/controllers/hire_personnel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HirePersonnelPage extends GetView<HirePersonnelController> {
  @override
  final HirePersonnelController controller = Get.put(HirePersonnelController());

  HirePersonnelPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HirePersonnelController>(
      init: HirePersonnelController(),
      builder: (controller) {
        return Scaffold(
          appBar:AppBar(title: Text("Hire Personnel"),backgroundColor: Colors.blueGrey,centerTitle: true),
          body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.cover)),
              padding: EdgeInsets.all(10),
              child: controller.loading
                  ? Container(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator())
                  : Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 100),
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child:
                                              ListView.builder(
                                                  shrinkWrap: true,
                                                  padding: EdgeInsets.zero,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      controller.item.length,
                                                  itemBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    return InkWell(
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            bottom: 5, top: 5),
                                                        padding:
                                                            EdgeInsets.all(20),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors
                                                                  .black
                                                                  .withAlpha(
                                                                      15),
                                                              blurRadius: 1,
                                                              spreadRadius: 1,
                                                              offset:
                                                                  Offset(0, 1),
                                                            )
                                                          ],
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    "Type: ${controller
                                                                        .item[
                                                                    "profile$index"]
                                                                        .entries
                                                                        .elementAt(
                                                                        1)
                                                                        .value
                                                                        .toString()}",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .fade,
                                                                    maxLines: 1,
                                                                    softWrap:
                                                                    false,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                        25,
                                                                        fontWeight:
                                                                        FontWeight.w600),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                   " Position: ${controller
                                                                        .item[
                                                                            "profile$index"]
                                                                        .entries
                                                                        .elementAt(
                                                                            4)
                                                                        .value
                                                                        .toString()}",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .fade,
                                                                    maxLines: 1,
                                                                    softWrap:
                                                                        false,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    " Rate: ${controller
                                                                        .item[
                                                                            "profile$index"]
                                                                        .entries
                                                                        .elementAt(
                                                                            6)
                                                                        .value
                                                                        .toString()}",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    maxLines:
                                                                        10,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      onTap: () => {
                                                        controller.itemTap(index),
                                                      },
                                                    );
                                                  }),

                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
