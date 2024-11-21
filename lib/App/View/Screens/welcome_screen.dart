import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../AppRoutes/app_routes.dart';
import '../../Controllers/welcome_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_images.dart';
import '../../Utils/Const/app_sizes.dart';
import '../../Widgets/Customs/custom_button.dart';
import '../../Widgets/Customs/custom_text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({
    super.key,
  });

  WelcomeController homeController = Get.put(WelcomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: AppSizes().getCustomPadding(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomTextWidget(
                    text: 'WELCOME',
                    textColor: AppColors.purple,
                    fontSize: 46,
                    fontWeight: FontWeight.w600,
                  ),
                  Gap(12),
                  const CustomTextWidget(
                    text: 'Platform for online health record',
                    textColor: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  Gap(AppSizes().getHeightPercentage(2.5)),
                  SvgPicture.asset(AppImages.welcomeImage),
                  Gap(AppSizes().getHeightPercentage(4)),
                  CustomButton(text: "Get Started",onPress: () {
                    Get.toNamed(AppRoutes.logInScreen);
                  },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


