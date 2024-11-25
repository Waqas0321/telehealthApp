import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:telehealth_app/App/AppRoutes/app_routes.dart';
import 'package:telehealth_app/App/Controllers/health_summary_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_images.dart';
import '../../Utils/Const/app_sizes.dart';
import 'package:get/get.dart';
import '../../Widgets/Customs/custom_leading_button.dart';
import '../../Widgets/Customs/custom_text_widget.dart';

class HealthsSummaryScreen extends StatelessWidget {
   HealthsSummaryScreen({super.key});
  HealthSummaryController controller = Get.put(HealthSummaryController());
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
            text: "Health Summary",
            fontWeight: FontWeight.w700,
            fontSize: 20,
            textColor: AppColors.bluish,
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: AppSizes().getCustomPadding(left: 5),
                child: Column(children: [
                  const CircleAvatar(
                    radius: 76,
                    backgroundImage: AssetImage(AppImages.testImage),
                  ),
                  const Gap(7),
                  const CustomTextWidget(
                    text: 'Mabel Anderson',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    textColor: AppColors.purple,
                  ),
                  const Gap(32),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.healthSummaryScreenTwo);
                    },
                    child: Container(
                      padding: AppSizes().getCustomPadding(),
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(16)),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black.withOpacity(0.09),
                            spreadRadius: 10,
                            blurRadius: 9,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15, top: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              text: 'Allergies:',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              textColor: AppColors.black,
                            ),
                            CustomTextWidget(
                              text: 'Eczema',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.black,
                            ),
                            CustomTextWidget(
                              text: 'Dermatitis',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.black,
                            ),
                            Gap(18),
                            CustomTextWidget(
                              text: 'Conditions:',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              textColor: AppColors.black,
                            ),
                            CustomTextWidget(
                              text: 'Asthma',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.black,
                            ),
                            CustomTextWidget(
                              text: 'Obesity',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.black,
                            ),
                            Gap(16),
                            CustomTextWidget(
                              text: 'Immunizations:',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              textColor: AppColors.black,
                            ),
                            CustomTextWidget(
                              text: 'Hepatitis B',
                              fontSize: 18,
                              textAlign: TextAlign.justify,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.black,
                            ),
                            CustomTextWidget(
                              text: 'Influenza',
                              fontSize: 18,
                              textAlign: TextAlign.justify,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}