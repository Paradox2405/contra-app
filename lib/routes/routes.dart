
import 'package:contra/controllers/welcome_binding.dart';
import 'package:contra/screens/construction_map_page.dart';
import 'package:contra/screens/constructorInfoPage.dart';
import 'package:contra/screens/enter_worker_detail_page.dart';
import 'package:contra/screens/job_listing_page.dart';
import 'package:contra/screens/payment_success.dart';
import 'package:contra/screens/submit_successful_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../controllers/constructor_info_binding.dart';
import '../controllers/joblisting_binding.dart';
import '../screens/chat_screen.dart';
import '../screens/credit_card_page.dart';
import '../screens/welcome_page.dart';

class Routes{
  static final String welcome = "/welcome_page";
  static final String constructionMap = "/construction_map_page";
  static final String joblisting = "/job_listing_page";
  static final String workerdetail = "/enter_user_detail_page";
  static final String submitted = "/submit_sucessful_page";
  static final String card = "/credit_card_page";
  static final String success = "/credit_card_page";
  static final String paid = "/payment_success_page";
  static final String info = "/constructionInfoPage";
  static final String chat = "/chat_screen";





  static final routes =[
    GetPage(
      name: Routes.welcome,
      page: ()=> WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.constructionMap,
      page: ()=> ConstructionMapPage(),
    ),
    GetPage(
      name: Routes.joblisting,
      page: ()=> JobListingPage(),
      binding: JobListingBinding(),
    ),
    GetPage(
      name: Routes.workerdetail,
      page: ()=> EnterUserDetailPage(),
    ),
    GetPage(
      name: Routes.submitted,
      page: ()=>SubmitSuccessfulPage(),
    ),
    GetPage(
      name: Routes.card,
      page: ()=> CreditCardPage(),
    ),
    GetPage(
      name: Routes.paid,
      page: ()=> PaymentSuccess(),
    ),
    GetPage(
      name: Routes.info,
      page: ()=> ConstructorInfoPage(),
      binding: ConstructorInfoBinding(),
    ),
    GetPage(
      name: Routes.chat,
      page: ()=> ChatScreen(),
    ),
  ];
}