import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../Utils/Const/aap_colors.dart';
import 'custom_text_widget.dart';
class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    this.isLarge = false,
  }) : super(key: key);

  final Color color;
  final String icon;
  final String title;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLarge ? 160 : 90, // Large height for the first two items
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child:isLarge? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon,height: 60,width: 60,),
          const Gap(18),
          CustomTextWidget(
            textAlign: TextAlign.start,
            text: title,
            fontSize: 19,
            fontWeight: FontWeight.w600,
            textColor: AppColors.black,
          ),
        ],
      ):Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon,height: 25,width: 25,),
          const Gap(12),
          CustomTextWidget(
            text: title,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            textColor: AppColors.black,
          ),
        ],
      ),
    );
  }
}