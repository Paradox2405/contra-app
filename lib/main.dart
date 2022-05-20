import 'package:contra/add_data.dart';
import 'package:contra/controllers/login_bindings.dart';
import 'package:contra/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controllers/welcome_binding.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
dataModelPopulate();
  await initServices();
  runApp(MyApp());
}
Future<void> initServices() async{
  await Firebase.initializeApp();
  try {
    /// Checks if shared preference exist
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.getString("app-name");
    await prefs.setInt('indexVal', 0);
  } catch (err) {
    /// setMockInitialValues initiates shared preference
    /// Adds app-name
    SharedPreferences.setMockInitialValues({});
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.setString("app-name", "my-app");
    await prefs.setInt('indexVal', 0);
  }


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
      initialRoute: Routes.login,
      getPages: Routes.routes,
      initialBinding: LoginBinding(),
    );
  }

}