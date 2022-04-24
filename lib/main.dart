import 'package:contra/add_data.dart';
import 'package:contra/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'controllers/welcome_binding.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = "pk_test_TYooMQauvdEDq54NiTphI7jx";
dataModelPopulate();
  await initServices();
  runApp(MyApp());
}
Future<void> initServices() async{
  await Firebase.initializeApp();


}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Contra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.welcome,
      getPages: Routes.routes,
      initialBinding: WelcomeBinding(),
    );
  }

}