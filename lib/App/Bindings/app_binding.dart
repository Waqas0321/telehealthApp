import 'package:get/get.dart';

import '../Controllers/Auth/login_controller.dart';
import '../Controllers/change_password_controller.dart';
import '../Controllers/conatct_controller.dart';
import '../Controllers/edit_profile_controller.dart';
import '../Controllers/home_controller.dart';
import '../Controllers/profile_controller.dart';
import '../Controllers/welcome_controller.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => WelcomeController(),);
    Get.put(() => WelcomeController(),);

    Get.lazyPut(() => LogInController(),);
    Get.put(() => LogInController(),);

    Get.lazyPut(() => HomeController(),);
    Get.put(() => HomeController(),);

    Get.lazyPut(() => ProfileController(),);
    Get.put(() => ProfileController(),);

    Get.lazyPut(() => EditProfileController(),);
    Get.put(() => EditProfileController(),);

    Get.lazyPut(() => ChangePasswordController(),);
    Get.put(() => ChangePasswordController(),);

    Get.lazyPut(() => ContactController(),);
    Get.put(() => ContactController(),);
  }

}