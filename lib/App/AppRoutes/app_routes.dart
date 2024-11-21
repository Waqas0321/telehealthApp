import 'package:get/get.dart';
import '../View/Auth/login_screen.dart';
import '../View/Screens/change_password_screen.dart';
import '../View/Screens/contact_screen.dart';
import '../View/Screens/edit_profile_screen.dart';
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

  static final routes = [

    GetPage(name: welcomeScreen, page: () => WelcomeScreen(),),
    GetPage(name: logInScreen, page: () => LogInScreen(),),
    GetPage(name: homeScreen, page: () => HomeScreen(),),
    GetPage(name: profileScreen, page: () => ProfileScreen(),),
    GetPage(name: editProfileScreen, page: () => EditProfileScreen(),),
    GetPage(name: changePasswordScreen, page: () => ChangePasswordScreen(),),
    GetPage(name: contactScreen, page: () => ContactScreen(),),
  ];
}
