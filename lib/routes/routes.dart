
import 'package:contra/controllers/login_bindings.dart';
import 'package:contra/controllers/welcome_binding.dart';
import 'package:contra/screens/construction_map_page.dart';
import 'package:contra/screens/constructor_info_page.dart';
import 'package:contra/screens/feedback_page.dart';
import 'package:contra/screens/hire_personnel_page.dart';
import 'package:contra/screens/job_listing_page.dart';
import 'package:contra/screens/payment_success.dart';
import 'package:contra/screens/post_profile_page.dart';
import 'package:contra/screens/registration_page.dart';
import 'package:contra/screens/submit_successful_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../controllers/constructor_info_binding.dart';
import '../controllers/hire_personnel_binding.dart';
import '../controllers/joblisting_binding.dart';
import '../controllers/post_profile_binding.dart';
import '../controllers/registration_bindings.dart';
import '../screens/chat_screen.dart';
import '../screens/credit_card_page.dart';
import '../screens/enter_engineer_detail_page.dart';
import '../screens/enter_worker_detail_page.dart';
import '../screens/login_page.dart';
import '../screens/resetpassword_page.dart';
import '../screens/tandcpage.dart';
import '../screens/welcome_page.dart';

class Routes{
  static final String welcome = "/welcome_page";
  static final String constructionMap = "/construction_map_page";
  static final String joblisting = "/job_listing_page";
  static final String workerdetail = "/enter_worker_detail_page";
  static final String engineerdetail = "/enter_engineer_detail_page";
  static final String submitted = "/submit_sucessful_page";
  static final String card = "/credit_card_page";
  static final String success = "/credit_card_page";
  static final String paid = "/payment_success_page";
  static final String info = "/constructionInfoPage";
  static final String chat = "/chat_screen";
  static final String postP = "/post_profile_page";
  static final String hire = "/hire_personnel_page";
  static final String login = "/login_page";
  static final String reg= "/registration_page";
  static final String tandc= "/tandcpage";
  static final String reset= "/resetpassword_page";







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
      page: ()=> EnterWorkerDetailPage(),
    ),
    GetPage(
      name: Routes.engineerdetail,
      page: ()=> EnterEngineerDetailPage(),
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
    GetPage(
      name: Routes.postP,
      page: ()=> PostProfilePage(),
      binding:PostProfileBinding(),
    ),
    GetPage(
      name: Routes.hire,
      page: ()=> HirePersonnelPage(),
      binding:HirePersonnelBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: ()=> LoginPage(),
      binding:LoginBinding(),
    ),
    GetPage(
      name: Routes.reg,
      page: ()=> RegistrationPage(),
      binding:RegistrationBinding(),
    ),
    GetPage(
      name: Routes.tandc,
      page: ()=> TandcPage(),
    ),
    GetPage(
      name: Routes.reset,
      page: ()=> ResetpasswordPage(),
    ),
  ];
}