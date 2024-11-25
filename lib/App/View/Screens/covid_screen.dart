import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:telehealth_app/App/Controllers/covid_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_sizes.dart';
import '../../Widgets/Customs/custom_leading_button.dart';
import '../../Widgets/Customs/custom_text_widget.dart';

class CovidScreen extends StatelessWidget {
  CovidScreen({super.key});

  CovidController covidController = Get.put(CovidController());

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
          text: "COVID-19",
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTextWidget(
                      text: 'COVID-19 Screening Checklist Symptoms:',
                      fontSize: 20,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w700,
                      textColor: AppColors.black,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: covidController.symptoms.length,
                      itemBuilder: (context, index) {
                        final symptoms = covidController.symptoms;
                        return CustomTextWidget(
                          textAlign: TextAlign.start,
                          text: symptoms[index],
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.black,
                        );
                      },
                    ),
                    const Gap(16),
                    const CustomTextWidget(
                      text: 'Recent travel:',
                      fontSize: 20,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w700,
                      textColor: AppColors.black,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: covidController.travelQuestions.length,
                      itemBuilder: (context, index) {
                        final travelQuestions = covidController.travelQuestions;
                        return CustomTextWidget(
                          textAlign: TextAlign.start,
                          text: travelQuestions[index],
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.black,
                        );
                      },
                    ),
                    const Gap(16),
                    const CustomTextWidget(
                      text: 'Exposure to COVID-19:',
                      fontSize: 20,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w700,
                      textColor: AppColors.black,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: covidController.exposureQuestions.length,
                      itemBuilder: (context, index) {
                        final exposureQuestions =
                            covidController.exposureQuestions;
                        return CustomTextWidget(
                          textAlign: TextAlign.start,
                          text: exposureQuestions[index],
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.black,
                        );
                      },
                    ),
                    const Gap(16),
                    const CustomTextWidget(
                      text: 'Vaccination status:',
                      fontSize: 20,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w700,
                      textColor: AppColors.black,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: covidController.vaccinationQuestions.length,
                      itemBuilder: (context, index) {
                        final vaccination =
                            covidController.vaccinationQuestions;
                        return CustomTextWidget(
                          textAlign: TextAlign.start,
                          text: vaccination[index],
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.black,
                        );
                      },
                    ),
                    const Gap(16),
                    const CustomTextWidget(
                      text: 'Test results:',
                      fontSize: 20,
                      textAlign: TextAlign.left,
                      fontWeight: FontWeight.w700,
                      textColor: AppColors.black,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: covidController.testResultsQuestions.length,
                      itemBuilder: (context, index) {
                        final testResultsQuestions =
                            covidController.testResultsQuestions;
                        return CustomTextWidget(
                          textAlign: TextAlign.start,
                          text: testResultsQuestions[index],
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.black,
                        );
                      },
                    ),
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
