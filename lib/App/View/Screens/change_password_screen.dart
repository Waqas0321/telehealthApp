import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../Controllers/change_password_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_sizes.dart';
import '../../Widgets/Customs/custom_button.dart';
import '../../Widgets/Customs/custom_leading_button.dart';
import '../../Widgets/Customs/custom_text_widget.dart';
import '../../Widgets/Customs/custom_textfield.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});

  ChangePasswordController changePasswordController =
      Get.put(ChangePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: CustomLeadingButton(),
        ),
        title: const CustomTextWidget(
          text: "Change Password",
          fontWeight: FontWeight.w700,
          fontSize: 22,
          textColor: AppColors.bluish,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppSizes().getCustomPadding(),
            child: Column(
              children: [
                Gap(AppSizes().getHeightPercentage(7)),
                const Row(
                  children: [
                    CustomTextWidget(
                      text: "Old Password",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      textColor: AppColors.black,
                    ),
                  ],
                ),
                CustomTextField(
                  sendIcon: false,
                  isSuffixIcon: true,
                  controller: changePasswordController.oldPasswordController,
                  hintText: "*********",
                  isObsecure: true,
                  isValidateFun: true,
                ),
                Gap(24),
                const Row(
                  children: [
                    CustomTextWidget(
                      text: "New Password",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      textColor: AppColors.black,
                    ),
                  ],
                ),
                CustomTextField(
                  sendIcon: false,
                  isSuffixIcon: true,
                  controller: changePasswordController.newPasswordController,
                  hintText: "*********",
                  isObsecure: true,
                  isValidateFun: true,
                ),
                Gap(24),
                const Row(
                  children: [
                    CustomTextWidget(
                      text: "Confirm Password",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      textColor: AppColors.black,
                    ),
                  ],
                ),
                CustomTextField(
                  isSuffixIcon: true,
                  sendIcon: false,
                  controller:
                      changePasswordController.confirmPasswordController,
                  hintText: "*********",
                  isObsecure: true,
                  isValidateFun: true,
                ),
                Gap(AppSizes().getHeightPercentage(5)),
                SizedBox(
                  width: AppSizes().getWidthPercentage(50),
                  child: CustomButton(
                    text: "Done",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    onPress: () {
                      changePasswordController.showCustomDialog(
                          context: context,
                          text:
                              "Thank You!\nYour password has been successfully changes.\nPlease keep your password safe by not sharing it with others.",
                          icon: Icons.check_circle);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
