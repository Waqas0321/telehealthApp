import 'package:get/get.dart';
import 'package:telehealth_app/App/Controllers/covid_controller.dart';
import 'package:telehealth_app/App/Controllers/ensurance_controller.dart';
import 'package:telehealth_app/App/Controllers/family_controller.dart';
import 'package:telehealth_app/App/Controllers/health_summary_controller.dart';
import 'package:telehealth_app/App/Controllers/health_summary_controller_two.dart';
import 'package:telehealth_app/App/Controllers/message_controller.dart';
import 'package:telehealth_app/App/Controllers/reminders_controller.dart';
import 'package:telehealth_app/App/Controllers/videoCall_controller.dart';

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

    Get.lazyPut(() => HealthSummaryController(),);
    Get.put(() => HealthSummaryController(),);

    Get.lazyPut(() => HealthSummaryControllerTwo(),);
    Get.put(() => HealthSummaryControllerTwo(),);

    Get.lazyPut(() => RemindersController(),);
    Get.put(() => RemindersController(),);

    Get.lazyPut(() => InsuranceController(),);
    Get.put(() => InsuranceController(),);

    Get.lazyPut(() => CovidController(),);
    Get.put(() => CovidController(),);

    Get.lazyPut(() => FamilyController(),);
    Get.put(() => FamilyController(),);

    Get.lazyPut(() => VideoCallController(),);
    Get.put(() => VideoCallController(),);

    Get.lazyPut(() => MessagesController(),);
    Get.put(() => MessagesController(),);
  }

}