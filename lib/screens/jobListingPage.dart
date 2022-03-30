import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../controllers/joblisting_controller.dart';


class JobListingPage extends GetView<JobListingController>{
  @override
  final controller=Get.put(JobListingController());

 // Firebase _firebaseServices = FirebaseServices();

  // Future<QuerySnapshot> _getData() async {
  //   return _firebaseServices.usersCartHistoryRef
  //       .doc(_firebaseServices.getUserId())
  //       .collection('Cart') //i don't think you need this part
  //       .orderBy('time', descending: true) //i don't think you need this part
  //       .get();
  // }

  // void _deleteCart() async {
  //   _getData().then((snapshot) {
  //     setState(() {
  //       for (QueryDocumentSnapshot snapshot in snapshot.docs) {
  //         snapshot.reference.delete();
  //       }
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Job Listings",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            width: double.infinity,
            // child: FutureBuilder<QuerySnapshot>(
            //     future: _getData(),
            //     builder: (context, snapshot) {
            //       if (snapshot.hasError) {
            //         return Scaffold(
            //           body: Center(
            //             child: Text("Error: ${snapshot.error}"),
            //           ),
            //         );
            //       }
            //
            //       if (snapshot.connectionState == ConnectionState.done) {
            //         if (snapshot.data != null) {
            //           return ListView(
            //             children: snapshot.data.docs.map((documents) {
            //               return GestureDetector(
            //                 onTap: () {},
            //                 child: ListTile(
            //                 leading: Icon(Icons.settings_outlined),
            //                 title: Text("${documents['name']}"),
            //                 trailing: Icon(Icons.arrow_forward),
            //               ),
            //               );
            //             }).toList(),
            //           );
            //         } else
            //           emptyBodyBuild();
            //       }
            //       return Scaffold(
            //         body: Center(
            //           child: CircularProgressIndicator(),
            //         ),
            //       );
            //     }),
          ),
        ),
      ),
    );
  }

  Container emptyBodyBuild() {
    return Container(
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Icon(
              Icons.settings,
              size: 50.0,
              color: Colors.black26,
            ),
            Text(
              "No jobs to show!",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
