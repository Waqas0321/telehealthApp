import 'package:flutter/material.dart';
import '../../Utils/Const/aap_colors.dart';
import 'package:get/get.dart';

class CustomLeadingButton extends StatelessWidget {
  const CustomLeadingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          gradient: LinearGradient(
            colors: AppColors.gradientPurplish,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1.0], // Adjust gradient position
          ),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: AppColors.white,
          size: 18,
        ),
      ),
    );
  }
}
