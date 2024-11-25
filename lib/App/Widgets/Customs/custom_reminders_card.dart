import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:telehealth_app/App/Utils/Const/app_sizes.dart';
import 'package:telehealth_app/App/Widgets/Customs/custom_text_widget.dart';
import '../../Utils/Const/aap_colors.dart';
class CustomReminderCard extends StatelessWidget {
  const CustomReminderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.07),
              spreadRadius: 4,
              blurRadius: 4,
            )
          ],
          borderRadius: BorderRadius.circular(12)),

      child: Padding(
        padding: AppSizes().getCustomPadding(),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
              text: "Flu Shot",
              fontWeight: FontWeight.w700,
              fontSize: 20,
              textColor: AppColors.purple,
            ),
            Gap(8),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 16, color: AppColors.black),
                Gap(8),
                CustomTextWidget(
                  text: "Thursday, Dec 04, 2024",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.black,
                ),
              ],
            ),
            Gap(6),
            Row(
              children: [
                Icon(Icons.access_time, size: 16, color: AppColors.black),
                Gap(6),
                CustomTextWidget(
                  text: "02 : 00 pm",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}