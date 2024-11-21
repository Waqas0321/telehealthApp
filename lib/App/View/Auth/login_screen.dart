import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../AppRoutes/app_routes.dart';
import '../../Controllers/Auth/login_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_images.dart';
import '../../Utils/Const/app_sizes.dart';
import '../../Widgets/Customs/custom_button.dart';
import '../../Widgets/Customs/custom_text_widget.dart';
import '../../Widgets/Customs/custom_textfield.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  LogInController logInController = Get.put(LogInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSizes().getCustomPadding(),
        child: SingleChildScrollView(
          child: Form(
            key: logInController.formKey,
            child: Column(
              children: [
                SvgPicture.asset(AppImages.logInImage),
                const Gap(12),
                const CustomTextWidget(
                  text: "Welcome Back!",
                  fontWeight: FontWeight.w500,
                  fontSize: 32,
                  textColor: AppColors.purple,
                ),
                const Gap(18),
                const Row(
                  children: [
                    CustomTextWidget(
                      text: "Email",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      textColor: AppColors.black,
                    ),
                  ],
                ),
                CustomTextField(
                  controller: logInController.emailController,
                  hintText: "abc@gmail.com",
                  isValidateFun: true,
                ),
                const Gap(18),
                const Row(
                  children: [
                    CustomTextWidget(
                      text: "Password",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      textColor: AppColors.black,
                    ),
                  ],
                ),
                CustomTextField(
                  suffixIcon: true,
                  controller: logInController.passwordController,
                  hintText: "*********",
                  isObsecure: true,
                  isValidateFun: true,
                ),
                const Gap(32),
                CustomButton(
                  text: 'Next',
                  onPress: () {
                    if(logInController.formKey.currentState!.validate()){
                      Get.toNamed(AppRoutes.homeScreen);
                    }
                  },
                ),
                const Gap(6),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      text: "Forget Password?",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      textColor: AppColors.black,
                    ),
                    Gap(4),
                    CustomTextWidget(
                      text: "Reset",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      textColor: AppColors.bluish,
                    ),
                  ],
                ),
                Gap(AppSizes().getHeightPercentage(8)),
                const CustomTextWidget(
                  text: "Don’t have an account?",
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  textColor: AppColors.black,
                ),
                const Gap(4),
                const CustomTextWidget(
                  text: "Create Account",
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  textColor: AppColors.bluish,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
