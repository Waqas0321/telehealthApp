import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_images.dart';
import 'custom_text_widget.dart';
class CustomContactContainer extends StatelessWidget {
  const CustomContactContainer({
    super.key, required this.name, required this.imagePath,
  });
  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundImage: AssetImage(imagePath),
              ),
              Positioned(
                bottom: 12,
                right: 0,
                child: InkWell(
                  onTap: () {
                    print(name);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.yellow,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.call,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                left: 0,
                child: InkWell(
                  onTap: () {
                    print(name);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.whitish,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.chat,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          CustomTextWidget(
            text: name,
            fontWeight: FontWeight.w700,
            fontSize: 16,
            textColor: AppColors.purple,
          )
        ],
      ),
    );
  }
}