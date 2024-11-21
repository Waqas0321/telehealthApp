import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../AppRoutes/app_routes.dart';
import '../Model/gridItems_model.dart';
import '../Utils/Const/aap_colors.dart';
import '../Utils/Const/app_images.dart';
import '../Widgets/Customs/custom_text_widget.dart';

class HomeController extends GetxController{

  final gridItems = [
    GridItemData(
      color: AppColors.lightBlueIsh,
      icon: AppImages.syringe,
      title: 'Medications',
    ),
    GridItemData(
      color: AppColors.lightBlue,
      icon: AppImages.appointment,
      title: 'Appointment',
    ),
    GridItemData(
      color: AppColors.lightBlue,
      icon: AppImages.folder,
      title: 'Insurance',
    ),
    GridItemData(
      color: AppColors.lightRed,
      icon: AppImages.test,
      title: 'Tests',
    ),
    GridItemData(
      color: AppColors.lightBlueIsh,
      icon: AppImages.heart,
      title: 'Vital Signs',
    ),
    GridItemData(
      color: AppColors.lightBlue,
      icon: AppImages.symptoms,
      title: 'Health\nSummary',
    ),
    GridItemData(
      color: AppColors.lightRed,
      icon: AppImages.contact,
      title: 'Contacts',
    ),
    GridItemData(
      color: AppColors.lightRed,
      icon: AppImages.messages,
      title: 'Messages',
    ),
  ];
  void showCustomMenu(BuildContext context, Offset position) {
    double dx = position.dx;
    double dy = position.dy +20;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        dx, dy, dx, dy,
      ),
      items: [
        PopupMenuItem(
          child: ListTile(
            onTap: () {
              Get.toNamed(AppRoutes.profileScreen);
            },
            leading: SvgPicture.asset(AppImages.profile),
            title: const CustomTextWidget(
              text: 'Profile',
              fontSize: 21,
              fontWeight: FontWeight.w600,
              textColor: AppColors.white,
            ),
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            onTap: () {
              Get.toNamed(AppRoutes.logInScreen);
            },
            leading: SvgPicture.asset(AppImages.logout),
            title: const CustomTextWidget(
              text: 'Logout',
              fontSize: 21,
              fontWeight: FontWeight.w600,
              textColor: AppColors.white,
            ),
          ),
        ),
      ],
      elevation: 8.0,
      color: AppColors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  void navigationFunction(String name){
    if(name == "Contacts"){
      Get.toNamed(AppRoutes.contactScreen);
    }
  }


}