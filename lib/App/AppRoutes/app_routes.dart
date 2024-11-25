import 'package:get/get.dart';
import 'package:telehealth_app/App/View/Screens/covid_screen.dart';
import 'package:telehealth_app/App/View/Screens/family_screen.dart';
import 'package:telehealth_app/App/View/Screens/health_summary_screen.dart';
import 'package:telehealth_app/App/View/Screens/insurance_screen.dart';
import 'package:telehealth_app/App/View/Screens/reminders_screen.dart';
import '../View/Auth/login_screen.dart';
import '../View/Screens/change_password_screen.dart';
import '../View/Screens/contact_screen.dart';
import '../View/Screens/edit_profile_screen.dart';
import '../View/Screens/health_summary_screen_two.dart';
import '../View/Screens/home_screen.dart';
import '../View/Screens/profile_screen.dart';
import '../View/Screens/welcome_screen.dart';

class AppRoutes {

  static String welcomeScreen = "/";
  static String logInScreen = "/login";
  static String homeScreen = "/home";
  static String profileScreen = "/profile";
  static String editProfileScreen = "/editProfile";
  static String changePasswordScreen = "/changePassword";
  static String contactScreen = "/contactScreen";
  static String healthSummaryScreen = "/healthSummaryScreen";
  static String healthSummaryScreenTwo = "/healthSummaryScreenTwo";
  static String remindersScreen = "/remindersScreen";
  static String insuranceScreen = "/ensuranceScreen";
  static String covidScreen = "/covidScreen";
  static String familyScreen = "/familyScreen";

  static final routes = [

    GetPage(name: welcomeScreen, page: () => WelcomeScreen(),),
    GetPage(name: logInScreen, page: () => LogInScreen(),),
    GetPage(name: homeScreen, page: () => HomeScreen(),),
    GetPage(name: profileScreen, page: () => ProfileScreen(),),
    GetPage(name: editProfileScreen, page: () => EditProfileScreen(),),
    GetPage(name: changePasswordScreen, page: () => ChangePasswordScreen(),),
    GetPage(name: contactScreen, page: () => ContactScreen(),),
    GetPage(name: healthSummaryScreen, page: () =>HealthsSummaryScreen(),),
    GetPage(name: healthSummaryScreenTwo, page: () =>HealthSummaryScreenTwo(),),
    GetPage(name: remindersScreen, page: () =>RemindersScreen(),),
    GetPage(name: insuranceScreen, page: () =>InsuranceScreen(),),
    GetPage(name: covidScreen, page: () =>CovidScreen(),),
    GetPage(name: familyScreen, page: () =>FamilyScreen(),),
  ];
}
