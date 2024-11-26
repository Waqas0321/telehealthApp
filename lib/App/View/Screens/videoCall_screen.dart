import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:telehealth_app/App/Controllers/videoCall_controller.dart';
import 'package:telehealth_app/App/Utils/Const/aap_colors.dart';
import 'package:telehealth_app/App/Utils/Const/app_images.dart';
import 'package:telehealth_app/App/Utils/Const/app_sizes.dart';

class VideocallScreen extends StatelessWidget {
  VideocallScreen({super.key});

  VideoCallController videoCallController = Get.put(VideoCallController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.videoCall2), fit: BoxFit.fill)),
          child: Stack(
            children: [
              Positioned(
                  right: 18,
                  top: 32,
                  child: Container(
                    width: AppSizes().getWidthPercentage(30),
                    clipBehavior: Clip.antiAlias,
                    height: AppSizes().getHeightPercentage(25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: const DecorationImage(
                            image: AssetImage(AppImages.videoCall),
                            fit: BoxFit.fill)),
                  )),
              Positioned(
                  bottom: AppSizes().getHeightPercentage(10),
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.purple),
                        child: const Icon(
                          CupertinoIcons.mic,
                          color: AppColors.white,
                          size: 24,
                        ),
                      ),
                      const Gap(18),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColors.red),
                          child: const Icon(
                            CupertinoIcons.phone,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      const Gap(18),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.purple),
                        child: const Icon(
                          CupertinoIcons.camera_rotate,
                          color: AppColors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
