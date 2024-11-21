import 'package:flutter/material.dart';
import '../../Utils/Const/aap_colors.dart';
import 'custom_text_widget.dart';
class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key, required this.onPress, required this.text,
  });
  final VoidCallback onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPress,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: AppColors.bluish, width: 1), // Border color and width
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Border radius set to 12
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: CustomTextWidget(
            text: text,
            fontSize: 19,
            fontWeight: FontWeight.w600,
            textColor: AppColors.bluish,
          ),
        ),
      ),
    );
  }
}