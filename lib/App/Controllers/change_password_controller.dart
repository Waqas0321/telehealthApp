import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../AppRoutes/app_routes.dart';
import '../Utils/Const/aap_colors.dart';
import '../Widgets/Customs/custom_text_widget.dart';

class ChangePasswordController extends GetxController{
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void showCustomDialog({
    required BuildContext context,
    required IconData icon,
    required String text,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.only(top: 100, left: 48, right: 48,bottom: 100), // Position near the top
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                      onTap: () {
                        Get.back();
                        Get.toNamed(AppRoutes.profileScreen);
                      },
                      child: Icon(CupertinoIcons.multiply,color: AppColors.black.withOpacity(0.5),)),
                ),
                Icon(
                  icon,
                  size: 60,
                  color: AppColors.bluish, // Customize icon color
                ),
                const SizedBox(height: 16),
                CustomTextWidget(
                  text:text,
                  textAlign: TextAlign.center,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.black,
                ),
              ],
            ),
          ),
        );
      },
    );
  }


}