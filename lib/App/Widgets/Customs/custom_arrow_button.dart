import 'package:flutter/material.dart';

import '../../Utils/Const/aap_colors.dart';
import 'custom_text_widget.dart';
class CustomArrowButton extends StatelessWidget {
  const CustomArrowButton({
    super.key, required this.text, required this.onPress,
  });
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextWidget(
            text: text,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            textColor: AppColors.black,
          ),
          const Icon(Icons.arrow_forward_ios_rounded,color: AppColors.black,)
        ],),
    );
  }
}