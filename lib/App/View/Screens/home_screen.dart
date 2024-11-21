import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../Controllers/home_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_images.dart';
import '../../Utils/Const/app_sizes.dart';
import '../../Widgets/Customs/custom_griditem.dart';
import '../../Widgets/Customs/custom_text_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppSizes().getCustomPadding(left: 6, right: 6),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextWidget(
                        text: 'Good Morning!',
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        textColor: AppColors.purple,
                      ),
                      CustomTextWidget(
                        text: 'Jenny Wilson',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        textColor: AppColors.black,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTapDown: (details) {
                      homeController.showCustomMenu(context, details.globalPosition);
                    },
                    child: const CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(AppImages.testImage),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200,
                width: AppSizes().getWidthPercentage(88.5),
                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 12),
                      decoration: const BoxDecoration(
                          color: AppColors.red,
                          borderRadius:
                          BorderRadius.all(Radius.circular(12))),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            text: 'Sat 01 August 2022',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            textColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 30,
                      child: Container(
                        width: AppSizes().getWidthPercentage(88),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.black.withOpacity(0.09),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 14, vertical: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomTextWidget(
                                text: 'Virtual Doctors’ Appointment',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                textColor: AppColors.black,
                              ),
                              Gap(22),
                              CustomTextWidget(
                                textOverflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                text:
                                'Lorem ipsum dolor sit amet consectetur. Ut elit egestas faucibus ullamcorper tellus. Ultrices gravida in arcu ac.',
                                fontSize: 13,
                                textAlign: TextAlign.justify,
                                fontWeight: FontWeight.w700,
                                textColor: AppColors.bluish,
                              ),
                              Gap(32),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextWidget(
                                    text: '12:00 - 12:30',
                                    fontSize: 13,
                                    textAlign: TextAlign.justify,
                                    fontWeight: FontWeight.w400,
                                    textColor: AppColors.black,
                                  ),
                                  CustomTextWidget(
                                    text: ' Dr. Juliean Adams',
                                    fontSize: 13,
                                    textAlign: TextAlign.justify,
                                    fontWeight: FontWeight.w400,
                                    textColor: AppColors.black,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const Gap(12),
              MasonryGridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 9,
                crossAxisSpacing: 8,
                itemCount: homeController.gridItems.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      homeController.navigationFunction(homeController.gridItems[index].title);
                    },
                    child: GridItem(
                      color: homeController.gridItems[index].color,
                      icon: homeController.gridItems[index].icon,
                      title: homeController.gridItems[index].title,
                      isLarge: index < 2, // Make first two items large
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
