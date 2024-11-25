import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../AppRoutes/app_routes.dart';
import '../../Controllers/profile_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_images.dart';
import '../../Utils/Const/app_sizes.dart';
import '../../Widgets/Customs/custom_arrow_button.dart';
import '../../Widgets/Customs/custom_button.dart';
import '../../Widgets/Customs/custom_container.dart';
import '../../Widgets/Customs/custom_divider.dart';
import 'package:get/get.dart';
import '../../Widgets/Customs/custom_leading_button.dart';
import '../../Widgets/Customs/custom_outline_button.dart';
import '../../Widgets/Customs/custom_text_widget.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  ProfileController profileController = Get.put(ProfileController());

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
          text: "Profile",
          fontWeight: FontWeight.w700,
          fontSize: 25,
          textColor: AppColors.bluish,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes().getCustomPadding(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(AppSizes().getHeightPercentage(2)),
                const CircleAvatar(
                  radius: 78,
                  backgroundImage: AssetImage(AppImages.testImage),
                ),
                const Gap(36),
                const CustomContainer(
                  text1: "Name",
                  text2: "Wade Warren",
                ),
                const Gap(26),
                const CustomContainer(
                  text1: "Email",
                  text2: "abc@gmail.com",
                ),
                const Gap(36),
                CustomArrowButton(
                  text: "Family Access",
                  onPress: () {
                    Get.toNamed(AppRoutes.familyScreen);
                  },
                ),
                const Gap(8),
                const CustomDivider(),
                const Gap(8),
                CustomArrowButton(
                  text: "Billing and Payment",
                  onPress: () {},
                ),
                Gap(AppSizes().getHeightPercentage(10)),
                SizedBox(
                  width: AppSizes().getWidthPercentage(75),
                  child: CustomButton(
                    text: "Edit Profile",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    onPress: () {
                      Get.toNamed(AppRoutes.editProfileScreen);
                    },
                  ),
                ),
                const Gap(18),
                SizedBox(
                    width: AppSizes().getWidthPercentage(75),
                    child: CustomOutlineButton(
                      text: "Change Password",
                      onPress: () {
                        Get.toNamed(AppRoutes.changePasswordScreen);
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
