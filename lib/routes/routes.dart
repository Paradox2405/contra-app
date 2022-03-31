

import 'package:contra/controllers/login_binding.dart';
import 'package:contra/controllers/welcome_binding.dart';
import 'package:contra/screens/construction_map_page.dart';
import 'package:contra/screens/login.dart';
import 'package:contra/screens/registration_page.dart';
import 'package:contra/screens/welcome_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes{
  static final String welcome = "/welcome_page";
  static final String login= "/login_page";
  static final String registration= "/registration_page";
  static final String constructionMap = "/construction_map_page";
  static final String home = "/home_page";




  static final routes =[
    GetPage(
      name: Routes.welcome,
      page: ()=> WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: ()=> LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.registration,
      page: ()=> RegistrationPage(),
    ),
    GetPage(
      name: Routes.constructionMap,
      page: ()=> ConstructionMapPage(),
    ),
  ];
}