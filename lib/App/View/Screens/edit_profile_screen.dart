import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../Controllers/edit_profile_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_images.dart';
import '../../Utils/Const/app_sizes.dart';
import '../../Widgets/Customs/custom_button.dart';
import '../../Widgets/Customs/custom_container.dart';
import '../../Widgets/Customs/custom_leading_button.dart';
import '../../Widgets/Customs/custom_text_widget.dart';
class EditProfileScreen extends StatelessWidget {
 EditProfileScreen({super.key});

  EditProfileController editProfileController = Get.put(EditProfileController());

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
          text: "Edit Profile",
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
                Stack(
                  children: [
                    Obx(
                      () {
                        if(editProfileController.selectedImage.value != null){
                          return CircleAvatar(
                            radius: 78,
                            backgroundImage: FileImage(editProfileController.selectedImage.value!),
                          );
                        }
                       return const CircleAvatar(
                          radius: 78,
                          backgroundImage: AssetImage(AppImages.testImage),
                        );
                      }
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: AppColors.gradientPurplish,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0,1.0]
                          ),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.camera_alt_outlined, color: Colors.white), // Icon color set to white
                          onPressed: () {
                            editProfileController.pickImage(context);
                          },
                          style: IconButton.styleFrom(
                            padding: const EdgeInsets.all(4), // Adjust padding for button size
                          ),
                        ),
                      ),
                    )

                  ],
                ),
                const Gap(36),
                CustomContainer(
                  isEditable: true,
                  controller: editProfileController.nameController,
                  text1: "Name",
                  text2: "Wade Warren",
                ),
                const Gap(26),
                CustomContainer(
                  isEditable: true,
                  controller: editProfileController.emailController,
                  text1: "Email",
                  text2: "abc@gmail.com",
                ),
                Gap(AppSizes().getHeightPercentage(20)),
                SizedBox(
                  width: AppSizes().getWidthPercentage(50),
                  child: CustomButton(
                    text: "Done",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    onPress: () {
                      Get.back();
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
