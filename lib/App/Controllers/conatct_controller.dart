import 'package:get/get.dart';

import '../Model/user_model.dart';
import '../Utils/Const/app_images.dart';

class ContactController extends GetxController{
  final List<User> users = [
    User(name: "Waqas Akhtar", imagePath: AppImages.testImage),
    User(name: "John Doe", imagePath: AppImages.testImage),
    User(name: "Jane Smith", imagePath: AppImages.testImage),
    User(name: "Alice Johnson", imagePath: AppImages.testImage),
    User(name: "Bob Brown", imagePath: AppImages.testImage),
    User(name: "Emily Davis", imagePath: AppImages.testImage),
    User(name: "Michael Wilson", imagePath: AppImages.testImage),
    User(name: "Sarah Lee", imagePath: AppImages.testImage),
    User(name: "Chris Martin", imagePath: AppImages.testImage),
    User(name: "Jessica Clark", imagePath: AppImages.testImage),
  ];



}