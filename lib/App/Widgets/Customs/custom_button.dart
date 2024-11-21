import 'package:flutter/material.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_sizes.dart';
import 'custom_text_widget.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.widthPercentage = 85,
    this.heightPercentage = 7,
    this.borderRadius = 12,
    required this.text,
    this.textColor = AppColors.white,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 28,
    required this.onPress
  });
  final double widthPercentage;
  final double heightPercentage;
  final double borderRadius;
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: AppSizes().getWidthPercentage(widthPercentage),
        height: AppSizes().getHeightPercentage(heightPercentage),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: AppColors.gradientBluish,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1.0], // Adjust gradient position
          ),
          borderRadius: BorderRadius.circular(borderRadius), // Rounded corners
        ),
        child:  CustomTextWidget(
          text: text,
          textColor: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}