import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telehealth_app/App/Controllers/ensurance_controller.dart';
import 'package:get/get.dart';
import 'package:telehealth_app/App/Utils/Const/app_images.dart';
import 'package:telehealth_app/App/Utils/Const/app_sizes.dart';
import 'package:telehealth_app/App/Widgets/Customs/custom_button.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Widgets/Customs/custom_leading_button.dart';
import '../../Widgets/Customs/custom_richText.dart';
import '../../Widgets/Customs/custom_text_widget.dart';

class InsuranceScreen extends StatelessWidget {
  InsuranceScreen({super.key});

  InsuranceController insuranceController = Get.put(InsuranceController());

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
          text: "Insurance",
          fontWeight: FontWeight.w700,
          fontSize: 25,
          textColor: AppColors.bluish,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes().getCustomPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                padding: AppSizes().getCustomPadding(),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.05),
                        spreadRadius: 4,
                        blurRadius: 4,
                      )
                    ],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppImages.care,
                          height: 65,
                          width: 65,
                        ),
                        Gap(16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              text: " Health Insurance",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              textColor: AppColors.black,
                            ),
                            Gap(6),
                            CustomButton(
                              widthPercentage: 50,
                              borderRadius: 50,
                              heightPercentage: 4,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              isOrange: true,
                              text: 'The Star Life Insurance',
                              onPress: () {},
                            )
                          ],
                        )
                      ],
                    ),
                    Gap(16),
                    CustomRichText(text1: "Policy Number",text2: "P-2486246142862",),
                    CustomRichText(text1: "Start date",text2: "26/11/2020",),
                    CustomRichText(text1: "End Date",text2: "26/11/2020",),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


